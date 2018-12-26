<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.9`](#redmine339)
-	[`redmine:3.3.9-passenger`](#redmine339-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.7`](#redmine347)
-	[`redmine:3.4.7-passenger`](#redmine347-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:4`](#redmine4)
-	[`redmine:4.0`](#redmine40)
-	[`redmine:4.0.0`](#redmine400)
-	[`redmine:4.0.0-passenger`](#redmine400-passenger)
-	[`redmine:4.0-passenger`](#redmine40-passenger)
-	[`redmine:4-passenger`](#redmine4-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:5474b103be2e0101d04b8ddcc0a553c927762403b28cd022b73660c91c94c2fe
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
$ docker pull redmine@sha256:195f68db9645c8455eac27bec77329890b1193a972a6ae7340c314a4ea68778b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292460349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7441104061bac7624c96498ffcd83759a6370d48a4418917cf93c748a0ab3123`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Wed, 26 Dec 2018 09:18:51 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:18:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:23:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:23:48 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:43:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:44:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:44:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:44:28 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:44:28 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:44:28 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:44:29 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 26 Dec 2018 10:44:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:47:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:47:26 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:47:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:47:26 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:47:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:59bcf0835b69cca98c815d418b46ef7071872cf8f060b0f5bd61b4701114c0a2`  
		Last Modified: Wed, 26 Dec 2018 10:12:23 GMT  
		Size: 23.7 MB (23700739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b3898e920a1d29ae65a591ee3c9a532f58f4f05e100870bcfe6742d5cf998a`  
		Last Modified: Wed, 26 Dec 2018 10:12:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae2df96a993fdfe5a1d18bd6a208d6d5d0a981b971b5ba6b00f2dbc8922e653`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eb4bb1c9e1567831de44c3354f79987a6aa5bc862dcd1a96311444dc759051`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 88.1 MB (88050958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b417bb333024ba227eac56afda877abde9a49c3f8b3198a2fe31eda1f32c31b2`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.3 MB (1304387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886400734ef0692f3b594d3163effe3892a222ecfe481e515e88125c636cc28`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27490c72329f80a43c0b7efcb378f1cb29dbf2836a96becfb0b55f11665e411`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e67c4b2095565be23626dc83618606cd75eb53922e0349b56258623baac23`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68023dbb3a1ea3098d62e09424f7a2b5e027d37aedda52e6196f4deaac19b506`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 118.8 MB (118783244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2020982382817f4c6fee3b88be0cf6a99b00c7313cc77831ba69753b2e743`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:71e67a88b28e3838491e3c8697b5540915c73313d5fa40963b53f4625d928f5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280695041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fed14c6e69a349349468f1b0314cc7dbc6297a0526069724f8a43eecb4fdf8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:37:45 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 19:37:45 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 19:37:46 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 19:37:46 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:19:25 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:25:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:25:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:25:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:25:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:25:40 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:25:40 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:31:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:31:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:32:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:32:18 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:32:18 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:32:19 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:32:20 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:32:20 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 11:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 11:32:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:38:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:38:02 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:38:02 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:38:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:38:03 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:38:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb117af07cda2e335216d8061904e3921c2e0296097b9968f6988f59ce31da2`  
		Last Modified: Thu, 13 Dec 2018 11:04:25 GMT  
		Size: 23.2 MB (23198051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026e2dbb603cc78baed268e815bcba4b54acaf39ade01368aefc689cb56965fe`  
		Last Modified: Thu, 13 Dec 2018 11:04:19 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99c071fb8ad8c9b0c29c0bf9bc6688b6118466eeb379fae11f0d650da83470b`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ce66261792f8b9194650fc6a3f01c1a2da6317f9d094a240b35f3d020c725f`  
		Last Modified: Thu, 13 Dec 2018 11:47:21 GMT  
		Size: 85.0 MB (84972989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005749eba3fb1e7bea1fff1022c18f2ad0592c50bf14bdec3ef6b5560e4072f0`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 1.3 MB (1262293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031dbb24c4ed42649ba6a5bebc68a4519eba96268263ba9d57906283186f7e95`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aba9ee2ff60b71cc71add55a21ed4dd727c2c55407e4c0ea4e3be542029c71c`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cea6c3142861675e9c97ea756d22859cbbea400397d24520d7d56d835a1a51`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 2.5 MB (2460816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b9e69af732047cf6ee0e2cdd77219fa6881f19aa24ffa543a78f823e8ff5b4`  
		Last Modified: Thu, 13 Dec 2018 11:47:27 GMT  
		Size: 113.4 MB (113364382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100c9b920d88e442338c53231ddecd722edf11215519027a679cface6ab93aea`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ac2804c0e4fa78303919c4195634a324af26fe2899173df721338075512c894d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273268409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b444c84f11cc321fea7d73134a86e357de870054c64a2195a365013bd65d6ed1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:01:16 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 20:01:17 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 20:01:18 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 20:01:18 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:25:07 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:30:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:30:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:30:50 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:30:51 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:32:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:33:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:33:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:33:52 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:33:52 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:33:53 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:33:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:33:54 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:33:54 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:33:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:38:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:38:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:39:00 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:39:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:39:01 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:39:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e003d7b452a77d3f01e2e0c5fe21c93fef35b6be644b37fe87294f218833af70`  
		Last Modified: Thu, 13 Dec 2018 14:07:03 GMT  
		Size: 22.9 MB (22885985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5826722353898cacc1aedfed26c7cb1dd5cefd1ef9ec2c7153061f2d1da998`  
		Last Modified: Thu, 13 Dec 2018 14:06:58 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166cd9305e8c7bddc1510063f5b740cc126c15997c822551f08c05acf0aa68e8`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d937d28fd1249f1c93f9320b0227236a17cf4951880d1f0b02bfee6320c77d`  
		Last Modified: Thu, 13 Dec 2018 14:47:39 GMT  
		Size: 81.8 MB (81782519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3921245930a5136562d34fc35f1f38579673b3dd7cd1ee3536665678c4198c6f`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 1.3 MB (1254751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa217e16eb93aafe63708736d6704b0c0beed8521826dd9c54f29149b9c9687`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ba6cec056e84135bff8e7f6656bf9e7e8d646bb8fdf530db9c1d9128cce2a1`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0c9fe87376ab0474735f3c4d9277741796ce072db259c41f8e18f86eebe645`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 2.5 MB (2460828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a015eabbecaddeac09df76b8f99996582ae6b5e05a9f478f0a0521913ebd005`  
		Last Modified: Thu, 13 Dec 2018 14:47:42 GMT  
		Size: 111.9 MB (111883292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a928c4fb44027087dd70ed4497c1409bfed195560c51fec4f2da60cfa0ea42`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:cf6eae099c52413804f0e669857716527de48819cd58066b4b6278328cd511a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278652189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38ac34ea08b13b729e743e8d0e42ce179eebbbb05038561c2b4542d1bfc76d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 07:07:16 GMT
ENV RUBY_MAJOR=2.4
# Sat, 17 Nov 2018 07:07:19 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 17 Nov 2018 07:07:32 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 17 Nov 2018 07:07:32 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:41:23 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 12:51:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 12:51:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 12:51:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 12:51:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 12:51:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 12:51:17 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:50:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:52:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:52:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:52:58 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:52:58 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:53:00 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:53:03 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:53:04 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:53:05 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:53:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:06:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:06:03 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:06:04 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:06:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:06:05 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:06:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21b1d491804e971071a14581ba6f8dd0b0ae00d6caefebef71eb01ceb753a0`  
		Last Modified: Thu, 13 Dec 2018 13:44:51 GMT  
		Size: 23.3 MB (23329946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a97a047e16516906f6d025932913e80f89f3b6fc869a944e13b1f7cda91bed`  
		Last Modified: Thu, 13 Dec 2018 13:44:45 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d4bd82cf38ea41c2f6488da8fd9b44bbe266507d583f1e2f2dee3747e09c7e`  
		Last Modified: Thu, 13 Dec 2018 15:24:31 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a3e8408194b523e2539f09e35a3e8bab6814b6d822e14fc5963f0d688b5cb3`  
		Last Modified: Thu, 13 Dec 2018 15:25:00 GMT  
		Size: 83.9 MB (83913799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895c851a240f19065eab7240014d022df48b7f564933eb926cad0ef8ac4487c`  
		Last Modified: Thu, 13 Dec 2018 15:24:31 GMT  
		Size: 1.2 MB (1239791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569760b6238df7f119d75dbe8142007d9b03a32c98c9416d022af813f9548451`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dac7ba42bf3361ef9ac8d34abb66ef1c11f6515b2fcd351640096524fbb0f2`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acb6a757bef0f41e9cc77ba19ca634f34592e0d88c8e44054247f3521e2f4cf`  
		Last Modified: Thu, 13 Dec 2018 15:24:30 GMT  
		Size: 2.5 MB (2460307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137a6b9face2bd7baf74630ee77382191b8e8f0133a99f38c937f1c634337ee6`  
		Last Modified: Thu, 13 Dec 2018 15:25:02 GMT  
		Size: 112.9 MB (112943246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b325df5428ce838d7369ebe597f0baab0754f660333c3e1981679085af0b96`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:0fbd9781a75e993bdf0dca6da91a8323d929764e150453b68cd2ddfb49e87f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296590263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759c8fe2987aa6b0b38baa377ffb416beb988a9dd51455f83832ac866a78d9a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:11:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:11:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 17 Nov 2018 17:25:02 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:11:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:15:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:15:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:15:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:15:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:15:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:15:32 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:49:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:50:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:50:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:50:17 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:50:17 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:50:17 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:50:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:50:18 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:50:18 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:50:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:53:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:53:26 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:53:26 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:53:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:53:26 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:53:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc717430864199fb47be80c1037bfd90f9a61a6ae28675cd0e0b4121af5008a4`  
		Last Modified: Sat, 17 Nov 2018 17:57:13 GMT  
		Size: 16.3 MB (16278299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0821f2ab769a687f1181a37080505f80c76a2f7c36a30dca9f5ba88e060ece25`  
		Last Modified: Sat, 17 Nov 2018 17:57:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f4728f6d19b1a9d0bd94b0344e163a7b0d3018391a2801c34dbc1e74d8a4e`  
		Last Modified: Thu, 13 Dec 2018 14:11:27 GMT  
		Size: 23.4 MB (23396304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4f4300240ec44925badbfcfdb6871da2ecc37561ea1460e175a81a0c12a058`  
		Last Modified: Thu, 13 Dec 2018 14:11:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52460a0a44247e4f02cb3df865d5730849d7a02bbf4f715e3d7dc1834b04c3c`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8954ea60cef2bd8382586ec7331111f394b354af5cd29dcba981725b80f480b2`  
		Last Modified: Thu, 13 Dec 2018 15:00:20 GMT  
		Size: 90.0 MB (89973248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73767212a3d7c7fe0a1bddf076867f263a19475d27650c789eb55bfc5c53ba2`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 1.3 MB (1271895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7479e028d5067eaac80b56bc2450e62fc26360d9cbf138fdcadd9965e7d58333`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eab4bd1b288f9eb252a6d038689e201470b659b531a9a8604872e920526888`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37397869d09b53c63255897a1b56d05f403967fe5c0b31085cfd4e650d004fc`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 2.5 MB (2460305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544d696f8d6f87013a9688f0d1bf17c93ad286e550845b32e7e37ba8b233eb90`  
		Last Modified: Thu, 13 Dec 2018 15:00:20 GMT  
		Size: 117.2 MB (117150578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929a282f2b4ebef62cf4283a571b1392479f0711ef901afd82dd47235e402947`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:be1287ec162adc143af667e0fde78e217e4f54e901d004c8b06beb2e56b3f16e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287952709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da8ac3d7cfa90b27e82735f0c82e348372d866205eba471e0a4ecf20e7fdd0a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:08:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 21:08:37 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 21:08:37 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 21:08:38 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:57:09 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 11:06:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 11:06:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 11:06:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 11:06:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 11:06:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 11:06:16 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 12:48:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 12:50:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 12:50:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:50:55 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 12:50:56 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 12:50:57 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 12:51:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 12:51:05 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 12:51:06 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 12:51:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 12:59:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:59:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 12:59:32 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 12:59:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 12:59:34 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 12:59:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527e263c25afab370e6ed0ae56e66cdd3e4cd9057e8cef998923a7c43e6f0099`  
		Last Modified: Thu, 13 Dec 2018 12:06:27 GMT  
		Size: 23.9 MB (23890227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31679a418886d62e08eac3d0d042b2a16ff90abaa16a9188d7cc59b087df5b4`  
		Last Modified: Thu, 13 Dec 2018 12:06:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d90e522243170aae0a6127dca0ee5dd2e44e9b1a449e720b64a687d4462f46f`  
		Last Modified: Thu, 13 Dec 2018 13:14:19 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87ed01af5d2715446cfe8684b0d27f964457ec788f1cc2e11b764c8d0569055`  
		Last Modified: Thu, 13 Dec 2018 13:15:00 GMT  
		Size: 87.2 MB (87237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175078096576b23ed9dde2df28f34add62f2a8ddbbc7674bb88f655fcd0102e6`  
		Last Modified: Thu, 13 Dec 2018 13:14:20 GMT  
		Size: 1.2 MB (1228513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef34adbdbef0228abfe09c6a173b3d44961216c4c4bf1cc223d47d1f995fc2e2`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427bfbee1e57ca6c50c5661998b103fe7471feafb951524a6bdff2f16c98144a`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2711862cd1a84b82818ae393378764fd21a5fb25c08a3cac30aadce706cf54e4`  
		Last Modified: Thu, 13 Dec 2018 13:14:21 GMT  
		Size: 2.5 MB (2460815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff30b1353f66c83575bbaf6b8e19957d40fe73d1c8fd6554fa7e2f9b55401ff`  
		Last Modified: Thu, 13 Dec 2018 13:15:15 GMT  
		Size: 115.3 MB (115293075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2927e5d90281c9f953ef320063d0aee4754c1281845dd09cfe79cee1688aa10`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:e8ea2616f92f37e5407e6d50c62217a9e209ed9c99916ca56ec528c3c40a6a67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288324215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a77b9bcb1ced7de34cd84784232481f593bfe824d2b39fc608c37ad717b63c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:37:43 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:32:42 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:35:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:35:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:35:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:35:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:35:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:35:49 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:22:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:22:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:23:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:23:02 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:23:03 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:23:03 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:23:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:23:04 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 15:23:04 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 15:23:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:26:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:26:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:26:30 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:26:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:26:31 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:26:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1913f309a1b216bfb7dd8c19a6a273e8e5f3cddad623301514830f38cc326a8`  
		Last Modified: Thu, 13 Dec 2018 14:58:55 GMT  
		Size: 24.1 MB (24063735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d49d2e0dd6155d813a8e7a30fcc61cea412bd88ab96107b31e7bb052bc7125`  
		Last Modified: Thu, 13 Dec 2018 14:58:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe248502217ea22b8ef58ebfb658e70bda7e60ffc113b89d0aed509dfea1dec`  
		Last Modified: Thu, 13 Dec 2018 15:32:14 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1571a5f1c0fafddce725b522569a0e1d86dc0b8eefb2708a61d3e2892892908`  
		Last Modified: Thu, 13 Dec 2018 15:32:32 GMT  
		Size: 87.9 MB (87865471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2811e0c92538f859881c8550e6d367ed59bbb12fe5995fe870c929a58962e02`  
		Last Modified: Thu, 13 Dec 2018 15:32:14 GMT  
		Size: 1.3 MB (1294274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fab8247792572c99efeafec2da3f4d61db6290f8df3b77da0d4ab5dfbb293b`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2cfaed39a2dedf29d027a741106c2260b1078f9b593ee709731bc0e24a50d56`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b697fae1dd069095b39034321e15edb8169d5c22b68abde84c82fe96d0d0a751`  
		Last Modified: Thu, 13 Dec 2018 15:32:13 GMT  
		Size: 2.5 MB (2460288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8f9a3e7070786fd431091f4a0a655a98576b65e4f83065b1463e629c307d15`  
		Last Modified: Thu, 13 Dec 2018 15:32:31 GMT  
		Size: 114.2 MB (114192490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a681f4d90887b8dfb62e6f9b9d4e3b25af2e63ffcc0bbdbb37f13e29c8106d86`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:0050995e65e97adf9776bd6f33e7b54b115ba7b154a1290ec4f5c9f5c6053dea
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
$ docker pull redmine@sha256:287e1e9866c21d58514836b5c1dc1265db4fc3fbd9c07c7a51c661883b3a3c5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308960359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d08432e589fb472873795e8c9b1e395d1e6812ebf415b10ab8c7a2f3158052f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Wed, 26 Dec 2018 09:47:54 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:47:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:51:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:51:13 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:51:13 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:47:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:48:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:48:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:48:35 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:48:35 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:48:35 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:48:36 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 26 Dec 2018 10:48:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:51:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:51:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:51:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:51:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:51:42 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:51:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b70dba10e2dc44f88075b4b03d5cbde63bdfbff9a5d396b731982a21e86cb7`  
		Last Modified: Wed, 26 Dec 2018 10:13:27 GMT  
		Size: 36.5 MB (36522565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74f51dc6c194d7716f7ee745a3462aa209f6258d404c41d172f2d1e927e26c`  
		Last Modified: Wed, 26 Dec 2018 10:13:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a6c5eecfdb7026ebbc5a207298b4a44744084b08fd2d6a8bfbf1ef1e3971db`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0231587e94a49e9e3341f03c087a80df5eb5951b493c8e67f169952b2bd05d`  
		Last Modified: Wed, 26 Dec 2018 10:53:51 GMT  
		Size: 86.5 MB (86451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8811c192b5506830b3d06d9ae2fb66542d03015baa5cceddea9c62d87b0c143e`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.3 MB (1304525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e4cc974035ca9ef177c3bd18dbd61b5d927152e8be36a9815f5ef2bda42b4d`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6936dfd3b204b274dadf91e72ff26441935c8beb7343558b18908387aff7c307`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2c6cc2959893256bfc554b0f9ffc77ce913e92709fa2557a1eb05a1c4d1328`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dffcf0863a2896d43db5142b3e8567090b56a57fe8368c8b2be103ee945695`  
		Last Modified: Wed, 26 Dec 2018 10:53:53 GMT  
		Size: 122.5 MB (122481046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041996b529b337aca0c74bc246b8f589139e702a8d3c56b5126d95608581f1d7`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:7922c3c6d005b638c4ee87d9cc2062fbb57b558eae145a9e98e5b6ed3ace47af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292169568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e05cd6b7efd728d29585bf0ad8846d7988df3a690afba5a903c33c49a0d09c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:05:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:05:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:05:27 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 20:05:27 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 20:05:28 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 20:05:28 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:43:50 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:48:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:48:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:48:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:48:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:48:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:48:32 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:38:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:39:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:39:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:39:29 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:39:30 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:39:30 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:39:31 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:39:31 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 11:39:32 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 11:39:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:45:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:45:25 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:45:26 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:45:26 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:45:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c0144ab3b6e4d6c9452e01ba501402c7c1dc993223990d6e0c1d08d192314e`  
		Last Modified: Fri, 16 Nov 2018 20:31:23 GMT  
		Size: 12.5 MB (12461200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834ade7bb402af53101d089b10e1c8ddee6b28b9e79ec1ed8d314d3965790d8`  
		Last Modified: Fri, 16 Nov 2018 20:31:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065146a935376cd42c1f6aff6f89d1a20581d35133701e4a2469578b134b6a80`  
		Last Modified: Thu, 13 Dec 2018 11:06:46 GMT  
		Size: 35.2 MB (35150966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a3f46ec51bf77873b64a08a12ffed2aea3facf53da45c9e68e397f4a7ec02c`  
		Last Modified: Thu, 13 Dec 2018 11:06:34 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4154246c730970c862686c28db02f1899474cde2027a20598fb6aa2851f9f02`  
		Last Modified: Thu, 13 Dec 2018 11:47:56 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8610b6aebde19b0e70f71c1ad80c5fe6399e46fcd85c3d478454e322f323ae`  
		Last Modified: Thu, 13 Dec 2018 11:48:21 GMT  
		Size: 83.8 MB (83794047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7d81f61eae32b6643c9353765537cbea1df10da1df8c378163b2af635c2faa`  
		Last Modified: Thu, 13 Dec 2018 11:47:56 GMT  
		Size: 1.3 MB (1262317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5d26799bb971587d6343a3c9c41ee34da2dbab66b9991e55be0248b4b28b33`  
		Last Modified: Thu, 13 Dec 2018 11:47:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e72ddead678f8934bfc5094a3ca26be4dde47dfd709828036c820e2672f0fc9`  
		Last Modified: Thu, 13 Dec 2018 11:47:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a22eff9cf55b9a746fea88b52a4457ac61f33e5c42de60200e2eae878d04193`  
		Last Modified: Thu, 13 Dec 2018 11:47:56 GMT  
		Size: 2.4 MB (2395541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926e15ca5ed6c29cf3b0841004b9c023a305f99de6a23b9413f926f913706784`  
		Last Modified: Thu, 13 Dec 2018 11:48:24 GMT  
		Size: 113.1 MB (113069747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d7ddea2c1db4eeebb06e794fcab45cd72f5fc1e0504961629a6e69919bf0e`  
		Last Modified: Thu, 13 Dec 2018 11:47:55 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:37d6dded7e3da00ff6739c75a524df82d01af9bf4e2fddd73c210691b875db27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284622054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cc0a544bbc9e202e366741396009c2ab60a7e6c0134a3a2f5b4c214e722e6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:25:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:25:59 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:26:00 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 20:26:00 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 20:26:01 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 20:26:01 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:47:04 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:51:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:51:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:51:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:51:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:51:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:51:18 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:39:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:40:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:40:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:40:19 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:40:19 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:40:20 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:40:21 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:40:21 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 14:40:21 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 14:40:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:45:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:45:52 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:45:53 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:45:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:45:54 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:45:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f4bbaef12d0a4b00c413b68e2ff2e5def1a058149b94f176d5ca9cc3a8d35a`  
		Last Modified: Fri, 16 Nov 2018 20:49:44 GMT  
		Size: 11.9 MB (11909648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185a13f975d186ed486fd6c6eee7671b4119ec0f0adbcc726bb1ffcb8a96999a`  
		Last Modified: Fri, 16 Nov 2018 20:49:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b807650bd22fd32056c4aabc94a4cce80edddf3ce36e40e1c9489b9dd7608841`  
		Last Modified: Thu, 13 Dec 2018 14:09:28 GMT  
		Size: 34.7 MB (34699124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f07180bd37c1ba6359aeb603c9d69080ff71e0167de79957b5f4f3a8ff5df7`  
		Last Modified: Thu, 13 Dec 2018 14:09:15 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c23a3afdf7277a0d2e73e7da2803ca6f93f832daf97e04a72e48b825d679d9`  
		Last Modified: Thu, 13 Dec 2018 14:48:12 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34a08f79f932e3db0f4d6f490055f967607f178d57687b4fd840555a2100462`  
		Last Modified: Thu, 13 Dec 2018 14:48:35 GMT  
		Size: 80.7 MB (80667763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b86c585b0c4a06f5f68ffee277a135f69bbf11f44474800d85b0ad127044dc`  
		Last Modified: Thu, 13 Dec 2018 14:48:12 GMT  
		Size: 1.3 MB (1254844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0589ccf8a7ed2a36bae6da2ccbed351fa745d6c9df1527c755a696f9ce4558`  
		Last Modified: Thu, 13 Dec 2018 14:48:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef16cbe0b1b0e4d27501329007d0698ea102dbf52e3369828cb24689b0286695`  
		Last Modified: Thu, 13 Dec 2018 14:48:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f7e489fdf70092ed1bed8dc883cac9c383637cd2dfd22c4905822fe34ef3df`  
		Last Modified: Thu, 13 Dec 2018 14:48:12 GMT  
		Size: 2.4 MB (2395545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5687b3979feb7569a8d9c63ddf7a24cb7c8e788f06bc3c5fa2aa53f127115`  
		Last Modified: Thu, 13 Dec 2018 14:48:39 GMT  
		Size: 111.6 MB (111614573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0176f4893c10da4c26346ccf0225b886966b3202a0aa9f15363246d37b410798`  
		Last Modified: Thu, 13 Dec 2018 14:48:11 GMT  
		Size: 2.0 KB (1952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:af5a005c6d875c8b269da675f3a8eaa8733472f1b56c4bf9210b2351539ca70f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (291024420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f576799cdd3c79c95a97e7a14d010acd6661760507afba4ba5cbe337877289`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 07:25:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:25:37 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 07:25:38 GMT
ENV RUBY_MAJOR=2.3
# Sat, 17 Nov 2018 07:25:39 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 17 Nov 2018 07:25:40 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 17 Nov 2018 07:25:40 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:12:44 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:21:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:21:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:21:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:21:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:21:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:21:05 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:08:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:08:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:08:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:08:54 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:08:55 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:08:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:08:58 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 15:08:59 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 15:09:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:22:26 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:22:27 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:22:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:22:29 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:22:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc3ba01e5ae5b030dc8bf25d007c5038a8d1e8a446a8c1f8bded58156322333`  
		Last Modified: Sat, 17 Nov 2018 07:53:07 GMT  
		Size: 12.7 MB (12729901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b467d963982aa790d082178753883a32484a1b02c851a63d31d532b72b9cb4c5`  
		Last Modified: Sat, 17 Nov 2018 07:53:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7380a309e58f19d93af8d0eca2fb543c714c0525198bfb6f1f07022746c8471`  
		Last Modified: Thu, 13 Dec 2018 13:48:42 GMT  
		Size: 36.2 MB (36204738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd7949b3c23f8ece2a412ad6765ba41f94d173d2b26c8da981e263b52925bbe`  
		Last Modified: Thu, 13 Dec 2018 13:48:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4399180caded8bc9e453065ad1b46fcc7a84f742fcb97bf0842eb19d820c29b4`  
		Last Modified: Thu, 13 Dec 2018 15:25:50 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e95109f9cb49258db29b2cbc782d0c348c152697e9794cb33affe8ae98c939`  
		Last Modified: Thu, 13 Dec 2018 15:26:15 GMT  
		Size: 82.7 MB (82732496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b177a116c3c71862ac7256d757c90630733cc30fac4860918c1afac39ef348`  
		Last Modified: Thu, 13 Dec 2018 15:25:48 GMT  
		Size: 1.2 MB (1239796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e535feff1b7ee4743956bef7c7f99762084619515bd642d229c5cd7ee7aba699`  
		Last Modified: Thu, 13 Dec 2018 15:25:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c127128aacfc7a439f75229b3f40a6e3e6e64810b3bd127a6462cc2ed79d3d9`  
		Last Modified: Thu, 13 Dec 2018 15:25:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f15699bbd0b460498dfe917c7911a2cdaf91cf24e9a916aa6d39196d6721e70`  
		Last Modified: Thu, 13 Dec 2018 15:25:48 GMT  
		Size: 2.4 MB (2395285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd63d3014da683fe1cf96cb0c46292dda2ad7f41271b116c3dc646c7b841340`  
		Last Modified: Thu, 13 Dec 2018 15:26:23 GMT  
		Size: 112.6 MB (112601170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75ae9338829a37c0956187224e3ea3505279f0004a005bdd626b6eb85ed64f4`  
		Last Modified: Thu, 13 Dec 2018 15:25:46 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:52f8705ea9be08c6dbc4294b55756669c3946783af5cc1c74944cf6ba92f201f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307808046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3322ffc22c709eefe1a3b8c5a0e6394147c6268a75896545b3cba514ea330564`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:43:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:43:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:43:21 GMT
ENV RUBY_MAJOR=2.3
# Sat, 17 Nov 2018 17:43:21 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 17 Nov 2018 17:43:21 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 17 Nov 2018 17:43:22 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:37:16 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:40:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:40:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:40:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:40:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:40:43 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:40:43 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:53:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:54:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:54:35 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:54:35 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:54:35 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:54:36 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:54:36 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 14:54:36 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 14:54:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:57:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:57:52 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:57:52 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:57:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:57:53 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:57:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13ecbf25678ce9869cabffec949f2bad2f1e488d15fea2bff8a02784c4cb27d`  
		Last Modified: Sat, 17 Nov 2018 18:05:55 GMT  
		Size: 17.6 MB (17570129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cc117c207beb43f7489e2d6b211729aba758fa0b68f3dfe0e67100af781ed`  
		Last Modified: Sat, 17 Nov 2018 18:05:50 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3143370ee323025ff58b0fc9da8984a08744c46d2c83ea8b27e40ba69099bf7c`  
		Last Modified: Thu, 13 Dec 2018 14:17:00 GMT  
		Size: 35.1 MB (35103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7ab38c058cae57dfa91b5f71ba7f5beb2bfcc26b8343ab1ba6aaee4fbf3c7f`  
		Last Modified: Thu, 13 Dec 2018 14:16:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412eac592214151038b9ac2e0666b274e2d3ff30fd53f38b01f750534981e15`  
		Last Modified: Thu, 13 Dec 2018 15:01:16 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3539e976ee31ad46c32fa93301ae0ae3011e00c31e58b1a7aa50f462d6ddde`  
		Last Modified: Thu, 13 Dec 2018 15:01:41 GMT  
		Size: 88.5 MB (88540705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9311c6c0d4a0744c1bf20a34d78ff0c469c98d064b7fc7f4fbc07c9ce984374a`  
		Last Modified: Thu, 13 Dec 2018 15:01:16 GMT  
		Size: 1.3 MB (1271973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3375b69d8592af51dcab717ade0b1854d6fe52b2ed1b100b36a095cef561003`  
		Last Modified: Thu, 13 Dec 2018 15:01:15 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7531820966f3563cb200004a0fdf89db436cca584c72c78a74cf6431bce790`  
		Last Modified: Thu, 13 Dec 2018 15:01:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac0562d0bef8a071e9221411836c77e4333ce1b179c6de0e427ca48b1f1a6d7`  
		Last Modified: Thu, 13 Dec 2018 15:01:17 GMT  
		Size: 2.4 MB (2395286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f525f5619d9a12e45e5c8b9e03eb5fb54e00f116c642bf8b353d86ca758f8f`  
		Last Modified: Thu, 13 Dec 2018 15:01:42 GMT  
		Size: 116.9 MB (116866908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185af81af2c677d57c4caa35674e16e43773626c169987fac36e33c6adf9fc55`  
		Last Modified: Thu, 13 Dec 2018 15:01:14 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:f21c03ebf7cb6d7548a0af8899791fa4948386e660f893b32c84f077ecce5942
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.9 MB (300857250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dedc983df4c72930ab0038bd168fc4fd050d514e844da47ca62c26d78d983ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:22:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:22:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:22:53 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 21:22:55 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 21:22:57 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 21:22:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 11:24:12 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 11:32:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 11:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 11:32:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 11:32:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 11:32:55 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 11:32:55 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 13:00:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 13:02:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 13:02:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 13:02:50 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 13:02:50 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 13:02:51 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 13:02:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 13:02:54 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 13:02:54 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 13:02:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 13:10:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 13:10:13 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 13:10:14 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 13:10:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:10:20 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 13:10:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c948da3d5dc68920081447b3edb8c64c80c1a5b4d038e98d97bbac81f84852`  
		Last Modified: Fri, 16 Nov 2018 21:39:42 GMT  
		Size: 13.6 MB (13582073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6932bce801208d40178367ada2f5f18dace0d4246e3fda62bef097a2e5adab1b`  
		Last Modified: Fri, 16 Nov 2018 21:39:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0575f99c8defb3b47b49136f6e9af4f439e0e0b669e860aaabc7cbd7d554629c`  
		Last Modified: Thu, 13 Dec 2018 12:14:53 GMT  
		Size: 37.1 MB (37147415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f193d6917f380274a6c9ef01b3dd81d057f6b6323115ccd5f06731611b4f716`  
		Last Modified: Thu, 13 Dec 2018 12:14:33 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f02cd231598f2dfbc17ff80e526984558fd7be9f55d048666ec8413ffcc597`  
		Last Modified: Thu, 13 Dec 2018 13:16:56 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b54b6532a52fed828850f80ee13fefc483ed42fd2f1dc91ab65d2a040274f74`  
		Last Modified: Thu, 13 Dec 2018 13:17:33 GMT  
		Size: 85.9 MB (85936209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efc34b6a0faf678cad55647b292fbfdc4fc40e75af8a59cc94851b9074cd8f8`  
		Last Modified: Thu, 13 Dec 2018 13:16:58 GMT  
		Size: 1.2 MB (1228597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdaf3f35e76bb523823638ec773fabe5d6bcdec0250be9984f66e0ee061fd24`  
		Last Modified: Thu, 13 Dec 2018 13:16:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d77fe14ad92154bf6bedc9c2d7a6338046f9ddf4981dc243ef43d91eea706a`  
		Last Modified: Thu, 13 Dec 2018 13:16:53 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be732172f504c36d8b855cad9fcdef54e6ba1fd8971ae3d9115c269bbddd82c1`  
		Last Modified: Thu, 13 Dec 2018 13:16:59 GMT  
		Size: 2.4 MB (2395541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a22841255d1fdbf2fc5d51bbccede6fd187832231c6f6c9ac525aa575b8b4`  
		Last Modified: Thu, 13 Dec 2018 13:17:44 GMT  
		Size: 115.0 MB (114956909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07b5aa712923be921644f669cfa91f177479bf82947d6818e50f8a63a48dc87`  
		Last Modified: Thu, 13 Dec 2018 13:16:53 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:7781aa55edfd62621af699ac5ded66ee28c65bff0c6eb81ac023dd67493ab2ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304334160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf17c8e08f4d25369d46cdb7ead19e1d471dcdbf708e3b79e8c300f3d1f2391`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:45:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:45:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:45:39 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 21:45:39 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 21:45:39 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 21:45:40 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:44:58 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:47:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:47:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:47:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:47:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:47:55 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:47:55 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:27:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:27:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:27:32 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:27:32 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:27:32 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:27:33 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:27:33 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 15:27:33 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 15:27:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:30:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:30:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:30:59 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:31:00 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:31:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71e71eaa77cbb04813ea11cab23c494b5c68a1957929d039b57672e3a81379d`  
		Last Modified: Fri, 16 Nov 2018 21:53:37 GMT  
		Size: 14.7 MB (14682383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19654f465b995a0f8251faaa877a4067f793f5fbdd0faa1a891cf983484af08`  
		Last Modified: Fri, 16 Nov 2018 21:53:34 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735493cefe8a98603ad12f257e7eece437804a8e0dd18500e79d3f2b981d5467`  
		Last Modified: Thu, 13 Dec 2018 15:00:39 GMT  
		Size: 40.5 MB (40451548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9864ffd90ee3d64177a8bd76aba7cedb6069898f40636d77e9dda4be6fa90356`  
		Last Modified: Thu, 13 Dec 2018 15:00:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d887f0c18899c54244b5414999a43d565a053f01a19dbc05c2b669cdcededc`  
		Last Modified: Thu, 13 Dec 2018 15:32:53 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8da049c7ca55d06efb3aabb34e68ab443b2554d228243ebcad4c15ebeace394`  
		Last Modified: Thu, 13 Dec 2018 15:33:10 GMT  
		Size: 86.5 MB (86499963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4761b9e9bf7942a2f1cd24afa4be775f71d6f4c1499a8f710da86ab5a67c3`  
		Last Modified: Thu, 13 Dec 2018 15:32:53 GMT  
		Size: 1.3 MB (1294355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1980c99dfb0741c0666b311c8681ba7332eea5c67eb7ddbf5ed3c99a984c6f`  
		Last Modified: Thu, 13 Dec 2018 15:32:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcaa9e99c2f049082e3292782cb563bc1a7335ebf1c6f8f7cafacfe9ce89672`  
		Last Modified: Thu, 13 Dec 2018 15:32:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb9df11150215f1150085d256684e5182979c9aba37cdd392e42f4cea3bf069`  
		Last Modified: Thu, 13 Dec 2018 15:32:52 GMT  
		Size: 2.4 MB (2395285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4c871af585bfc519f9f6722c78f2f2c6c7d558ebb2d18b50598c0d0019e9da`  
		Last Modified: Thu, 13 Dec 2018 15:33:11 GMT  
		Size: 113.8 MB (113801476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba101a18d38403b8f6ec6d3761f68db54469506538434ef7fbb71b1bfb63419`  
		Last Modified: Thu, 13 Dec 2018 15:32:51 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.9`

```console
$ docker pull redmine@sha256:0050995e65e97adf9776bd6f33e7b54b115ba7b154a1290ec4f5c9f5c6053dea
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

### `redmine:3.3.9` - linux; amd64

```console
$ docker pull redmine@sha256:287e1e9866c21d58514836b5c1dc1265db4fc3fbd9c07c7a51c661883b3a3c5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308960359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d08432e589fb472873795e8c9b1e395d1e6812ebf415b10ab8c7a2f3158052f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Wed, 26 Dec 2018 09:47:54 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:47:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:51:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:51:13 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:51:13 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:47:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:48:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:48:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:48:35 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:48:35 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:48:35 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:48:36 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 26 Dec 2018 10:48:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:51:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:51:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:51:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:51:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:51:42 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:51:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b70dba10e2dc44f88075b4b03d5cbde63bdfbff9a5d396b731982a21e86cb7`  
		Last Modified: Wed, 26 Dec 2018 10:13:27 GMT  
		Size: 36.5 MB (36522565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74f51dc6c194d7716f7ee745a3462aa209f6258d404c41d172f2d1e927e26c`  
		Last Modified: Wed, 26 Dec 2018 10:13:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a6c5eecfdb7026ebbc5a207298b4a44744084b08fd2d6a8bfbf1ef1e3971db`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0231587e94a49e9e3341f03c087a80df5eb5951b493c8e67f169952b2bd05d`  
		Last Modified: Wed, 26 Dec 2018 10:53:51 GMT  
		Size: 86.5 MB (86451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8811c192b5506830b3d06d9ae2fb66542d03015baa5cceddea9c62d87b0c143e`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.3 MB (1304525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e4cc974035ca9ef177c3bd18dbd61b5d927152e8be36a9815f5ef2bda42b4d`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6936dfd3b204b274dadf91e72ff26441935c8beb7343558b18908387aff7c307`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2c6cc2959893256bfc554b0f9ffc77ce913e92709fa2557a1eb05a1c4d1328`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dffcf0863a2896d43db5142b3e8567090b56a57fe8368c8b2be103ee945695`  
		Last Modified: Wed, 26 Dec 2018 10:53:53 GMT  
		Size: 122.5 MB (122481046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041996b529b337aca0c74bc246b8f589139e702a8d3c56b5126d95608581f1d7`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; arm variant v5

```console
$ docker pull redmine@sha256:7922c3c6d005b638c4ee87d9cc2062fbb57b558eae145a9e98e5b6ed3ace47af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292169568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e05cd6b7efd728d29585bf0ad8846d7988df3a690afba5a903c33c49a0d09c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:05:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:05:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:05:27 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 20:05:27 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 20:05:28 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 20:05:28 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:43:50 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:48:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:48:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:48:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:48:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:48:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:48:32 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:38:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:39:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:39:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:39:29 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:39:30 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:39:30 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:39:31 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:39:31 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 11:39:32 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 11:39:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:45:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:45:25 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:45:26 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:45:26 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:45:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c0144ab3b6e4d6c9452e01ba501402c7c1dc993223990d6e0c1d08d192314e`  
		Last Modified: Fri, 16 Nov 2018 20:31:23 GMT  
		Size: 12.5 MB (12461200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834ade7bb402af53101d089b10e1c8ddee6b28b9e79ec1ed8d314d3965790d8`  
		Last Modified: Fri, 16 Nov 2018 20:31:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065146a935376cd42c1f6aff6f89d1a20581d35133701e4a2469578b134b6a80`  
		Last Modified: Thu, 13 Dec 2018 11:06:46 GMT  
		Size: 35.2 MB (35150966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a3f46ec51bf77873b64a08a12ffed2aea3facf53da45c9e68e397f4a7ec02c`  
		Last Modified: Thu, 13 Dec 2018 11:06:34 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4154246c730970c862686c28db02f1899474cde2027a20598fb6aa2851f9f02`  
		Last Modified: Thu, 13 Dec 2018 11:47:56 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8610b6aebde19b0e70f71c1ad80c5fe6399e46fcd85c3d478454e322f323ae`  
		Last Modified: Thu, 13 Dec 2018 11:48:21 GMT  
		Size: 83.8 MB (83794047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7d81f61eae32b6643c9353765537cbea1df10da1df8c378163b2af635c2faa`  
		Last Modified: Thu, 13 Dec 2018 11:47:56 GMT  
		Size: 1.3 MB (1262317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5d26799bb971587d6343a3c9c41ee34da2dbab66b9991e55be0248b4b28b33`  
		Last Modified: Thu, 13 Dec 2018 11:47:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e72ddead678f8934bfc5094a3ca26be4dde47dfd709828036c820e2672f0fc9`  
		Last Modified: Thu, 13 Dec 2018 11:47:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a22eff9cf55b9a746fea88b52a4457ac61f33e5c42de60200e2eae878d04193`  
		Last Modified: Thu, 13 Dec 2018 11:47:56 GMT  
		Size: 2.4 MB (2395541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926e15ca5ed6c29cf3b0841004b9c023a305f99de6a23b9413f926f913706784`  
		Last Modified: Thu, 13 Dec 2018 11:48:24 GMT  
		Size: 113.1 MB (113069747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d7ddea2c1db4eeebb06e794fcab45cd72f5fc1e0504961629a6e69919bf0e`  
		Last Modified: Thu, 13 Dec 2018 11:47:55 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; arm variant v7

```console
$ docker pull redmine@sha256:37d6dded7e3da00ff6739c75a524df82d01af9bf4e2fddd73c210691b875db27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284622054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cc0a544bbc9e202e366741396009c2ab60a7e6c0134a3a2f5b4c214e722e6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:25:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:25:59 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:26:00 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 20:26:00 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 20:26:01 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 20:26:01 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:47:04 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:51:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:51:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:51:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:51:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:51:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:51:18 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:39:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:40:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:40:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:40:19 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:40:19 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:40:20 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:40:21 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:40:21 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 14:40:21 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 14:40:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:45:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:45:52 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:45:53 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:45:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:45:54 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:45:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f4bbaef12d0a4b00c413b68e2ff2e5def1a058149b94f176d5ca9cc3a8d35a`  
		Last Modified: Fri, 16 Nov 2018 20:49:44 GMT  
		Size: 11.9 MB (11909648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185a13f975d186ed486fd6c6eee7671b4119ec0f0adbcc726bb1ffcb8a96999a`  
		Last Modified: Fri, 16 Nov 2018 20:49:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b807650bd22fd32056c4aabc94a4cce80edddf3ce36e40e1c9489b9dd7608841`  
		Last Modified: Thu, 13 Dec 2018 14:09:28 GMT  
		Size: 34.7 MB (34699124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f07180bd37c1ba6359aeb603c9d69080ff71e0167de79957b5f4f3a8ff5df7`  
		Last Modified: Thu, 13 Dec 2018 14:09:15 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c23a3afdf7277a0d2e73e7da2803ca6f93f832daf97e04a72e48b825d679d9`  
		Last Modified: Thu, 13 Dec 2018 14:48:12 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34a08f79f932e3db0f4d6f490055f967607f178d57687b4fd840555a2100462`  
		Last Modified: Thu, 13 Dec 2018 14:48:35 GMT  
		Size: 80.7 MB (80667763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b86c585b0c4a06f5f68ffee277a135f69bbf11f44474800d85b0ad127044dc`  
		Last Modified: Thu, 13 Dec 2018 14:48:12 GMT  
		Size: 1.3 MB (1254844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0589ccf8a7ed2a36bae6da2ccbed351fa745d6c9df1527c755a696f9ce4558`  
		Last Modified: Thu, 13 Dec 2018 14:48:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef16cbe0b1b0e4d27501329007d0698ea102dbf52e3369828cb24689b0286695`  
		Last Modified: Thu, 13 Dec 2018 14:48:11 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f7e489fdf70092ed1bed8dc883cac9c383637cd2dfd22c4905822fe34ef3df`  
		Last Modified: Thu, 13 Dec 2018 14:48:12 GMT  
		Size: 2.4 MB (2395545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d5687b3979feb7569a8d9c63ddf7a24cb7c8e788f06bc3c5fa2aa53f127115`  
		Last Modified: Thu, 13 Dec 2018 14:48:39 GMT  
		Size: 111.6 MB (111614573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0176f4893c10da4c26346ccf0225b886966b3202a0aa9f15363246d37b410798`  
		Last Modified: Thu, 13 Dec 2018 14:48:11 GMT  
		Size: 2.0 KB (1952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:af5a005c6d875c8b269da675f3a8eaa8733472f1b56c4bf9210b2351539ca70f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (291024420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f576799cdd3c79c95a97e7a14d010acd6661760507afba4ba5cbe337877289`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 07:25:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:25:37 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 07:25:38 GMT
ENV RUBY_MAJOR=2.3
# Sat, 17 Nov 2018 07:25:39 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 17 Nov 2018 07:25:40 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 17 Nov 2018 07:25:40 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:12:44 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:21:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:21:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:21:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:21:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:21:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:21:05 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:08:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:08:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:08:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:08:54 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:08:55 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:08:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:08:58 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 15:08:59 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 15:09:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:22:26 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:22:27 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:22:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:22:29 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:22:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc3ba01e5ae5b030dc8bf25d007c5038a8d1e8a446a8c1f8bded58156322333`  
		Last Modified: Sat, 17 Nov 2018 07:53:07 GMT  
		Size: 12.7 MB (12729901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b467d963982aa790d082178753883a32484a1b02c851a63d31d532b72b9cb4c5`  
		Last Modified: Sat, 17 Nov 2018 07:53:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7380a309e58f19d93af8d0eca2fb543c714c0525198bfb6f1f07022746c8471`  
		Last Modified: Thu, 13 Dec 2018 13:48:42 GMT  
		Size: 36.2 MB (36204738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd7949b3c23f8ece2a412ad6765ba41f94d173d2b26c8da981e263b52925bbe`  
		Last Modified: Thu, 13 Dec 2018 13:48:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4399180caded8bc9e453065ad1b46fcc7a84f742fcb97bf0842eb19d820c29b4`  
		Last Modified: Thu, 13 Dec 2018 15:25:50 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e95109f9cb49258db29b2cbc782d0c348c152697e9794cb33affe8ae98c939`  
		Last Modified: Thu, 13 Dec 2018 15:26:15 GMT  
		Size: 82.7 MB (82732496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b177a116c3c71862ac7256d757c90630733cc30fac4860918c1afac39ef348`  
		Last Modified: Thu, 13 Dec 2018 15:25:48 GMT  
		Size: 1.2 MB (1239796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e535feff1b7ee4743956bef7c7f99762084619515bd642d229c5cd7ee7aba699`  
		Last Modified: Thu, 13 Dec 2018 15:25:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c127128aacfc7a439f75229b3f40a6e3e6e64810b3bd127a6462cc2ed79d3d9`  
		Last Modified: Thu, 13 Dec 2018 15:25:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f15699bbd0b460498dfe917c7911a2cdaf91cf24e9a916aa6d39196d6721e70`  
		Last Modified: Thu, 13 Dec 2018 15:25:48 GMT  
		Size: 2.4 MB (2395285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd63d3014da683fe1cf96cb0c46292dda2ad7f41271b116c3dc646c7b841340`  
		Last Modified: Thu, 13 Dec 2018 15:26:23 GMT  
		Size: 112.6 MB (112601170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75ae9338829a37c0956187224e3ea3505279f0004a005bdd626b6eb85ed64f4`  
		Last Modified: Thu, 13 Dec 2018 15:25:46 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; 386

```console
$ docker pull redmine@sha256:52f8705ea9be08c6dbc4294b55756669c3946783af5cc1c74944cf6ba92f201f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307808046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3322ffc22c709eefe1a3b8c5a0e6394147c6268a75896545b3cba514ea330564`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:43:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:43:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:43:21 GMT
ENV RUBY_MAJOR=2.3
# Sat, 17 Nov 2018 17:43:21 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 17 Nov 2018 17:43:21 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 17 Nov 2018 17:43:22 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:37:16 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:40:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:40:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:40:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:40:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:40:43 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:40:43 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:53:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:54:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:54:35 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:54:35 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:54:35 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:54:36 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:54:36 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 14:54:36 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 14:54:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:57:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:57:52 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:57:52 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:57:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:57:53 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:57:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13ecbf25678ce9869cabffec949f2bad2f1e488d15fea2bff8a02784c4cb27d`  
		Last Modified: Sat, 17 Nov 2018 18:05:55 GMT  
		Size: 17.6 MB (17570129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cc117c207beb43f7489e2d6b211729aba758fa0b68f3dfe0e67100af781ed`  
		Last Modified: Sat, 17 Nov 2018 18:05:50 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3143370ee323025ff58b0fc9da8984a08744c46d2c83ea8b27e40ba69099bf7c`  
		Last Modified: Thu, 13 Dec 2018 14:17:00 GMT  
		Size: 35.1 MB (35103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7ab38c058cae57dfa91b5f71ba7f5beb2bfcc26b8343ab1ba6aaee4fbf3c7f`  
		Last Modified: Thu, 13 Dec 2018 14:16:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412eac592214151038b9ac2e0666b274e2d3ff30fd53f38b01f750534981e15`  
		Last Modified: Thu, 13 Dec 2018 15:01:16 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3539e976ee31ad46c32fa93301ae0ae3011e00c31e58b1a7aa50f462d6ddde`  
		Last Modified: Thu, 13 Dec 2018 15:01:41 GMT  
		Size: 88.5 MB (88540705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9311c6c0d4a0744c1bf20a34d78ff0c469c98d064b7fc7f4fbc07c9ce984374a`  
		Last Modified: Thu, 13 Dec 2018 15:01:16 GMT  
		Size: 1.3 MB (1271973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3375b69d8592af51dcab717ade0b1854d6fe52b2ed1b100b36a095cef561003`  
		Last Modified: Thu, 13 Dec 2018 15:01:15 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7531820966f3563cb200004a0fdf89db436cca584c72c78a74cf6431bce790`  
		Last Modified: Thu, 13 Dec 2018 15:01:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac0562d0bef8a071e9221411836c77e4333ce1b179c6de0e427ca48b1f1a6d7`  
		Last Modified: Thu, 13 Dec 2018 15:01:17 GMT  
		Size: 2.4 MB (2395286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f525f5619d9a12e45e5c8b9e03eb5fb54e00f116c642bf8b353d86ca758f8f`  
		Last Modified: Thu, 13 Dec 2018 15:01:42 GMT  
		Size: 116.9 MB (116866908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185af81af2c677d57c4caa35674e16e43773626c169987fac36e33c6adf9fc55`  
		Last Modified: Thu, 13 Dec 2018 15:01:14 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; ppc64le

```console
$ docker pull redmine@sha256:f21c03ebf7cb6d7548a0af8899791fa4948386e660f893b32c84f077ecce5942
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.9 MB (300857250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dedc983df4c72930ab0038bd168fc4fd050d514e844da47ca62c26d78d983ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:22:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:22:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:22:53 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 21:22:55 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 21:22:57 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 21:22:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 11:24:12 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 11:32:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 11:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 11:32:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 11:32:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 11:32:55 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 11:32:55 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 13:00:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 13:02:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 13:02:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 13:02:50 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 13:02:50 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 13:02:51 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 13:02:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 13:02:54 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 13:02:54 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 13:02:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 13:10:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 13:10:13 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 13:10:14 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 13:10:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:10:20 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 13:10:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c948da3d5dc68920081447b3edb8c64c80c1a5b4d038e98d97bbac81f84852`  
		Last Modified: Fri, 16 Nov 2018 21:39:42 GMT  
		Size: 13.6 MB (13582073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6932bce801208d40178367ada2f5f18dace0d4246e3fda62bef097a2e5adab1b`  
		Last Modified: Fri, 16 Nov 2018 21:39:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0575f99c8defb3b47b49136f6e9af4f439e0e0b669e860aaabc7cbd7d554629c`  
		Last Modified: Thu, 13 Dec 2018 12:14:53 GMT  
		Size: 37.1 MB (37147415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f193d6917f380274a6c9ef01b3dd81d057f6b6323115ccd5f06731611b4f716`  
		Last Modified: Thu, 13 Dec 2018 12:14:33 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f02cd231598f2dfbc17ff80e526984558fd7be9f55d048666ec8413ffcc597`  
		Last Modified: Thu, 13 Dec 2018 13:16:56 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b54b6532a52fed828850f80ee13fefc483ed42fd2f1dc91ab65d2a040274f74`  
		Last Modified: Thu, 13 Dec 2018 13:17:33 GMT  
		Size: 85.9 MB (85936209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efc34b6a0faf678cad55647b292fbfdc4fc40e75af8a59cc94851b9074cd8f8`  
		Last Modified: Thu, 13 Dec 2018 13:16:58 GMT  
		Size: 1.2 MB (1228597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdaf3f35e76bb523823638ec773fabe5d6bcdec0250be9984f66e0ee061fd24`  
		Last Modified: Thu, 13 Dec 2018 13:16:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d77fe14ad92154bf6bedc9c2d7a6338046f9ddf4981dc243ef43d91eea706a`  
		Last Modified: Thu, 13 Dec 2018 13:16:53 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be732172f504c36d8b855cad9fcdef54e6ba1fd8971ae3d9115c269bbddd82c1`  
		Last Modified: Thu, 13 Dec 2018 13:16:59 GMT  
		Size: 2.4 MB (2395541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a22841255d1fdbf2fc5d51bbccede6fd187832231c6f6c9ac525aa575b8b4`  
		Last Modified: Thu, 13 Dec 2018 13:17:44 GMT  
		Size: 115.0 MB (114956909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07b5aa712923be921644f669cfa91f177479bf82947d6818e50f8a63a48dc87`  
		Last Modified: Thu, 13 Dec 2018 13:16:53 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; s390x

```console
$ docker pull redmine@sha256:7781aa55edfd62621af699ac5ded66ee28c65bff0c6eb81ac023dd67493ab2ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304334160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf17c8e08f4d25369d46cdb7ead19e1d471dcdbf708e3b79e8c300f3d1f2391`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:45:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:45:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:45:39 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 21:45:39 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 21:45:39 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 21:45:40 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:44:58 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:47:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:47:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:47:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:47:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:47:55 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:47:55 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:27:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:27:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:27:32 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:27:32 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:27:32 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:27:33 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:27:33 GMT
ENV REDMINE_VERSION=3.3.9
# Thu, 13 Dec 2018 15:27:33 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Thu, 13 Dec 2018 15:27:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:30:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:30:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:30:59 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:31:00 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:31:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71e71eaa77cbb04813ea11cab23c494b5c68a1957929d039b57672e3a81379d`  
		Last Modified: Fri, 16 Nov 2018 21:53:37 GMT  
		Size: 14.7 MB (14682383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19654f465b995a0f8251faaa877a4067f793f5fbdd0faa1a891cf983484af08`  
		Last Modified: Fri, 16 Nov 2018 21:53:34 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735493cefe8a98603ad12f257e7eece437804a8e0dd18500e79d3f2b981d5467`  
		Last Modified: Thu, 13 Dec 2018 15:00:39 GMT  
		Size: 40.5 MB (40451548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9864ffd90ee3d64177a8bd76aba7cedb6069898f40636d77e9dda4be6fa90356`  
		Last Modified: Thu, 13 Dec 2018 15:00:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d887f0c18899c54244b5414999a43d565a053f01a19dbc05c2b669cdcededc`  
		Last Modified: Thu, 13 Dec 2018 15:32:53 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8da049c7ca55d06efb3aabb34e68ab443b2554d228243ebcad4c15ebeace394`  
		Last Modified: Thu, 13 Dec 2018 15:33:10 GMT  
		Size: 86.5 MB (86499963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4761b9e9bf7942a2f1cd24afa4be775f71d6f4c1499a8f710da86ab5a67c3`  
		Last Modified: Thu, 13 Dec 2018 15:32:53 GMT  
		Size: 1.3 MB (1294355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1980c99dfb0741c0666b311c8681ba7332eea5c67eb7ddbf5ed3c99a984c6f`  
		Last Modified: Thu, 13 Dec 2018 15:32:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcaa9e99c2f049082e3292782cb563bc1a7335ebf1c6f8f7cafacfe9ce89672`  
		Last Modified: Thu, 13 Dec 2018 15:32:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb9df11150215f1150085d256684e5182979c9aba37cdd392e42f4cea3bf069`  
		Last Modified: Thu, 13 Dec 2018 15:32:52 GMT  
		Size: 2.4 MB (2395285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4c871af585bfc519f9f6722c78f2f2c6c7d558ebb2d18b50598c0d0019e9da`  
		Last Modified: Thu, 13 Dec 2018 15:33:11 GMT  
		Size: 113.8 MB (113801476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba101a18d38403b8f6ec6d3761f68db54469506538434ef7fbb71b1bfb63419`  
		Last Modified: Thu, 13 Dec 2018 15:32:51 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.9-passenger`

```console
$ docker pull redmine@sha256:70a3fa76aa671fb56fd8e2514e6be1c36a0e69405240790a4b71f32b2d449198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9f5b090c96598945b4fcc29db803599df89a5e6585560fdd81a33db771d0b678
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332693870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0abf75647374d7ae50968ee49bd24e21e44be1eb35974f553f2a64b9c3c2d187`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Wed, 26 Dec 2018 09:47:54 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:47:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:51:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:51:13 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:51:13 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:47:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:48:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:48:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:48:35 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:48:35 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:48:35 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:48:36 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 26 Dec 2018 10:48:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:51:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:51:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:51:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:51:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:51:42 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:51:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:51:58 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:52:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:52:14 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:52:15 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:52:15 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b70dba10e2dc44f88075b4b03d5cbde63bdfbff9a5d396b731982a21e86cb7`  
		Last Modified: Wed, 26 Dec 2018 10:13:27 GMT  
		Size: 36.5 MB (36522565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74f51dc6c194d7716f7ee745a3462aa209f6258d404c41d172f2d1e927e26c`  
		Last Modified: Wed, 26 Dec 2018 10:13:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a6c5eecfdb7026ebbc5a207298b4a44744084b08fd2d6a8bfbf1ef1e3971db`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0231587e94a49e9e3341f03c087a80df5eb5951b493c8e67f169952b2bd05d`  
		Last Modified: Wed, 26 Dec 2018 10:53:51 GMT  
		Size: 86.5 MB (86451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8811c192b5506830b3d06d9ae2fb66542d03015baa5cceddea9c62d87b0c143e`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.3 MB (1304525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e4cc974035ca9ef177c3bd18dbd61b5d927152e8be36a9815f5ef2bda42b4d`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6936dfd3b204b274dadf91e72ff26441935c8beb7343558b18908387aff7c307`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2c6cc2959893256bfc554b0f9ffc77ce913e92709fa2557a1eb05a1c4d1328`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dffcf0863a2896d43db5142b3e8567090b56a57fe8368c8b2be103ee945695`  
		Last Modified: Wed, 26 Dec 2018 10:53:53 GMT  
		Size: 122.5 MB (122481046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041996b529b337aca0c74bc246b8f589139e702a8d3c56b5126d95608581f1d7`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf56f552c87882efba5ee7d558f3fda594c22504687d7553b4a93f1f6e7258`  
		Last Modified: Wed, 26 Dec 2018 10:54:01 GMT  
		Size: 19.3 MB (19254388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8fb12a0747014c5f5c915138b035c8d633a986a8ae7fb12f7d700fc374a39`  
		Last Modified: Wed, 26 Dec 2018 10:53:59 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:70a3fa76aa671fb56fd8e2514e6be1c36a0e69405240790a4b71f32b2d449198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9f5b090c96598945b4fcc29db803599df89a5e6585560fdd81a33db771d0b678
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332693870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0abf75647374d7ae50968ee49bd24e21e44be1eb35974f553f2a64b9c3c2d187`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Wed, 26 Dec 2018 09:47:54 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:47:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:51:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:51:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:51:13 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:51:13 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:47:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:48:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:48:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:48:35 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:48:35 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:48:35 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:48:36 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 26 Dec 2018 10:48:36 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 26 Dec 2018 10:48:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:51:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:51:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:51:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:51:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:51:42 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:51:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:51:58 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:52:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:52:14 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:52:15 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:52:15 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b70dba10e2dc44f88075b4b03d5cbde63bdfbff9a5d396b731982a21e86cb7`  
		Last Modified: Wed, 26 Dec 2018 10:13:27 GMT  
		Size: 36.5 MB (36522565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74f51dc6c194d7716f7ee745a3462aa209f6258d404c41d172f2d1e927e26c`  
		Last Modified: Wed, 26 Dec 2018 10:13:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a6c5eecfdb7026ebbc5a207298b4a44744084b08fd2d6a8bfbf1ef1e3971db`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0231587e94a49e9e3341f03c087a80df5eb5951b493c8e67f169952b2bd05d`  
		Last Modified: Wed, 26 Dec 2018 10:53:51 GMT  
		Size: 86.5 MB (86451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8811c192b5506830b3d06d9ae2fb66542d03015baa5cceddea9c62d87b0c143e`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 1.3 MB (1304525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e4cc974035ca9ef177c3bd18dbd61b5d927152e8be36a9815f5ef2bda42b4d`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6936dfd3b204b274dadf91e72ff26441935c8beb7343558b18908387aff7c307`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2c6cc2959893256bfc554b0f9ffc77ce913e92709fa2557a1eb05a1c4d1328`  
		Last Modified: Wed, 26 Dec 2018 10:53:35 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dffcf0863a2896d43db5142b3e8567090b56a57fe8368c8b2be103ee945695`  
		Last Modified: Wed, 26 Dec 2018 10:53:53 GMT  
		Size: 122.5 MB (122481046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041996b529b337aca0c74bc246b8f589139e702a8d3c56b5126d95608581f1d7`  
		Last Modified: Wed, 26 Dec 2018 10:53:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf56f552c87882efba5ee7d558f3fda594c22504687d7553b4a93f1f6e7258`  
		Last Modified: Wed, 26 Dec 2018 10:54:01 GMT  
		Size: 19.3 MB (19254388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8fb12a0747014c5f5c915138b035c8d633a986a8ae7fb12f7d700fc374a39`  
		Last Modified: Wed, 26 Dec 2018 10:53:59 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:5474b103be2e0101d04b8ddcc0a553c927762403b28cd022b73660c91c94c2fe
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
$ docker pull redmine@sha256:195f68db9645c8455eac27bec77329890b1193a972a6ae7340c314a4ea68778b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292460349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7441104061bac7624c96498ffcd83759a6370d48a4418917cf93c748a0ab3123`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Wed, 26 Dec 2018 09:18:51 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:18:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:23:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:23:48 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:43:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:44:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:44:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:44:28 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:44:28 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:44:28 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:44:29 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 26 Dec 2018 10:44:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:47:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:47:26 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:47:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:47:26 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:47:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:59bcf0835b69cca98c815d418b46ef7071872cf8f060b0f5bd61b4701114c0a2`  
		Last Modified: Wed, 26 Dec 2018 10:12:23 GMT  
		Size: 23.7 MB (23700739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b3898e920a1d29ae65a591ee3c9a532f58f4f05e100870bcfe6742d5cf998a`  
		Last Modified: Wed, 26 Dec 2018 10:12:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae2df96a993fdfe5a1d18bd6a208d6d5d0a981b971b5ba6b00f2dbc8922e653`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eb4bb1c9e1567831de44c3354f79987a6aa5bc862dcd1a96311444dc759051`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 88.1 MB (88050958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b417bb333024ba227eac56afda877abde9a49c3f8b3198a2fe31eda1f32c31b2`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.3 MB (1304387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886400734ef0692f3b594d3163effe3892a222ecfe481e515e88125c636cc28`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27490c72329f80a43c0b7efcb378f1cb29dbf2836a96becfb0b55f11665e411`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e67c4b2095565be23626dc83618606cd75eb53922e0349b56258623baac23`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68023dbb3a1ea3098d62e09424f7a2b5e027d37aedda52e6196f4deaac19b506`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 118.8 MB (118783244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2020982382817f4c6fee3b88be0cf6a99b00c7313cc77831ba69753b2e743`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:71e67a88b28e3838491e3c8697b5540915c73313d5fa40963b53f4625d928f5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280695041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fed14c6e69a349349468f1b0314cc7dbc6297a0526069724f8a43eecb4fdf8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:37:45 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 19:37:45 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 19:37:46 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 19:37:46 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:19:25 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:25:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:25:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:25:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:25:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:25:40 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:25:40 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:31:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:31:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:32:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:32:18 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:32:18 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:32:19 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:32:20 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:32:20 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 11:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 11:32:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:38:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:38:02 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:38:02 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:38:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:38:03 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:38:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb117af07cda2e335216d8061904e3921c2e0296097b9968f6988f59ce31da2`  
		Last Modified: Thu, 13 Dec 2018 11:04:25 GMT  
		Size: 23.2 MB (23198051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026e2dbb603cc78baed268e815bcba4b54acaf39ade01368aefc689cb56965fe`  
		Last Modified: Thu, 13 Dec 2018 11:04:19 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99c071fb8ad8c9b0c29c0bf9bc6688b6118466eeb379fae11f0d650da83470b`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ce66261792f8b9194650fc6a3f01c1a2da6317f9d094a240b35f3d020c725f`  
		Last Modified: Thu, 13 Dec 2018 11:47:21 GMT  
		Size: 85.0 MB (84972989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005749eba3fb1e7bea1fff1022c18f2ad0592c50bf14bdec3ef6b5560e4072f0`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 1.3 MB (1262293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031dbb24c4ed42649ba6a5bebc68a4519eba96268263ba9d57906283186f7e95`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aba9ee2ff60b71cc71add55a21ed4dd727c2c55407e4c0ea4e3be542029c71c`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cea6c3142861675e9c97ea756d22859cbbea400397d24520d7d56d835a1a51`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 2.5 MB (2460816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b9e69af732047cf6ee0e2cdd77219fa6881f19aa24ffa543a78f823e8ff5b4`  
		Last Modified: Thu, 13 Dec 2018 11:47:27 GMT  
		Size: 113.4 MB (113364382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100c9b920d88e442338c53231ddecd722edf11215519027a679cface6ab93aea`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ac2804c0e4fa78303919c4195634a324af26fe2899173df721338075512c894d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273268409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b444c84f11cc321fea7d73134a86e357de870054c64a2195a365013bd65d6ed1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:01:16 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 20:01:17 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 20:01:18 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 20:01:18 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:25:07 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:30:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:30:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:30:50 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:30:51 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:32:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:33:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:33:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:33:52 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:33:52 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:33:53 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:33:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:33:54 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:33:54 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:33:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:38:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:38:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:39:00 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:39:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:39:01 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:39:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e003d7b452a77d3f01e2e0c5fe21c93fef35b6be644b37fe87294f218833af70`  
		Last Modified: Thu, 13 Dec 2018 14:07:03 GMT  
		Size: 22.9 MB (22885985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5826722353898cacc1aedfed26c7cb1dd5cefd1ef9ec2c7153061f2d1da998`  
		Last Modified: Thu, 13 Dec 2018 14:06:58 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166cd9305e8c7bddc1510063f5b740cc126c15997c822551f08c05acf0aa68e8`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d937d28fd1249f1c93f9320b0227236a17cf4951880d1f0b02bfee6320c77d`  
		Last Modified: Thu, 13 Dec 2018 14:47:39 GMT  
		Size: 81.8 MB (81782519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3921245930a5136562d34fc35f1f38579673b3dd7cd1ee3536665678c4198c6f`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 1.3 MB (1254751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa217e16eb93aafe63708736d6704b0c0beed8521826dd9c54f29149b9c9687`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ba6cec056e84135bff8e7f6656bf9e7e8d646bb8fdf530db9c1d9128cce2a1`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0c9fe87376ab0474735f3c4d9277741796ce072db259c41f8e18f86eebe645`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 2.5 MB (2460828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a015eabbecaddeac09df76b8f99996582ae6b5e05a9f478f0a0521913ebd005`  
		Last Modified: Thu, 13 Dec 2018 14:47:42 GMT  
		Size: 111.9 MB (111883292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a928c4fb44027087dd70ed4497c1409bfed195560c51fec4f2da60cfa0ea42`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:cf6eae099c52413804f0e669857716527de48819cd58066b4b6278328cd511a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278652189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38ac34ea08b13b729e743e8d0e42ce179eebbbb05038561c2b4542d1bfc76d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 07:07:16 GMT
ENV RUBY_MAJOR=2.4
# Sat, 17 Nov 2018 07:07:19 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 17 Nov 2018 07:07:32 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 17 Nov 2018 07:07:32 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:41:23 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 12:51:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 12:51:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 12:51:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 12:51:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 12:51:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 12:51:17 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:50:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:52:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:52:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:52:58 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:52:58 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:53:00 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:53:03 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:53:04 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:53:05 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:53:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:06:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:06:03 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:06:04 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:06:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:06:05 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:06:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21b1d491804e971071a14581ba6f8dd0b0ae00d6caefebef71eb01ceb753a0`  
		Last Modified: Thu, 13 Dec 2018 13:44:51 GMT  
		Size: 23.3 MB (23329946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a97a047e16516906f6d025932913e80f89f3b6fc869a944e13b1f7cda91bed`  
		Last Modified: Thu, 13 Dec 2018 13:44:45 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d4bd82cf38ea41c2f6488da8fd9b44bbe266507d583f1e2f2dee3747e09c7e`  
		Last Modified: Thu, 13 Dec 2018 15:24:31 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a3e8408194b523e2539f09e35a3e8bab6814b6d822e14fc5963f0d688b5cb3`  
		Last Modified: Thu, 13 Dec 2018 15:25:00 GMT  
		Size: 83.9 MB (83913799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895c851a240f19065eab7240014d022df48b7f564933eb926cad0ef8ac4487c`  
		Last Modified: Thu, 13 Dec 2018 15:24:31 GMT  
		Size: 1.2 MB (1239791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569760b6238df7f119d75dbe8142007d9b03a32c98c9416d022af813f9548451`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dac7ba42bf3361ef9ac8d34abb66ef1c11f6515b2fcd351640096524fbb0f2`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acb6a757bef0f41e9cc77ba19ca634f34592e0d88c8e44054247f3521e2f4cf`  
		Last Modified: Thu, 13 Dec 2018 15:24:30 GMT  
		Size: 2.5 MB (2460307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137a6b9face2bd7baf74630ee77382191b8e8f0133a99f38c937f1c634337ee6`  
		Last Modified: Thu, 13 Dec 2018 15:25:02 GMT  
		Size: 112.9 MB (112943246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b325df5428ce838d7369ebe597f0baab0754f660333c3e1981679085af0b96`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:0fbd9781a75e993bdf0dca6da91a8323d929764e150453b68cd2ddfb49e87f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296590263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759c8fe2987aa6b0b38baa377ffb416beb988a9dd51455f83832ac866a78d9a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:11:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:11:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 17 Nov 2018 17:25:02 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:11:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:15:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:15:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:15:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:15:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:15:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:15:32 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:49:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:50:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:50:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:50:17 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:50:17 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:50:17 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:50:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:50:18 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:50:18 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:50:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:53:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:53:26 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:53:26 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:53:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:53:26 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:53:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc717430864199fb47be80c1037bfd90f9a61a6ae28675cd0e0b4121af5008a4`  
		Last Modified: Sat, 17 Nov 2018 17:57:13 GMT  
		Size: 16.3 MB (16278299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0821f2ab769a687f1181a37080505f80c76a2f7c36a30dca9f5ba88e060ece25`  
		Last Modified: Sat, 17 Nov 2018 17:57:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f4728f6d19b1a9d0bd94b0344e163a7b0d3018391a2801c34dbc1e74d8a4e`  
		Last Modified: Thu, 13 Dec 2018 14:11:27 GMT  
		Size: 23.4 MB (23396304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4f4300240ec44925badbfcfdb6871da2ecc37561ea1460e175a81a0c12a058`  
		Last Modified: Thu, 13 Dec 2018 14:11:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52460a0a44247e4f02cb3df865d5730849d7a02bbf4f715e3d7dc1834b04c3c`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8954ea60cef2bd8382586ec7331111f394b354af5cd29dcba981725b80f480b2`  
		Last Modified: Thu, 13 Dec 2018 15:00:20 GMT  
		Size: 90.0 MB (89973248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73767212a3d7c7fe0a1bddf076867f263a19475d27650c789eb55bfc5c53ba2`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 1.3 MB (1271895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7479e028d5067eaac80b56bc2450e62fc26360d9cbf138fdcadd9965e7d58333`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eab4bd1b288f9eb252a6d038689e201470b659b531a9a8604872e920526888`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37397869d09b53c63255897a1b56d05f403967fe5c0b31085cfd4e650d004fc`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 2.5 MB (2460305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544d696f8d6f87013a9688f0d1bf17c93ad286e550845b32e7e37ba8b233eb90`  
		Last Modified: Thu, 13 Dec 2018 15:00:20 GMT  
		Size: 117.2 MB (117150578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929a282f2b4ebef62cf4283a571b1392479f0711ef901afd82dd47235e402947`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:be1287ec162adc143af667e0fde78e217e4f54e901d004c8b06beb2e56b3f16e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287952709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da8ac3d7cfa90b27e82735f0c82e348372d866205eba471e0a4ecf20e7fdd0a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:08:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 21:08:37 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 21:08:37 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 21:08:38 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:57:09 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 11:06:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 11:06:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 11:06:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 11:06:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 11:06:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 11:06:16 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 12:48:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 12:50:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 12:50:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:50:55 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 12:50:56 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 12:50:57 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 12:51:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 12:51:05 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 12:51:06 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 12:51:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 12:59:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:59:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 12:59:32 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 12:59:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 12:59:34 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 12:59:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527e263c25afab370e6ed0ae56e66cdd3e4cd9057e8cef998923a7c43e6f0099`  
		Last Modified: Thu, 13 Dec 2018 12:06:27 GMT  
		Size: 23.9 MB (23890227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31679a418886d62e08eac3d0d042b2a16ff90abaa16a9188d7cc59b087df5b4`  
		Last Modified: Thu, 13 Dec 2018 12:06:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d90e522243170aae0a6127dca0ee5dd2e44e9b1a449e720b64a687d4462f46f`  
		Last Modified: Thu, 13 Dec 2018 13:14:19 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87ed01af5d2715446cfe8684b0d27f964457ec788f1cc2e11b764c8d0569055`  
		Last Modified: Thu, 13 Dec 2018 13:15:00 GMT  
		Size: 87.2 MB (87237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175078096576b23ed9dde2df28f34add62f2a8ddbbc7674bb88f655fcd0102e6`  
		Last Modified: Thu, 13 Dec 2018 13:14:20 GMT  
		Size: 1.2 MB (1228513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef34adbdbef0228abfe09c6a173b3d44961216c4c4bf1cc223d47d1f995fc2e2`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427bfbee1e57ca6c50c5661998b103fe7471feafb951524a6bdff2f16c98144a`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2711862cd1a84b82818ae393378764fd21a5fb25c08a3cac30aadce706cf54e4`  
		Last Modified: Thu, 13 Dec 2018 13:14:21 GMT  
		Size: 2.5 MB (2460815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff30b1353f66c83575bbaf6b8e19957d40fe73d1c8fd6554fa7e2f9b55401ff`  
		Last Modified: Thu, 13 Dec 2018 13:15:15 GMT  
		Size: 115.3 MB (115293075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2927e5d90281c9f953ef320063d0aee4754c1281845dd09cfe79cee1688aa10`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:e8ea2616f92f37e5407e6d50c62217a9e209ed9c99916ca56ec528c3c40a6a67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288324215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a77b9bcb1ced7de34cd84784232481f593bfe824d2b39fc608c37ad717b63c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:37:43 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:32:42 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:35:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:35:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:35:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:35:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:35:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:35:49 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:22:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:22:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:23:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:23:02 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:23:03 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:23:03 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:23:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:23:04 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 15:23:04 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 15:23:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:26:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:26:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:26:30 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:26:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:26:31 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:26:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1913f309a1b216bfb7dd8c19a6a273e8e5f3cddad623301514830f38cc326a8`  
		Last Modified: Thu, 13 Dec 2018 14:58:55 GMT  
		Size: 24.1 MB (24063735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d49d2e0dd6155d813a8e7a30fcc61cea412bd88ab96107b31e7bb052bc7125`  
		Last Modified: Thu, 13 Dec 2018 14:58:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe248502217ea22b8ef58ebfb658e70bda7e60ffc113b89d0aed509dfea1dec`  
		Last Modified: Thu, 13 Dec 2018 15:32:14 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1571a5f1c0fafddce725b522569a0e1d86dc0b8eefb2708a61d3e2892892908`  
		Last Modified: Thu, 13 Dec 2018 15:32:32 GMT  
		Size: 87.9 MB (87865471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2811e0c92538f859881c8550e6d367ed59bbb12fe5995fe870c929a58962e02`  
		Last Modified: Thu, 13 Dec 2018 15:32:14 GMT  
		Size: 1.3 MB (1294274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fab8247792572c99efeafec2da3f4d61db6290f8df3b77da0d4ab5dfbb293b`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2cfaed39a2dedf29d027a741106c2260b1078f9b593ee709731bc0e24a50d56`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b697fae1dd069095b39034321e15edb8169d5c22b68abde84c82fe96d0d0a751`  
		Last Modified: Thu, 13 Dec 2018 15:32:13 GMT  
		Size: 2.5 MB (2460288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8f9a3e7070786fd431091f4a0a655a98576b65e4f83065b1463e629c307d15`  
		Last Modified: Thu, 13 Dec 2018 15:32:31 GMT  
		Size: 114.2 MB (114192490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a681f4d90887b8dfb62e6f9b9d4e3b25af2e63ffcc0bbdbb37f13e29c8106d86`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.7`

```console
$ docker pull redmine@sha256:5474b103be2e0101d04b8ddcc0a553c927762403b28cd022b73660c91c94c2fe
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

### `redmine:3.4.7` - linux; amd64

```console
$ docker pull redmine@sha256:195f68db9645c8455eac27bec77329890b1193a972a6ae7340c314a4ea68778b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292460349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7441104061bac7624c96498ffcd83759a6370d48a4418917cf93c748a0ab3123`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Wed, 26 Dec 2018 09:18:51 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:18:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:23:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:23:48 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:43:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:44:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:44:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:44:28 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:44:28 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:44:28 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:44:29 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 26 Dec 2018 10:44:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:47:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:47:26 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:47:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:47:26 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:47:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:59bcf0835b69cca98c815d418b46ef7071872cf8f060b0f5bd61b4701114c0a2`  
		Last Modified: Wed, 26 Dec 2018 10:12:23 GMT  
		Size: 23.7 MB (23700739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b3898e920a1d29ae65a591ee3c9a532f58f4f05e100870bcfe6742d5cf998a`  
		Last Modified: Wed, 26 Dec 2018 10:12:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae2df96a993fdfe5a1d18bd6a208d6d5d0a981b971b5ba6b00f2dbc8922e653`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eb4bb1c9e1567831de44c3354f79987a6aa5bc862dcd1a96311444dc759051`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 88.1 MB (88050958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b417bb333024ba227eac56afda877abde9a49c3f8b3198a2fe31eda1f32c31b2`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.3 MB (1304387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886400734ef0692f3b594d3163effe3892a222ecfe481e515e88125c636cc28`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27490c72329f80a43c0b7efcb378f1cb29dbf2836a96becfb0b55f11665e411`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e67c4b2095565be23626dc83618606cd75eb53922e0349b56258623baac23`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68023dbb3a1ea3098d62e09424f7a2b5e027d37aedda52e6196f4deaac19b506`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 118.8 MB (118783244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2020982382817f4c6fee3b88be0cf6a99b00c7313cc77831ba69753b2e743`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; arm variant v5

```console
$ docker pull redmine@sha256:71e67a88b28e3838491e3c8697b5540915c73313d5fa40963b53f4625d928f5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280695041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fed14c6e69a349349468f1b0314cc7dbc6297a0526069724f8a43eecb4fdf8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:37:45 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 19:37:45 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 19:37:46 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 19:37:46 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:19:25 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:25:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:25:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:25:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:25:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:25:40 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:25:40 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:31:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:31:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:32:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:32:18 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:32:18 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:32:19 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:32:20 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:32:20 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 11:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 11:32:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:38:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:38:02 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:38:02 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:38:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:38:03 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:38:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb117af07cda2e335216d8061904e3921c2e0296097b9968f6988f59ce31da2`  
		Last Modified: Thu, 13 Dec 2018 11:04:25 GMT  
		Size: 23.2 MB (23198051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026e2dbb603cc78baed268e815bcba4b54acaf39ade01368aefc689cb56965fe`  
		Last Modified: Thu, 13 Dec 2018 11:04:19 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99c071fb8ad8c9b0c29c0bf9bc6688b6118466eeb379fae11f0d650da83470b`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ce66261792f8b9194650fc6a3f01c1a2da6317f9d094a240b35f3d020c725f`  
		Last Modified: Thu, 13 Dec 2018 11:47:21 GMT  
		Size: 85.0 MB (84972989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005749eba3fb1e7bea1fff1022c18f2ad0592c50bf14bdec3ef6b5560e4072f0`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 1.3 MB (1262293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031dbb24c4ed42649ba6a5bebc68a4519eba96268263ba9d57906283186f7e95`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aba9ee2ff60b71cc71add55a21ed4dd727c2c55407e4c0ea4e3be542029c71c`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cea6c3142861675e9c97ea756d22859cbbea400397d24520d7d56d835a1a51`  
		Last Modified: Thu, 13 Dec 2018 11:46:53 GMT  
		Size: 2.5 MB (2460816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b9e69af732047cf6ee0e2cdd77219fa6881f19aa24ffa543a78f823e8ff5b4`  
		Last Modified: Thu, 13 Dec 2018 11:47:27 GMT  
		Size: 113.4 MB (113364382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100c9b920d88e442338c53231ddecd722edf11215519027a679cface6ab93aea`  
		Last Modified: Thu, 13 Dec 2018 11:46:51 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ac2804c0e4fa78303919c4195634a324af26fe2899173df721338075512c894d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273268409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b444c84f11cc321fea7d73134a86e357de870054c64a2195a365013bd65d6ed1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:01:16 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 20:01:17 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 20:01:18 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 20:01:18 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:25:07 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:30:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:30:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:30:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:30:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:30:50 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:30:51 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:32:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:33:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:33:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:33:52 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:33:52 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:33:53 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:33:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:33:54 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:33:54 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:33:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:38:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:38:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:39:00 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:39:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:39:01 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:39:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e003d7b452a77d3f01e2e0c5fe21c93fef35b6be644b37fe87294f218833af70`  
		Last Modified: Thu, 13 Dec 2018 14:07:03 GMT  
		Size: 22.9 MB (22885985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5826722353898cacc1aedfed26c7cb1dd5cefd1ef9ec2c7153061f2d1da998`  
		Last Modified: Thu, 13 Dec 2018 14:06:58 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166cd9305e8c7bddc1510063f5b740cc126c15997c822551f08c05acf0aa68e8`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d937d28fd1249f1c93f9320b0227236a17cf4951880d1f0b02bfee6320c77d`  
		Last Modified: Thu, 13 Dec 2018 14:47:39 GMT  
		Size: 81.8 MB (81782519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3921245930a5136562d34fc35f1f38579673b3dd7cd1ee3536665678c4198c6f`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 1.3 MB (1254751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa217e16eb93aafe63708736d6704b0c0beed8521826dd9c54f29149b9c9687`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ba6cec056e84135bff8e7f6656bf9e7e8d646bb8fdf530db9c1d9128cce2a1`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0c9fe87376ab0474735f3c4d9277741796ce072db259c41f8e18f86eebe645`  
		Last Modified: Thu, 13 Dec 2018 14:47:17 GMT  
		Size: 2.5 MB (2460828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a015eabbecaddeac09df76b8f99996582ae6b5e05a9f478f0a0521913ebd005`  
		Last Modified: Thu, 13 Dec 2018 14:47:42 GMT  
		Size: 111.9 MB (111883292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a928c4fb44027087dd70ed4497c1409bfed195560c51fec4f2da60cfa0ea42`  
		Last Modified: Thu, 13 Dec 2018 14:47:15 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:cf6eae099c52413804f0e669857716527de48819cd58066b4b6278328cd511a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278652189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38ac34ea08b13b729e743e8d0e42ce179eebbbb05038561c2b4542d1bfc76d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 07:07:16 GMT
ENV RUBY_MAJOR=2.4
# Sat, 17 Nov 2018 07:07:19 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 17 Nov 2018 07:07:32 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 17 Nov 2018 07:07:32 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:41:23 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 12:51:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 12:51:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 12:51:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 12:51:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 12:51:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 12:51:17 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:50:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:52:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:52:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:52:58 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:52:58 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:53:00 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:53:03 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:53:04 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:53:05 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:53:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:06:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:06:03 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:06:04 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:06:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:06:05 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:06:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21b1d491804e971071a14581ba6f8dd0b0ae00d6caefebef71eb01ceb753a0`  
		Last Modified: Thu, 13 Dec 2018 13:44:51 GMT  
		Size: 23.3 MB (23329946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a97a047e16516906f6d025932913e80f89f3b6fc869a944e13b1f7cda91bed`  
		Last Modified: Thu, 13 Dec 2018 13:44:45 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d4bd82cf38ea41c2f6488da8fd9b44bbe266507d583f1e2f2dee3747e09c7e`  
		Last Modified: Thu, 13 Dec 2018 15:24:31 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a3e8408194b523e2539f09e35a3e8bab6814b6d822e14fc5963f0d688b5cb3`  
		Last Modified: Thu, 13 Dec 2018 15:25:00 GMT  
		Size: 83.9 MB (83913799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895c851a240f19065eab7240014d022df48b7f564933eb926cad0ef8ac4487c`  
		Last Modified: Thu, 13 Dec 2018 15:24:31 GMT  
		Size: 1.2 MB (1239791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569760b6238df7f119d75dbe8142007d9b03a32c98c9416d022af813f9548451`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dac7ba42bf3361ef9ac8d34abb66ef1c11f6515b2fcd351640096524fbb0f2`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acb6a757bef0f41e9cc77ba19ca634f34592e0d88c8e44054247f3521e2f4cf`  
		Last Modified: Thu, 13 Dec 2018 15:24:30 GMT  
		Size: 2.5 MB (2460307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137a6b9face2bd7baf74630ee77382191b8e8f0133a99f38c937f1c634337ee6`  
		Last Modified: Thu, 13 Dec 2018 15:25:02 GMT  
		Size: 112.9 MB (112943246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b325df5428ce838d7369ebe597f0baab0754f660333c3e1981679085af0b96`  
		Last Modified: Thu, 13 Dec 2018 15:24:29 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; 386

```console
$ docker pull redmine@sha256:0fbd9781a75e993bdf0dca6da91a8323d929764e150453b68cd2ddfb49e87f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296590263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759c8fe2987aa6b0b38baa377ffb416beb988a9dd51455f83832ac866a78d9a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:11:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:11:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 17 Nov 2018 17:25:01 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 17 Nov 2018 17:25:02 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:11:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:15:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:15:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:15:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:15:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:15:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:15:32 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:49:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:50:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:50:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:50:17 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:50:17 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:50:17 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:50:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:50:18 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 14:50:18 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 14:50:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:53:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:53:26 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:53:26 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:53:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:53:26 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:53:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc717430864199fb47be80c1037bfd90f9a61a6ae28675cd0e0b4121af5008a4`  
		Last Modified: Sat, 17 Nov 2018 17:57:13 GMT  
		Size: 16.3 MB (16278299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0821f2ab769a687f1181a37080505f80c76a2f7c36a30dca9f5ba88e060ece25`  
		Last Modified: Sat, 17 Nov 2018 17:57:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f4728f6d19b1a9d0bd94b0344e163a7b0d3018391a2801c34dbc1e74d8a4e`  
		Last Modified: Thu, 13 Dec 2018 14:11:27 GMT  
		Size: 23.4 MB (23396304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4f4300240ec44925badbfcfdb6871da2ecc37561ea1460e175a81a0c12a058`  
		Last Modified: Thu, 13 Dec 2018 14:11:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52460a0a44247e4f02cb3df865d5730849d7a02bbf4f715e3d7dc1834b04c3c`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8954ea60cef2bd8382586ec7331111f394b354af5cd29dcba981725b80f480b2`  
		Last Modified: Thu, 13 Dec 2018 15:00:20 GMT  
		Size: 90.0 MB (89973248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73767212a3d7c7fe0a1bddf076867f263a19475d27650c789eb55bfc5c53ba2`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 1.3 MB (1271895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7479e028d5067eaac80b56bc2450e62fc26360d9cbf138fdcadd9965e7d58333`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eab4bd1b288f9eb252a6d038689e201470b659b531a9a8604872e920526888`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37397869d09b53c63255897a1b56d05f403967fe5c0b31085cfd4e650d004fc`  
		Last Modified: Thu, 13 Dec 2018 14:59:54 GMT  
		Size: 2.5 MB (2460305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544d696f8d6f87013a9688f0d1bf17c93ad286e550845b32e7e37ba8b233eb90`  
		Last Modified: Thu, 13 Dec 2018 15:00:20 GMT  
		Size: 117.2 MB (117150578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929a282f2b4ebef62cf4283a571b1392479f0711ef901afd82dd47235e402947`  
		Last Modified: Thu, 13 Dec 2018 14:59:53 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:be1287ec162adc143af667e0fde78e217e4f54e901d004c8b06beb2e56b3f16e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287952709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da8ac3d7cfa90b27e82735f0c82e348372d866205eba471e0a4ecf20e7fdd0a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:08:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 21:08:37 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 21:08:37 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 21:08:38 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:57:09 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 11:06:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 11:06:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 11:06:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 11:06:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 11:06:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 11:06:16 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 12:48:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 12:50:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 12:50:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:50:55 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 12:50:56 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 12:50:57 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 12:51:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 12:51:05 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 12:51:06 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 12:51:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 12:59:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:59:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 12:59:32 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 12:59:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 12:59:34 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 12:59:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527e263c25afab370e6ed0ae56e66cdd3e4cd9057e8cef998923a7c43e6f0099`  
		Last Modified: Thu, 13 Dec 2018 12:06:27 GMT  
		Size: 23.9 MB (23890227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31679a418886d62e08eac3d0d042b2a16ff90abaa16a9188d7cc59b087df5b4`  
		Last Modified: Thu, 13 Dec 2018 12:06:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d90e522243170aae0a6127dca0ee5dd2e44e9b1a449e720b64a687d4462f46f`  
		Last Modified: Thu, 13 Dec 2018 13:14:19 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87ed01af5d2715446cfe8684b0d27f964457ec788f1cc2e11b764c8d0569055`  
		Last Modified: Thu, 13 Dec 2018 13:15:00 GMT  
		Size: 87.2 MB (87237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175078096576b23ed9dde2df28f34add62f2a8ddbbc7674bb88f655fcd0102e6`  
		Last Modified: Thu, 13 Dec 2018 13:14:20 GMT  
		Size: 1.2 MB (1228513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef34adbdbef0228abfe09c6a173b3d44961216c4c4bf1cc223d47d1f995fc2e2`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427bfbee1e57ca6c50c5661998b103fe7471feafb951524a6bdff2f16c98144a`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2711862cd1a84b82818ae393378764fd21a5fb25c08a3cac30aadce706cf54e4`  
		Last Modified: Thu, 13 Dec 2018 13:14:21 GMT  
		Size: 2.5 MB (2460815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff30b1353f66c83575bbaf6b8e19957d40fe73d1c8fd6554fa7e2f9b55401ff`  
		Last Modified: Thu, 13 Dec 2018 13:15:15 GMT  
		Size: 115.3 MB (115293075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2927e5d90281c9f953ef320063d0aee4754c1281845dd09cfe79cee1688aa10`  
		Last Modified: Thu, 13 Dec 2018 13:14:16 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; s390x

```console
$ docker pull redmine@sha256:e8ea2616f92f37e5407e6d50c62217a9e209ed9c99916ca56ec528c3c40a6a67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288324215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a77b9bcb1ced7de34cd84784232481f593bfe824d2b39fc608c37ad717b63c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:37:43 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 21:37:44 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:32:42 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:35:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:35:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:35:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:35:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:35:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:35:49 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:22:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:22:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:23:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:23:02 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:23:03 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:23:03 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:23:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:23:04 GMT
ENV REDMINE_VERSION=3.4.7
# Thu, 13 Dec 2018 15:23:04 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Thu, 13 Dec 2018 15:23:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:26:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:26:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:26:30 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:26:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:26:31 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:26:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1913f309a1b216bfb7dd8c19a6a273e8e5f3cddad623301514830f38cc326a8`  
		Last Modified: Thu, 13 Dec 2018 14:58:55 GMT  
		Size: 24.1 MB (24063735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d49d2e0dd6155d813a8e7a30fcc61cea412bd88ab96107b31e7bb052bc7125`  
		Last Modified: Thu, 13 Dec 2018 14:58:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe248502217ea22b8ef58ebfb658e70bda7e60ffc113b89d0aed509dfea1dec`  
		Last Modified: Thu, 13 Dec 2018 15:32:14 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1571a5f1c0fafddce725b522569a0e1d86dc0b8eefb2708a61d3e2892892908`  
		Last Modified: Thu, 13 Dec 2018 15:32:32 GMT  
		Size: 87.9 MB (87865471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2811e0c92538f859881c8550e6d367ed59bbb12fe5995fe870c929a58962e02`  
		Last Modified: Thu, 13 Dec 2018 15:32:14 GMT  
		Size: 1.3 MB (1294274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fab8247792572c99efeafec2da3f4d61db6290f8df3b77da0d4ab5dfbb293b`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2cfaed39a2dedf29d027a741106c2260b1078f9b593ee709731bc0e24a50d56`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b697fae1dd069095b39034321e15edb8169d5c22b68abde84c82fe96d0d0a751`  
		Last Modified: Thu, 13 Dec 2018 15:32:13 GMT  
		Size: 2.5 MB (2460288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8f9a3e7070786fd431091f4a0a655a98576b65e4f83065b1463e629c307d15`  
		Last Modified: Thu, 13 Dec 2018 15:32:31 GMT  
		Size: 114.2 MB (114192490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a681f4d90887b8dfb62e6f9b9d4e3b25af2e63ffcc0bbdbb37f13e29c8106d86`  
		Last Modified: Thu, 13 Dec 2018 15:32:12 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.7-passenger`

```console
$ docker pull redmine@sha256:bfde29f0e0a8ba7356c7a1cca559532b1278a389277616ebc8c9083abfa1ad75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d468e3c1bc66c47bbeabe192cff73799b6d402cddf1906a539d0b1f06cb09a1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316190821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f0c3ce17782d87812244ab30b2a11b30a2e878c307ed2a93121a9f44d90f1f`
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
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Wed, 26 Dec 2018 09:18:51 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:18:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:23:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:23:48 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:43:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:44:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:44:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:44:28 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:44:28 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:44:28 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:44:29 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 26 Dec 2018 10:44:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:47:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:47:26 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:47:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:47:26 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:47:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:47:39 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:47:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:54 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:47:54 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:47:54 GMT
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
	-	`sha256:59bcf0835b69cca98c815d418b46ef7071872cf8f060b0f5bd61b4701114c0a2`  
		Last Modified: Wed, 26 Dec 2018 10:12:23 GMT  
		Size: 23.7 MB (23700739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b3898e920a1d29ae65a591ee3c9a532f58f4f05e100870bcfe6742d5cf998a`  
		Last Modified: Wed, 26 Dec 2018 10:12:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae2df96a993fdfe5a1d18bd6a208d6d5d0a981b971b5ba6b00f2dbc8922e653`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eb4bb1c9e1567831de44c3354f79987a6aa5bc862dcd1a96311444dc759051`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 88.1 MB (88050958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b417bb333024ba227eac56afda877abde9a49c3f8b3198a2fe31eda1f32c31b2`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.3 MB (1304387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886400734ef0692f3b594d3163effe3892a222ecfe481e515e88125c636cc28`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27490c72329f80a43c0b7efcb378f1cb29dbf2836a96becfb0b55f11665e411`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e67c4b2095565be23626dc83618606cd75eb53922e0349b56258623baac23`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68023dbb3a1ea3098d62e09424f7a2b5e027d37aedda52e6196f4deaac19b506`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 118.8 MB (118783244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2020982382817f4c6fee3b88be0cf6a99b00c7313cc77831ba69753b2e743`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0612f6de9fc9b53e372fdacb3dbc5bd1da73740b528107e4267c0e7cdf8a44`  
		Last Modified: Wed, 26 Dec 2018 10:53:29 GMT  
		Size: 19.3 MB (19251350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff649b987ea279ccdaf5b7ee0b51ff21c55132ee0a732b9433482fe3979c4e1`  
		Last Modified: Wed, 26 Dec 2018 10:53:26 GMT  
		Size: 4.5 MB (4479122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:bfde29f0e0a8ba7356c7a1cca559532b1278a389277616ebc8c9083abfa1ad75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d468e3c1bc66c47bbeabe192cff73799b6d402cddf1906a539d0b1f06cb09a1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316190821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f0c3ce17782d87812244ab30b2a11b30a2e878c307ed2a93121a9f44d90f1f`
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
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Wed, 26 Dec 2018 09:18:51 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:18:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:23:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:23:48 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:43:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:44:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:44:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:44:28 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:44:28 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:44:28 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:44:29 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 26 Dec 2018 10:44:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:47:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:47:26 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:47:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:47:26 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:47:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:47:39 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:47:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:54 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:47:54 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:47:54 GMT
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
	-	`sha256:59bcf0835b69cca98c815d418b46ef7071872cf8f060b0f5bd61b4701114c0a2`  
		Last Modified: Wed, 26 Dec 2018 10:12:23 GMT  
		Size: 23.7 MB (23700739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b3898e920a1d29ae65a591ee3c9a532f58f4f05e100870bcfe6742d5cf998a`  
		Last Modified: Wed, 26 Dec 2018 10:12:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae2df96a993fdfe5a1d18bd6a208d6d5d0a981b971b5ba6b00f2dbc8922e653`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eb4bb1c9e1567831de44c3354f79987a6aa5bc862dcd1a96311444dc759051`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 88.1 MB (88050958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b417bb333024ba227eac56afda877abde9a49c3f8b3198a2fe31eda1f32c31b2`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.3 MB (1304387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886400734ef0692f3b594d3163effe3892a222ecfe481e515e88125c636cc28`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27490c72329f80a43c0b7efcb378f1cb29dbf2836a96becfb0b55f11665e411`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e67c4b2095565be23626dc83618606cd75eb53922e0349b56258623baac23`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68023dbb3a1ea3098d62e09424f7a2b5e027d37aedda52e6196f4deaac19b506`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 118.8 MB (118783244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2020982382817f4c6fee3b88be0cf6a99b00c7313cc77831ba69753b2e743`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0612f6de9fc9b53e372fdacb3dbc5bd1da73740b528107e4267c0e7cdf8a44`  
		Last Modified: Wed, 26 Dec 2018 10:53:29 GMT  
		Size: 19.3 MB (19251350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff649b987ea279ccdaf5b7ee0b51ff21c55132ee0a732b9433482fe3979c4e1`  
		Last Modified: Wed, 26 Dec 2018 10:53:26 GMT  
		Size: 4.5 MB (4479122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:bfde29f0e0a8ba7356c7a1cca559532b1278a389277616ebc8c9083abfa1ad75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d468e3c1bc66c47bbeabe192cff73799b6d402cddf1906a539d0b1f06cb09a1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316190821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f0c3ce17782d87812244ab30b2a11b30a2e878c307ed2a93121a9f44d90f1f`
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
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Wed, 26 Dec 2018 09:18:51 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:18:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:23:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:23:48 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:43:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:44:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:44:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:44:28 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:44:28 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:44:28 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:44:29 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 26 Dec 2018 10:44:29 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 26 Dec 2018 10:44:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:47:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:47:26 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:47:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:47:26 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:47:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:47:39 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:47:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:47:54 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:47:54 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:47:54 GMT
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
	-	`sha256:59bcf0835b69cca98c815d418b46ef7071872cf8f060b0f5bd61b4701114c0a2`  
		Last Modified: Wed, 26 Dec 2018 10:12:23 GMT  
		Size: 23.7 MB (23700739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b3898e920a1d29ae65a591ee3c9a532f58f4f05e100870bcfe6742d5cf998a`  
		Last Modified: Wed, 26 Dec 2018 10:12:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae2df96a993fdfe5a1d18bd6a208d6d5d0a981b971b5ba6b00f2dbc8922e653`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eb4bb1c9e1567831de44c3354f79987a6aa5bc862dcd1a96311444dc759051`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 88.1 MB (88050958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b417bb333024ba227eac56afda877abde9a49c3f8b3198a2fe31eda1f32c31b2`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 1.3 MB (1304387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886400734ef0692f3b594d3163effe3892a222ecfe481e515e88125c636cc28`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27490c72329f80a43c0b7efcb378f1cb29dbf2836a96becfb0b55f11665e411`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e67c4b2095565be23626dc83618606cd75eb53922e0349b56258623baac23`  
		Last Modified: Wed, 26 Dec 2018 10:53:03 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68023dbb3a1ea3098d62e09424f7a2b5e027d37aedda52e6196f4deaac19b506`  
		Last Modified: Wed, 26 Dec 2018 10:53:20 GMT  
		Size: 118.8 MB (118783244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2020982382817f4c6fee3b88be0cf6a99b00c7313cc77831ba69753b2e743`  
		Last Modified: Wed, 26 Dec 2018 10:53:02 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0612f6de9fc9b53e372fdacb3dbc5bd1da73740b528107e4267c0e7cdf8a44`  
		Last Modified: Wed, 26 Dec 2018 10:53:29 GMT  
		Size: 19.3 MB (19251350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff649b987ea279ccdaf5b7ee0b51ff21c55132ee0a732b9433482fe3979c4e1`  
		Last Modified: Wed, 26 Dec 2018 10:53:26 GMT  
		Size: 4.5 MB (4479122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4`

```console
$ docker pull redmine@sha256:ddb7fd0fc6bfb3a4149b1110059d216e8c790d038c757e837d95bfa350754eff
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
$ docker pull redmine@sha256:e9822a8943dd606e4d8d8254199b423693df1535e741aa0a7b4e128e05aaa0ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.8 MB (291806070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bdc4865663aef6eafd7add8a26383c851289d5d35155cfcb4acdaf1e95cd67`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 26 Dec 2018 09:04:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:04:24 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:07:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:07:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:07:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:07:31 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:39:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:39:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:39:45 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:39:46 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:39:46 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:39:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 26 Dec 2018 10:39:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:43:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:43:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:43:31 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6a28ffcd8a1b587ca45379697b8c2f22ac6755050a3a730ee821c8ef8c41fbd1`  
		Last Modified: Wed, 26 Dec 2018 10:11:28 GMT  
		Size: 24.0 MB (24044062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca036eb9de4dc605256a66beb4bb9c2bef9237766d54fd1a231ec6fdce1ff`  
		Last Modified: Wed, 26 Dec 2018 10:11:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a30caae2aab355b9d5fd30d6f80b04cfdb2816abd01b6154ebbb59c58aa4a`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f9c19860489760e5ea88e0ad49d863345593567d2d6e9b74e3888b15396f32`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 88.1 MB (88051071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d788ab0ba4527839fc557cba68de8c8b969cde44801a210b1ef8bfed0e07bca`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.3 MB (1304370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a269baee68ba72b33f66dd03c29752024e453a5fef2a11b1b18ea7481d0f0f16`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70baeab3614b898634654837a28a6fc6d96a9c8dd232a11c464c4163b28ec585`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c813d73ed9851e4a03057fe44917ea93d37ec339f651ac35d8b18a0b0d501e8`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a79784780788cfddc11f3daf7fb0eb6e062c87e9a40f1dd8d418c26301eeb7`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 117.7 MB (117720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cd6ff28f136a81b0fdd6f8cf08f5568530e1450194c00054605153dba0bd6`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96ed036caf24a99061995f9ca28640d2486198570e1ca17518430ff5d6d19fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (279969628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a58b0af6db4fee4c04bba962165859eada33d8227c48d7664bffc2467bf6e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:27:46 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:27:48 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:09:49 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:12:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:12:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:12:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:13:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:13:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:13:04 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:23:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:24:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:24:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:24:59 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:25:00 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:25:00 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:25:01 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:25:01 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 11:25:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 11:25:07 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:30:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:30:57 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:30:57 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:30:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf44d7657c7cc879bdbdbbdf0e85bdc0c98fea2007bd5447c79254a82930827`  
		Last Modified: Thu, 13 Dec 2018 11:02:38 GMT  
		Size: 23.5 MB (23526486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4450c4c415b6099a82f6a3f57dd5da329de5db99a796b93d7b9e2c94ffc6be1d`  
		Last Modified: Thu, 13 Dec 2018 11:02:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea441703113b9a52538e3d02a6be2f597bbb40974c05dc5db2180d34355a2c9c`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489c625a92e5246de5dc03157e0a093ca006a09677daba65145cabda1d7daaa5`  
		Last Modified: Thu, 13 Dec 2018 11:46:09 GMT  
		Size: 85.0 MB (84973982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbfea246c1be84431aaec9ba5e8e4e873dea49e0b0d627842843d4080cf92c3`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.3 MB (1262227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4147df56299483665a6b48e099fa3b02979ba8eb3482fc05fa18f27b7d14ac`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc63730e79da0065461dc21b0fca96608681d730d5ccb4c92f97529435c11c72`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d17a8db592ed02b928dc53a5664ceb2087ff637f9961d25512768d6f90a748`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 2.5 MB (2525680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a968753f4c451f4f0a22f4b68a0220286896a9272831447398d5a3362c829c19`  
		Last Modified: Thu, 13 Dec 2018 11:46:11 GMT  
		Size: 112.2 MB (112244741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8b3792191b5d7ce574bd117ea626f4db17149539d75893ba1da7863549ab2`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ca2572b5abc31f85edb85f72e8518d3f6c80cf193b28ac1fc66ca5fb08abbfaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272522887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbee1d3f779b6f3da9f38d75d9fc4bc06ccdab6bc0c1de2c384863cf05aa0adc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:52:15 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:52:17 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:16:19 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:19:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:19:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:19:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:19:27 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:26:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:27:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:27:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:27:22 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:27:22 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:27:23 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:27:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:27:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:32:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:32:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:32:43 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:32:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:32:43 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:32:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fad563177e0e7a9de51f575fb604236f999d635ba8b5df4676651a98bfebb9`  
		Last Modified: Thu, 13 Dec 2018 14:04:58 GMT  
		Size: 23.2 MB (23207285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ec4ecc413e758aaaca6a9f519386f60d0200d809d8b423c5860e68e0fc4deb`  
		Last Modified: Thu, 13 Dec 2018 14:04:52 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63463a7fd56485a7da3c3d70d13623711b6f3a115777decc0718527f74968f16`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9974567f419700114e7e8f27eb429258ecd5e607cf297f55fded870718eaaf3a`  
		Last Modified: Thu, 13 Dec 2018 14:46:35 GMT  
		Size: 81.8 MB (81782508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5179f62153f16aabb03e61c5c7f59ad982c853296d711bcae162134fed3c3223`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.3 MB (1254781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a2cc07c25d373bb2bc04958a9105eddec51f8ad9f73f90bf303b23ade94e7b`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa0b3e14d64ed9786c4c7161517bae06ec24446ebfaf2227aff7addbbe23eaf`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71debc8f504f4b414eb2b8f59621a75c0c7bbed81f6d4c91beca1e0a8d5546e2`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ca111fd525890f5ee79f798c5b0062ad73b95f2e7a489c0518a094537d4a8d`  
		Last Modified: Thu, 13 Dec 2018 14:46:37 GMT  
		Size: 110.8 MB (110751600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92114f3a6d485857366d286bd3f3e8ab7fde3d9345ada208c170d0594526a8ab`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:64148ffdc19311b4dfdae21fa9237bbf7e968feac42f8772fc71569b4833e562
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277989148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa62b8727d27b15b66f50c7704b25287a724c2dfcb7c0d3b5b38b18b379e2b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 06:46:34 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 06:46:36 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 06:46:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 06:46:42 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:18:25 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 12:24:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 12:24:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 12:24:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 12:24:54 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:36:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:38:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:38:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:38:33 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:38:34 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:38:37 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:38:39 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:38:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:50:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:50:01 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:50:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:50:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6d34b79aad5c5403c7b8598759ae54f55dff68ed37d85ede113229df5314b7`  
		Last Modified: Thu, 13 Dec 2018 13:39:22 GMT  
		Size: 23.7 MB (23674903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a717b18e961247443aab4bb7992ffa6240ae5f73b0fc7cb01b28762b8d0fdb48`  
		Last Modified: Thu, 13 Dec 2018 13:39:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99622da14767beda9cc160ebb5810a68a6d30f9e80369e41e74a05a2ab5caae`  
		Last Modified: Thu, 13 Dec 2018 15:23:02 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75b285aae4cc94ba97041198281945eefd5805a50ab5194a1fdf18a440a7017`  
		Last Modified: Thu, 13 Dec 2018 15:23:29 GMT  
		Size: 83.9 MB (83915266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967c7b3242636d4c0b420171cd6f4a32fe8ef499afbaa0a5343ddc56c9b4bd79`  
		Last Modified: Thu, 13 Dec 2018 15:23:01 GMT  
		Size: 1.2 MB (1239755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3972c4fecdd2a49d924039455810ed98aec5ea705dc5a20b9bbc153b1230a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dfd245faf2f152248da9ab92cd80ca711f0f9f2ba99aed116812e6a521c3a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54d0214e037cc91064a76e74dcb19e67e40b0fea6c3d95d2ef003b10587cbc3`  
		Last Modified: Thu, 13 Dec 2018 15:23:00 GMT  
		Size: 2.5 MB (2525139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61655527d24b898df77d6bd33adbe88608a325d00283fd52d737089c9e18a61e`  
		Last Modified: Thu, 13 Dec 2018 15:23:33 GMT  
		Size: 111.9 MB (111868980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a71da171501c6a1e2862026475bbdf317333717cdf515419991edede4264d`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; 386

```console
$ docker pull redmine@sha256:986178284b5b1a7dba1af372026492b98dad5da02b43a9e9158f13f0e32a0f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46ab353867379bdae632752bbda76e3c20a2e9932a9ca05e24c25a665f795cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:11:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:11:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:57:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:00:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:00:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:00:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:00:52 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:44:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:45:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:45:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:45:13 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:45:13 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:45:13 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:45:14 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:45:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:49:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:49:09 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:49:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:49:09 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:49:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc717430864199fb47be80c1037bfd90f9a61a6ae28675cd0e0b4121af5008a4`  
		Last Modified: Sat, 17 Nov 2018 17:57:13 GMT  
		Size: 16.3 MB (16278299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0821f2ab769a687f1181a37080505f80c76a2f7c36a30dca9f5ba88e060ece25`  
		Last Modified: Sat, 17 Nov 2018 17:57:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a252e3ca2aedf3ea8b5f388cb67b4cbce004b23eca2bb87c81b2f9fa7d0a63`  
		Last Modified: Thu, 13 Dec 2018 14:04:49 GMT  
		Size: 23.7 MB (23721454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2330d1d38b8926af398bad52a6916688a3d60472635612d4934f0810a5d78b8`  
		Last Modified: Thu, 13 Dec 2018 14:04:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e85f27648beeb995a8c86ecddd1c37cd487899979472317a916980d5122643c`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c846caed100bd4f9cdf33f759a049b0fc64b4ef413d4feebe0bc2b9240df4c51`  
		Last Modified: Thu, 13 Dec 2018 14:58:44 GMT  
		Size: 90.0 MB (89972602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f9de1b416c7fddeba6d4eeb13735799435d8b6e3db90dd89716e33ef2e98d`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.3 MB (1271819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a0f287c05e133a9d546d50a106504426c7d079e3e627eee369aeea39295a4`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2abb3bc83b4bcbe9c0dadeb6bbcf866f0d75f60c22ba189ed0d3dd23ef5ba7a`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512f8f00fcaca90eb6c10c2768a783233c69f975bdf5f5907f820fb6fac34de`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 2.5 MB (2525122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a356977a904d770a03f09fee8bf08db0cb864043a29706d3634cb36d69a33`  
		Last Modified: Thu, 13 Dec 2018 14:58:43 GMT  
		Size: 116.0 MB (116008396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b475109f4db5d85602ef231ffe44acafdf0dfac76f1bdfdb18cf419901d3068`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; ppc64le

```console
$ docker pull redmine@sha256:25e22f93b7fd5f30f3e42b7072282bd80b50854caa2b521b5474c2063dc6bee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287375544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5b4b55d84fcdba5d01fbf80dba8fac096156cadd6ac70fc48b0dcff9cece4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:56:47 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 20:56:48 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 20:56:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 20:56:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:33:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:42:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:42:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:42:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:42:24 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 12:36:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 12:38:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 12:39:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:39:06 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 12:39:08 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 12:39:09 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 12:39:12 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 12:39:13 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 12:39:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 12:39:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 12:46:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:46:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 12:47:00 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 12:47:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 12:47:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 12:47:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5846ed8f262ab23d2df653482b537bca9eb45e067ee109456a979da8b9d67a`  
		Last Modified: Thu, 13 Dec 2018 11:55:28 GMT  
		Size: 24.2 MB (24234985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f98165d5570072f4b3bf5365d5fccd19e21b9b356e94cc491cea62206fb8629`  
		Last Modified: Thu, 13 Dec 2018 11:55:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43971b5a149e23e0fe1c40ffd13edc51d352a19e2baf07858149bc5cd41f3c66`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebfdfd2730ac7edecb43d4fe24af1e5c033c711c37f8a9a554377c719fbdcee`  
		Last Modified: Thu, 13 Dec 2018 13:12:06 GMT  
		Size: 87.2 MB (87237569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e454daaf93493f5804b0c1d15c21b730fd9db5b89041d97894feb95618df6`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.2 MB (1228676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ecf97db10781263212c5aca36aa75f63409c81b910ae3dd7458fa92aa48a3a`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca5ff5b22a8428380cade4ca9535bf9ed3678aae282ef1d0aa154c2cd0fe9e`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a22d774dc517840eb04f097eefa05b53d98effcf54bb9ab6beef31570b272b`  
		Last Modified: Thu, 13 Dec 2018 13:11:25 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806b43f2cdbc294eeb82a97d5b5c153433e19c213ad87783d9aefb816acd5769`  
		Last Modified: Thu, 13 Dec 2018 13:12:21 GMT  
		Size: 114.3 MB (114306131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e0898c522e49793f5e8c746fa637eeafe1140ca0241b9f13642bbff9b3009`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; s390x

```console
$ docker pull redmine@sha256:487ae83438d5892a5aa38b87522db39a8da748e229244468691ff5a93818a11e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287916296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6672245fb9ac8e1584d8fa2f902757f783b9072c64ffb6bcac15c2c16eb6bd5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:29:49 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:22:21 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:24:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:24:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:24:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:24:41 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:17:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:18:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:18:17 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:18:18 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:18:18 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 15:18:19 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 15:18:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:21:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:21:49 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:21:49 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:21:50 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:21:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8803b59820e93756506c8c480d132ae91f291e0cc9aa8fcdb86d6655caae8403`  
		Last Modified: Thu, 13 Dec 2018 14:56:38 GMT  
		Size: 24.4 MB (24428061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35094ff05630f399d5225297b69ebfb4cbe22484d68d8cb513a8a3493c7912d`  
		Last Modified: Thu, 13 Dec 2018 14:56:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7088676c7604f48f48c30493ef4fd44fd72bb04465b94b7c5869e9564c291e62`  
		Last Modified: Thu, 13 Dec 2018 15:31:21 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd62532cce8446a18af451eca663e98ee38f4acfbe0277eaadff123fb816f1cb`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 87.9 MB (87866164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca3dc966b4af5c8954fdf2108ffec441cc9679efb58a0885aa06576798cc45e`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 1.3 MB (1294219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c510ade567bdbf834b73517ffabf6b5ff08dd80363339c202b132d702ca86e8`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88e026c3188264108c1ede69d435ca7a9ed4ff74f6d4d67b755c0bc355e79d2`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15f9983ffd6e59003386a4f40e9a099c09f75036c597d911edbb7fef783a27f`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 2.5 MB (2525134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f37a95be24419842491d4060e5c5a830f0282d1652d0ca48773a400f6c959e`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 113.4 MB (113354754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed05fa81cd296a9a2b5c1eca8aa564078edd3a26f02e3234390b36899359068b`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0`

```console
$ docker pull redmine@sha256:ddb7fd0fc6bfb3a4149b1110059d216e8c790d038c757e837d95bfa350754eff
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
$ docker pull redmine@sha256:e9822a8943dd606e4d8d8254199b423693df1535e741aa0a7b4e128e05aaa0ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.8 MB (291806070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bdc4865663aef6eafd7add8a26383c851289d5d35155cfcb4acdaf1e95cd67`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 26 Dec 2018 09:04:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:04:24 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:07:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:07:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:07:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:07:31 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:39:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:39:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:39:45 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:39:46 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:39:46 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:39:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 26 Dec 2018 10:39:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:43:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:43:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:43:31 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6a28ffcd8a1b587ca45379697b8c2f22ac6755050a3a730ee821c8ef8c41fbd1`  
		Last Modified: Wed, 26 Dec 2018 10:11:28 GMT  
		Size: 24.0 MB (24044062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca036eb9de4dc605256a66beb4bb9c2bef9237766d54fd1a231ec6fdce1ff`  
		Last Modified: Wed, 26 Dec 2018 10:11:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a30caae2aab355b9d5fd30d6f80b04cfdb2816abd01b6154ebbb59c58aa4a`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f9c19860489760e5ea88e0ad49d863345593567d2d6e9b74e3888b15396f32`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 88.1 MB (88051071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d788ab0ba4527839fc557cba68de8c8b969cde44801a210b1ef8bfed0e07bca`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.3 MB (1304370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a269baee68ba72b33f66dd03c29752024e453a5fef2a11b1b18ea7481d0f0f16`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70baeab3614b898634654837a28a6fc6d96a9c8dd232a11c464c4163b28ec585`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c813d73ed9851e4a03057fe44917ea93d37ec339f651ac35d8b18a0b0d501e8`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a79784780788cfddc11f3daf7fb0eb6e062c87e9a40f1dd8d418c26301eeb7`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 117.7 MB (117720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cd6ff28f136a81b0fdd6f8cf08f5568530e1450194c00054605153dba0bd6`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96ed036caf24a99061995f9ca28640d2486198570e1ca17518430ff5d6d19fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (279969628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a58b0af6db4fee4c04bba962165859eada33d8227c48d7664bffc2467bf6e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:27:46 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:27:48 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:09:49 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:12:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:12:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:12:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:13:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:13:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:13:04 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:23:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:24:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:24:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:24:59 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:25:00 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:25:00 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:25:01 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:25:01 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 11:25:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 11:25:07 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:30:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:30:57 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:30:57 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:30:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf44d7657c7cc879bdbdbbdf0e85bdc0c98fea2007bd5447c79254a82930827`  
		Last Modified: Thu, 13 Dec 2018 11:02:38 GMT  
		Size: 23.5 MB (23526486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4450c4c415b6099a82f6a3f57dd5da329de5db99a796b93d7b9e2c94ffc6be1d`  
		Last Modified: Thu, 13 Dec 2018 11:02:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea441703113b9a52538e3d02a6be2f597bbb40974c05dc5db2180d34355a2c9c`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489c625a92e5246de5dc03157e0a093ca006a09677daba65145cabda1d7daaa5`  
		Last Modified: Thu, 13 Dec 2018 11:46:09 GMT  
		Size: 85.0 MB (84973982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbfea246c1be84431aaec9ba5e8e4e873dea49e0b0d627842843d4080cf92c3`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.3 MB (1262227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4147df56299483665a6b48e099fa3b02979ba8eb3482fc05fa18f27b7d14ac`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc63730e79da0065461dc21b0fca96608681d730d5ccb4c92f97529435c11c72`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d17a8db592ed02b928dc53a5664ceb2087ff637f9961d25512768d6f90a748`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 2.5 MB (2525680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a968753f4c451f4f0a22f4b68a0220286896a9272831447398d5a3362c829c19`  
		Last Modified: Thu, 13 Dec 2018 11:46:11 GMT  
		Size: 112.2 MB (112244741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8b3792191b5d7ce574bd117ea626f4db17149539d75893ba1da7863549ab2`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ca2572b5abc31f85edb85f72e8518d3f6c80cf193b28ac1fc66ca5fb08abbfaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272522887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbee1d3f779b6f3da9f38d75d9fc4bc06ccdab6bc0c1de2c384863cf05aa0adc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:52:15 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:52:17 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:16:19 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:19:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:19:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:19:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:19:27 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:26:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:27:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:27:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:27:22 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:27:22 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:27:23 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:27:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:27:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:32:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:32:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:32:43 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:32:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:32:43 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:32:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fad563177e0e7a9de51f575fb604236f999d635ba8b5df4676651a98bfebb9`  
		Last Modified: Thu, 13 Dec 2018 14:04:58 GMT  
		Size: 23.2 MB (23207285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ec4ecc413e758aaaca6a9f519386f60d0200d809d8b423c5860e68e0fc4deb`  
		Last Modified: Thu, 13 Dec 2018 14:04:52 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63463a7fd56485a7da3c3d70d13623711b6f3a115777decc0718527f74968f16`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9974567f419700114e7e8f27eb429258ecd5e607cf297f55fded870718eaaf3a`  
		Last Modified: Thu, 13 Dec 2018 14:46:35 GMT  
		Size: 81.8 MB (81782508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5179f62153f16aabb03e61c5c7f59ad982c853296d711bcae162134fed3c3223`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.3 MB (1254781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a2cc07c25d373bb2bc04958a9105eddec51f8ad9f73f90bf303b23ade94e7b`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa0b3e14d64ed9786c4c7161517bae06ec24446ebfaf2227aff7addbbe23eaf`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71debc8f504f4b414eb2b8f59621a75c0c7bbed81f6d4c91beca1e0a8d5546e2`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ca111fd525890f5ee79f798c5b0062ad73b95f2e7a489c0518a094537d4a8d`  
		Last Modified: Thu, 13 Dec 2018 14:46:37 GMT  
		Size: 110.8 MB (110751600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92114f3a6d485857366d286bd3f3e8ab7fde3d9345ada208c170d0594526a8ab`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:64148ffdc19311b4dfdae21fa9237bbf7e968feac42f8772fc71569b4833e562
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277989148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa62b8727d27b15b66f50c7704b25287a724c2dfcb7c0d3b5b38b18b379e2b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 06:46:34 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 06:46:36 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 06:46:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 06:46:42 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:18:25 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 12:24:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 12:24:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 12:24:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 12:24:54 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:36:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:38:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:38:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:38:33 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:38:34 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:38:37 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:38:39 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:38:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:50:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:50:01 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:50:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:50:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6d34b79aad5c5403c7b8598759ae54f55dff68ed37d85ede113229df5314b7`  
		Last Modified: Thu, 13 Dec 2018 13:39:22 GMT  
		Size: 23.7 MB (23674903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a717b18e961247443aab4bb7992ffa6240ae5f73b0fc7cb01b28762b8d0fdb48`  
		Last Modified: Thu, 13 Dec 2018 13:39:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99622da14767beda9cc160ebb5810a68a6d30f9e80369e41e74a05a2ab5caae`  
		Last Modified: Thu, 13 Dec 2018 15:23:02 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75b285aae4cc94ba97041198281945eefd5805a50ab5194a1fdf18a440a7017`  
		Last Modified: Thu, 13 Dec 2018 15:23:29 GMT  
		Size: 83.9 MB (83915266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967c7b3242636d4c0b420171cd6f4a32fe8ef499afbaa0a5343ddc56c9b4bd79`  
		Last Modified: Thu, 13 Dec 2018 15:23:01 GMT  
		Size: 1.2 MB (1239755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3972c4fecdd2a49d924039455810ed98aec5ea705dc5a20b9bbc153b1230a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dfd245faf2f152248da9ab92cd80ca711f0f9f2ba99aed116812e6a521c3a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54d0214e037cc91064a76e74dcb19e67e40b0fea6c3d95d2ef003b10587cbc3`  
		Last Modified: Thu, 13 Dec 2018 15:23:00 GMT  
		Size: 2.5 MB (2525139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61655527d24b898df77d6bd33adbe88608a325d00283fd52d737089c9e18a61e`  
		Last Modified: Thu, 13 Dec 2018 15:23:33 GMT  
		Size: 111.9 MB (111868980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a71da171501c6a1e2862026475bbdf317333717cdf515419991edede4264d`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; 386

```console
$ docker pull redmine@sha256:986178284b5b1a7dba1af372026492b98dad5da02b43a9e9158f13f0e32a0f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46ab353867379bdae632752bbda76e3c20a2e9932a9ca05e24c25a665f795cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:11:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:11:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:57:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:00:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:00:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:00:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:00:52 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:44:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:45:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:45:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:45:13 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:45:13 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:45:13 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:45:14 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:45:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:49:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:49:09 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:49:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:49:09 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:49:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc717430864199fb47be80c1037bfd90f9a61a6ae28675cd0e0b4121af5008a4`  
		Last Modified: Sat, 17 Nov 2018 17:57:13 GMT  
		Size: 16.3 MB (16278299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0821f2ab769a687f1181a37080505f80c76a2f7c36a30dca9f5ba88e060ece25`  
		Last Modified: Sat, 17 Nov 2018 17:57:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a252e3ca2aedf3ea8b5f388cb67b4cbce004b23eca2bb87c81b2f9fa7d0a63`  
		Last Modified: Thu, 13 Dec 2018 14:04:49 GMT  
		Size: 23.7 MB (23721454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2330d1d38b8926af398bad52a6916688a3d60472635612d4934f0810a5d78b8`  
		Last Modified: Thu, 13 Dec 2018 14:04:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e85f27648beeb995a8c86ecddd1c37cd487899979472317a916980d5122643c`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c846caed100bd4f9cdf33f759a049b0fc64b4ef413d4feebe0bc2b9240df4c51`  
		Last Modified: Thu, 13 Dec 2018 14:58:44 GMT  
		Size: 90.0 MB (89972602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f9de1b416c7fddeba6d4eeb13735799435d8b6e3db90dd89716e33ef2e98d`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.3 MB (1271819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a0f287c05e133a9d546d50a106504426c7d079e3e627eee369aeea39295a4`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2abb3bc83b4bcbe9c0dadeb6bbcf866f0d75f60c22ba189ed0d3dd23ef5ba7a`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512f8f00fcaca90eb6c10c2768a783233c69f975bdf5f5907f820fb6fac34de`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 2.5 MB (2525122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a356977a904d770a03f09fee8bf08db0cb864043a29706d3634cb36d69a33`  
		Last Modified: Thu, 13 Dec 2018 14:58:43 GMT  
		Size: 116.0 MB (116008396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b475109f4db5d85602ef231ffe44acafdf0dfac76f1bdfdb18cf419901d3068`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; ppc64le

```console
$ docker pull redmine@sha256:25e22f93b7fd5f30f3e42b7072282bd80b50854caa2b521b5474c2063dc6bee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287375544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5b4b55d84fcdba5d01fbf80dba8fac096156cadd6ac70fc48b0dcff9cece4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:56:47 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 20:56:48 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 20:56:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 20:56:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:33:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:42:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:42:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:42:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:42:24 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 12:36:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 12:38:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 12:39:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:39:06 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 12:39:08 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 12:39:09 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 12:39:12 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 12:39:13 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 12:39:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 12:39:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 12:46:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:46:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 12:47:00 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 12:47:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 12:47:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 12:47:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5846ed8f262ab23d2df653482b537bca9eb45e067ee109456a979da8b9d67a`  
		Last Modified: Thu, 13 Dec 2018 11:55:28 GMT  
		Size: 24.2 MB (24234985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f98165d5570072f4b3bf5365d5fccd19e21b9b356e94cc491cea62206fb8629`  
		Last Modified: Thu, 13 Dec 2018 11:55:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43971b5a149e23e0fe1c40ffd13edc51d352a19e2baf07858149bc5cd41f3c66`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebfdfd2730ac7edecb43d4fe24af1e5c033c711c37f8a9a554377c719fbdcee`  
		Last Modified: Thu, 13 Dec 2018 13:12:06 GMT  
		Size: 87.2 MB (87237569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e454daaf93493f5804b0c1d15c21b730fd9db5b89041d97894feb95618df6`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.2 MB (1228676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ecf97db10781263212c5aca36aa75f63409c81b910ae3dd7458fa92aa48a3a`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca5ff5b22a8428380cade4ca9535bf9ed3678aae282ef1d0aa154c2cd0fe9e`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a22d774dc517840eb04f097eefa05b53d98effcf54bb9ab6beef31570b272b`  
		Last Modified: Thu, 13 Dec 2018 13:11:25 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806b43f2cdbc294eeb82a97d5b5c153433e19c213ad87783d9aefb816acd5769`  
		Last Modified: Thu, 13 Dec 2018 13:12:21 GMT  
		Size: 114.3 MB (114306131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e0898c522e49793f5e8c746fa637eeafe1140ca0241b9f13642bbff9b3009`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; s390x

```console
$ docker pull redmine@sha256:487ae83438d5892a5aa38b87522db39a8da748e229244468691ff5a93818a11e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287916296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6672245fb9ac8e1584d8fa2f902757f783b9072c64ffb6bcac15c2c16eb6bd5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:29:49 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:22:21 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:24:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:24:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:24:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:24:41 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:17:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:18:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:18:17 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:18:18 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:18:18 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 15:18:19 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 15:18:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:21:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:21:49 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:21:49 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:21:50 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:21:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8803b59820e93756506c8c480d132ae91f291e0cc9aa8fcdb86d6655caae8403`  
		Last Modified: Thu, 13 Dec 2018 14:56:38 GMT  
		Size: 24.4 MB (24428061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35094ff05630f399d5225297b69ebfb4cbe22484d68d8cb513a8a3493c7912d`  
		Last Modified: Thu, 13 Dec 2018 14:56:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7088676c7604f48f48c30493ef4fd44fd72bb04465b94b7c5869e9564c291e62`  
		Last Modified: Thu, 13 Dec 2018 15:31:21 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd62532cce8446a18af451eca663e98ee38f4acfbe0277eaadff123fb816f1cb`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 87.9 MB (87866164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca3dc966b4af5c8954fdf2108ffec441cc9679efb58a0885aa06576798cc45e`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 1.3 MB (1294219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c510ade567bdbf834b73517ffabf6b5ff08dd80363339c202b132d702ca86e8`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88e026c3188264108c1ede69d435ca7a9ed4ff74f6d4d67b755c0bc355e79d2`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15f9983ffd6e59003386a4f40e9a099c09f75036c597d911edbb7fef783a27f`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 2.5 MB (2525134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f37a95be24419842491d4060e5c5a830f0282d1652d0ca48773a400f6c959e`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 113.4 MB (113354754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed05fa81cd296a9a2b5c1eca8aa564078edd3a26f02e3234390b36899359068b`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.0`

```console
$ docker pull redmine@sha256:ddb7fd0fc6bfb3a4149b1110059d216e8c790d038c757e837d95bfa350754eff
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

### `redmine:4.0.0` - linux; amd64

```console
$ docker pull redmine@sha256:e9822a8943dd606e4d8d8254199b423693df1535e741aa0a7b4e128e05aaa0ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.8 MB (291806070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bdc4865663aef6eafd7add8a26383c851289d5d35155cfcb4acdaf1e95cd67`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 26 Dec 2018 09:04:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:04:24 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:07:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:07:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:07:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:07:31 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:39:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:39:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:39:45 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:39:46 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:39:46 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:39:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 26 Dec 2018 10:39:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:43:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:43:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:43:31 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6a28ffcd8a1b587ca45379697b8c2f22ac6755050a3a730ee821c8ef8c41fbd1`  
		Last Modified: Wed, 26 Dec 2018 10:11:28 GMT  
		Size: 24.0 MB (24044062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca036eb9de4dc605256a66beb4bb9c2bef9237766d54fd1a231ec6fdce1ff`  
		Last Modified: Wed, 26 Dec 2018 10:11:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a30caae2aab355b9d5fd30d6f80b04cfdb2816abd01b6154ebbb59c58aa4a`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f9c19860489760e5ea88e0ad49d863345593567d2d6e9b74e3888b15396f32`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 88.1 MB (88051071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d788ab0ba4527839fc557cba68de8c8b969cde44801a210b1ef8bfed0e07bca`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.3 MB (1304370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a269baee68ba72b33f66dd03c29752024e453a5fef2a11b1b18ea7481d0f0f16`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70baeab3614b898634654837a28a6fc6d96a9c8dd232a11c464c4163b28ec585`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c813d73ed9851e4a03057fe44917ea93d37ec339f651ac35d8b18a0b0d501e8`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a79784780788cfddc11f3daf7fb0eb6e062c87e9a40f1dd8d418c26301eeb7`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 117.7 MB (117720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cd6ff28f136a81b0fdd6f8cf08f5568530e1450194c00054605153dba0bd6`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96ed036caf24a99061995f9ca28640d2486198570e1ca17518430ff5d6d19fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (279969628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a58b0af6db4fee4c04bba962165859eada33d8227c48d7664bffc2467bf6e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:27:46 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:27:48 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:09:49 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:12:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:12:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:12:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:13:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:13:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:13:04 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:23:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:24:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:24:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:24:59 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:25:00 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:25:00 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:25:01 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:25:01 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 11:25:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 11:25:07 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:30:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:30:57 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:30:57 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:30:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf44d7657c7cc879bdbdbbdf0e85bdc0c98fea2007bd5447c79254a82930827`  
		Last Modified: Thu, 13 Dec 2018 11:02:38 GMT  
		Size: 23.5 MB (23526486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4450c4c415b6099a82f6a3f57dd5da329de5db99a796b93d7b9e2c94ffc6be1d`  
		Last Modified: Thu, 13 Dec 2018 11:02:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea441703113b9a52538e3d02a6be2f597bbb40974c05dc5db2180d34355a2c9c`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489c625a92e5246de5dc03157e0a093ca006a09677daba65145cabda1d7daaa5`  
		Last Modified: Thu, 13 Dec 2018 11:46:09 GMT  
		Size: 85.0 MB (84973982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbfea246c1be84431aaec9ba5e8e4e873dea49e0b0d627842843d4080cf92c3`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.3 MB (1262227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4147df56299483665a6b48e099fa3b02979ba8eb3482fc05fa18f27b7d14ac`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc63730e79da0065461dc21b0fca96608681d730d5ccb4c92f97529435c11c72`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d17a8db592ed02b928dc53a5664ceb2087ff637f9961d25512768d6f90a748`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 2.5 MB (2525680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a968753f4c451f4f0a22f4b68a0220286896a9272831447398d5a3362c829c19`  
		Last Modified: Thu, 13 Dec 2018 11:46:11 GMT  
		Size: 112.2 MB (112244741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8b3792191b5d7ce574bd117ea626f4db17149539d75893ba1da7863549ab2`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ca2572b5abc31f85edb85f72e8518d3f6c80cf193b28ac1fc66ca5fb08abbfaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272522887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbee1d3f779b6f3da9f38d75d9fc4bc06ccdab6bc0c1de2c384863cf05aa0adc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:52:15 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:52:17 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:16:19 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:19:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:19:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:19:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:19:27 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:26:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:27:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:27:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:27:22 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:27:22 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:27:23 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:27:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:27:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:32:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:32:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:32:43 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:32:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:32:43 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:32:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fad563177e0e7a9de51f575fb604236f999d635ba8b5df4676651a98bfebb9`  
		Last Modified: Thu, 13 Dec 2018 14:04:58 GMT  
		Size: 23.2 MB (23207285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ec4ecc413e758aaaca6a9f519386f60d0200d809d8b423c5860e68e0fc4deb`  
		Last Modified: Thu, 13 Dec 2018 14:04:52 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63463a7fd56485a7da3c3d70d13623711b6f3a115777decc0718527f74968f16`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9974567f419700114e7e8f27eb429258ecd5e607cf297f55fded870718eaaf3a`  
		Last Modified: Thu, 13 Dec 2018 14:46:35 GMT  
		Size: 81.8 MB (81782508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5179f62153f16aabb03e61c5c7f59ad982c853296d711bcae162134fed3c3223`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.3 MB (1254781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a2cc07c25d373bb2bc04958a9105eddec51f8ad9f73f90bf303b23ade94e7b`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa0b3e14d64ed9786c4c7161517bae06ec24446ebfaf2227aff7addbbe23eaf`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71debc8f504f4b414eb2b8f59621a75c0c7bbed81f6d4c91beca1e0a8d5546e2`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ca111fd525890f5ee79f798c5b0062ad73b95f2e7a489c0518a094537d4a8d`  
		Last Modified: Thu, 13 Dec 2018 14:46:37 GMT  
		Size: 110.8 MB (110751600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92114f3a6d485857366d286bd3f3e8ab7fde3d9345ada208c170d0594526a8ab`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:64148ffdc19311b4dfdae21fa9237bbf7e968feac42f8772fc71569b4833e562
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277989148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa62b8727d27b15b66f50c7704b25287a724c2dfcb7c0d3b5b38b18b379e2b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 06:46:34 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 06:46:36 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 06:46:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 06:46:42 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:18:25 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 12:24:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 12:24:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 12:24:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 12:24:54 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:36:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:38:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:38:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:38:33 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:38:34 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:38:37 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:38:39 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:38:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:50:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:50:01 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:50:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:50:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6d34b79aad5c5403c7b8598759ae54f55dff68ed37d85ede113229df5314b7`  
		Last Modified: Thu, 13 Dec 2018 13:39:22 GMT  
		Size: 23.7 MB (23674903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a717b18e961247443aab4bb7992ffa6240ae5f73b0fc7cb01b28762b8d0fdb48`  
		Last Modified: Thu, 13 Dec 2018 13:39:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99622da14767beda9cc160ebb5810a68a6d30f9e80369e41e74a05a2ab5caae`  
		Last Modified: Thu, 13 Dec 2018 15:23:02 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75b285aae4cc94ba97041198281945eefd5805a50ab5194a1fdf18a440a7017`  
		Last Modified: Thu, 13 Dec 2018 15:23:29 GMT  
		Size: 83.9 MB (83915266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967c7b3242636d4c0b420171cd6f4a32fe8ef499afbaa0a5343ddc56c9b4bd79`  
		Last Modified: Thu, 13 Dec 2018 15:23:01 GMT  
		Size: 1.2 MB (1239755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3972c4fecdd2a49d924039455810ed98aec5ea705dc5a20b9bbc153b1230a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dfd245faf2f152248da9ab92cd80ca711f0f9f2ba99aed116812e6a521c3a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54d0214e037cc91064a76e74dcb19e67e40b0fea6c3d95d2ef003b10587cbc3`  
		Last Modified: Thu, 13 Dec 2018 15:23:00 GMT  
		Size: 2.5 MB (2525139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61655527d24b898df77d6bd33adbe88608a325d00283fd52d737089c9e18a61e`  
		Last Modified: Thu, 13 Dec 2018 15:23:33 GMT  
		Size: 111.9 MB (111868980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a71da171501c6a1e2862026475bbdf317333717cdf515419991edede4264d`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; 386

```console
$ docker pull redmine@sha256:986178284b5b1a7dba1af372026492b98dad5da02b43a9e9158f13f0e32a0f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46ab353867379bdae632752bbda76e3c20a2e9932a9ca05e24c25a665f795cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:11:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:11:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:57:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:00:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:00:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:00:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:00:52 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:44:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:45:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:45:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:45:13 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:45:13 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:45:13 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:45:14 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:45:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:49:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:49:09 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:49:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:49:09 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:49:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc717430864199fb47be80c1037bfd90f9a61a6ae28675cd0e0b4121af5008a4`  
		Last Modified: Sat, 17 Nov 2018 17:57:13 GMT  
		Size: 16.3 MB (16278299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0821f2ab769a687f1181a37080505f80c76a2f7c36a30dca9f5ba88e060ece25`  
		Last Modified: Sat, 17 Nov 2018 17:57:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a252e3ca2aedf3ea8b5f388cb67b4cbce004b23eca2bb87c81b2f9fa7d0a63`  
		Last Modified: Thu, 13 Dec 2018 14:04:49 GMT  
		Size: 23.7 MB (23721454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2330d1d38b8926af398bad52a6916688a3d60472635612d4934f0810a5d78b8`  
		Last Modified: Thu, 13 Dec 2018 14:04:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e85f27648beeb995a8c86ecddd1c37cd487899979472317a916980d5122643c`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c846caed100bd4f9cdf33f759a049b0fc64b4ef413d4feebe0bc2b9240df4c51`  
		Last Modified: Thu, 13 Dec 2018 14:58:44 GMT  
		Size: 90.0 MB (89972602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f9de1b416c7fddeba6d4eeb13735799435d8b6e3db90dd89716e33ef2e98d`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.3 MB (1271819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a0f287c05e133a9d546d50a106504426c7d079e3e627eee369aeea39295a4`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2abb3bc83b4bcbe9c0dadeb6bbcf866f0d75f60c22ba189ed0d3dd23ef5ba7a`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512f8f00fcaca90eb6c10c2768a783233c69f975bdf5f5907f820fb6fac34de`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 2.5 MB (2525122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a356977a904d770a03f09fee8bf08db0cb864043a29706d3634cb36d69a33`  
		Last Modified: Thu, 13 Dec 2018 14:58:43 GMT  
		Size: 116.0 MB (116008396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b475109f4db5d85602ef231ffe44acafdf0dfac76f1bdfdb18cf419901d3068`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; ppc64le

```console
$ docker pull redmine@sha256:25e22f93b7fd5f30f3e42b7072282bd80b50854caa2b521b5474c2063dc6bee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287375544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5b4b55d84fcdba5d01fbf80dba8fac096156cadd6ac70fc48b0dcff9cece4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:56:47 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 20:56:48 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 20:56:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 20:56:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:33:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:42:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:42:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:42:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:42:24 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 12:36:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 12:38:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 12:39:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:39:06 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 12:39:08 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 12:39:09 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 12:39:12 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 12:39:13 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 12:39:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 12:39:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 12:46:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:46:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 12:47:00 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 12:47:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 12:47:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 12:47:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5846ed8f262ab23d2df653482b537bca9eb45e067ee109456a979da8b9d67a`  
		Last Modified: Thu, 13 Dec 2018 11:55:28 GMT  
		Size: 24.2 MB (24234985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f98165d5570072f4b3bf5365d5fccd19e21b9b356e94cc491cea62206fb8629`  
		Last Modified: Thu, 13 Dec 2018 11:55:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43971b5a149e23e0fe1c40ffd13edc51d352a19e2baf07858149bc5cd41f3c66`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebfdfd2730ac7edecb43d4fe24af1e5c033c711c37f8a9a554377c719fbdcee`  
		Last Modified: Thu, 13 Dec 2018 13:12:06 GMT  
		Size: 87.2 MB (87237569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e454daaf93493f5804b0c1d15c21b730fd9db5b89041d97894feb95618df6`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.2 MB (1228676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ecf97db10781263212c5aca36aa75f63409c81b910ae3dd7458fa92aa48a3a`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca5ff5b22a8428380cade4ca9535bf9ed3678aae282ef1d0aa154c2cd0fe9e`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a22d774dc517840eb04f097eefa05b53d98effcf54bb9ab6beef31570b272b`  
		Last Modified: Thu, 13 Dec 2018 13:11:25 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806b43f2cdbc294eeb82a97d5b5c153433e19c213ad87783d9aefb816acd5769`  
		Last Modified: Thu, 13 Dec 2018 13:12:21 GMT  
		Size: 114.3 MB (114306131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e0898c522e49793f5e8c746fa637eeafe1140ca0241b9f13642bbff9b3009`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; s390x

```console
$ docker pull redmine@sha256:487ae83438d5892a5aa38b87522db39a8da748e229244468691ff5a93818a11e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287916296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6672245fb9ac8e1584d8fa2f902757f783b9072c64ffb6bcac15c2c16eb6bd5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:29:49 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:22:21 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:24:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:24:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:24:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:24:41 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:17:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:18:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:18:17 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:18:18 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:18:18 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 15:18:19 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 15:18:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:21:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:21:49 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:21:49 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:21:50 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:21:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8803b59820e93756506c8c480d132ae91f291e0cc9aa8fcdb86d6655caae8403`  
		Last Modified: Thu, 13 Dec 2018 14:56:38 GMT  
		Size: 24.4 MB (24428061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35094ff05630f399d5225297b69ebfb4cbe22484d68d8cb513a8a3493c7912d`  
		Last Modified: Thu, 13 Dec 2018 14:56:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7088676c7604f48f48c30493ef4fd44fd72bb04465b94b7c5869e9564c291e62`  
		Last Modified: Thu, 13 Dec 2018 15:31:21 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd62532cce8446a18af451eca663e98ee38f4acfbe0277eaadff123fb816f1cb`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 87.9 MB (87866164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca3dc966b4af5c8954fdf2108ffec441cc9679efb58a0885aa06576798cc45e`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 1.3 MB (1294219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c510ade567bdbf834b73517ffabf6b5ff08dd80363339c202b132d702ca86e8`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88e026c3188264108c1ede69d435ca7a9ed4ff74f6d4d67b755c0bc355e79d2`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15f9983ffd6e59003386a4f40e9a099c09f75036c597d911edbb7fef783a27f`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 2.5 MB (2525134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f37a95be24419842491d4060e5c5a830f0282d1652d0ca48773a400f6c959e`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 113.4 MB (113354754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed05fa81cd296a9a2b5c1eca8aa564078edd3a26f02e3234390b36899359068b`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.0-passenger`

```console
$ docker pull redmine@sha256:abb1c88930906e17fabf4c36b731b29a59fee95fb1839f28e0c6761ef0ab0ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0.0-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:07c6b923c90a3ec20700e43e7e7666cbb715feccb7f32af403f7785099d19179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315537319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bab60c2bee45636ce7dcae3e7991f5d6c48c957776cdd834941c2808649de7e`
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
# Wed, 26 Dec 2018 09:04:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:04:24 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:07:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:07:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:07:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:07:31 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:39:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:39:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:39:45 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:39:46 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:39:46 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:39:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 26 Dec 2018 10:39:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:43:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:43:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:43:31 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:43:35 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:43:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:50 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:43:51 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:43:51 GMT
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
	-	`sha256:6a28ffcd8a1b587ca45379697b8c2f22ac6755050a3a730ee821c8ef8c41fbd1`  
		Last Modified: Wed, 26 Dec 2018 10:11:28 GMT  
		Size: 24.0 MB (24044062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca036eb9de4dc605256a66beb4bb9c2bef9237766d54fd1a231ec6fdce1ff`  
		Last Modified: Wed, 26 Dec 2018 10:11:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a30caae2aab355b9d5fd30d6f80b04cfdb2816abd01b6154ebbb59c58aa4a`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f9c19860489760e5ea88e0ad49d863345593567d2d6e9b74e3888b15396f32`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 88.1 MB (88051071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d788ab0ba4527839fc557cba68de8c8b969cde44801a210b1ef8bfed0e07bca`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.3 MB (1304370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a269baee68ba72b33f66dd03c29752024e453a5fef2a11b1b18ea7481d0f0f16`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70baeab3614b898634654837a28a6fc6d96a9c8dd232a11c464c4163b28ec585`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c813d73ed9851e4a03057fe44917ea93d37ec339f651ac35d8b18a0b0d501e8`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a79784780788cfddc11f3daf7fb0eb6e062c87e9a40f1dd8d418c26301eeb7`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 117.7 MB (117720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cd6ff28f136a81b0fdd6f8cf08f5568530e1450194c00054605153dba0bd6`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9e4d6d49cef9672e8de93f31f60e06d486fad8df6da9a868c05c91d01d698`  
		Last Modified: Wed, 26 Dec 2018 10:52:55 GMT  
		Size: 19.3 MB (19252126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210221fe98520861f48b5ac009c679ec9ddfc09eda3e757677fa7bccaacce291`  
		Last Modified: Wed, 26 Dec 2018 10:52:53 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0-passenger`

```console
$ docker pull redmine@sha256:abb1c88930906e17fabf4c36b731b29a59fee95fb1839f28e0c6761ef0ab0ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:07c6b923c90a3ec20700e43e7e7666cbb715feccb7f32af403f7785099d19179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315537319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bab60c2bee45636ce7dcae3e7991f5d6c48c957776cdd834941c2808649de7e`
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
# Wed, 26 Dec 2018 09:04:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:04:24 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:07:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:07:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:07:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:07:31 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:39:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:39:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:39:45 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:39:46 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:39:46 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:39:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 26 Dec 2018 10:39:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:43:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:43:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:43:31 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:43:35 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:43:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:50 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:43:51 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:43:51 GMT
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
	-	`sha256:6a28ffcd8a1b587ca45379697b8c2f22ac6755050a3a730ee821c8ef8c41fbd1`  
		Last Modified: Wed, 26 Dec 2018 10:11:28 GMT  
		Size: 24.0 MB (24044062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca036eb9de4dc605256a66beb4bb9c2bef9237766d54fd1a231ec6fdce1ff`  
		Last Modified: Wed, 26 Dec 2018 10:11:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a30caae2aab355b9d5fd30d6f80b04cfdb2816abd01b6154ebbb59c58aa4a`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f9c19860489760e5ea88e0ad49d863345593567d2d6e9b74e3888b15396f32`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 88.1 MB (88051071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d788ab0ba4527839fc557cba68de8c8b969cde44801a210b1ef8bfed0e07bca`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.3 MB (1304370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a269baee68ba72b33f66dd03c29752024e453a5fef2a11b1b18ea7481d0f0f16`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70baeab3614b898634654837a28a6fc6d96a9c8dd232a11c464c4163b28ec585`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c813d73ed9851e4a03057fe44917ea93d37ec339f651ac35d8b18a0b0d501e8`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a79784780788cfddc11f3daf7fb0eb6e062c87e9a40f1dd8d418c26301eeb7`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 117.7 MB (117720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cd6ff28f136a81b0fdd6f8cf08f5568530e1450194c00054605153dba0bd6`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9e4d6d49cef9672e8de93f31f60e06d486fad8df6da9a868c05c91d01d698`  
		Last Modified: Wed, 26 Dec 2018 10:52:55 GMT  
		Size: 19.3 MB (19252126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210221fe98520861f48b5ac009c679ec9ddfc09eda3e757677fa7bccaacce291`  
		Last Modified: Wed, 26 Dec 2018 10:52:53 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4-passenger`

```console
$ docker pull redmine@sha256:abb1c88930906e17fabf4c36b731b29a59fee95fb1839f28e0c6761ef0ab0ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:07c6b923c90a3ec20700e43e7e7666cbb715feccb7f32af403f7785099d19179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315537319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bab60c2bee45636ce7dcae3e7991f5d6c48c957776cdd834941c2808649de7e`
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
# Wed, 26 Dec 2018 09:04:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:04:24 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:07:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:07:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:07:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:07:31 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:39:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:39:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:39:45 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:39:46 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:39:46 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:39:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 26 Dec 2018 10:39:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:43:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:43:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:43:31 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:43:35 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:43:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:50 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:43:51 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:43:51 GMT
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
	-	`sha256:6a28ffcd8a1b587ca45379697b8c2f22ac6755050a3a730ee821c8ef8c41fbd1`  
		Last Modified: Wed, 26 Dec 2018 10:11:28 GMT  
		Size: 24.0 MB (24044062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca036eb9de4dc605256a66beb4bb9c2bef9237766d54fd1a231ec6fdce1ff`  
		Last Modified: Wed, 26 Dec 2018 10:11:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a30caae2aab355b9d5fd30d6f80b04cfdb2816abd01b6154ebbb59c58aa4a`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f9c19860489760e5ea88e0ad49d863345593567d2d6e9b74e3888b15396f32`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 88.1 MB (88051071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d788ab0ba4527839fc557cba68de8c8b969cde44801a210b1ef8bfed0e07bca`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.3 MB (1304370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a269baee68ba72b33f66dd03c29752024e453a5fef2a11b1b18ea7481d0f0f16`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70baeab3614b898634654837a28a6fc6d96a9c8dd232a11c464c4163b28ec585`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c813d73ed9851e4a03057fe44917ea93d37ec339f651ac35d8b18a0b0d501e8`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a79784780788cfddc11f3daf7fb0eb6e062c87e9a40f1dd8d418c26301eeb7`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 117.7 MB (117720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cd6ff28f136a81b0fdd6f8cf08f5568530e1450194c00054605153dba0bd6`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9e4d6d49cef9672e8de93f31f60e06d486fad8df6da9a868c05c91d01d698`  
		Last Modified: Wed, 26 Dec 2018 10:52:55 GMT  
		Size: 19.3 MB (19252126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210221fe98520861f48b5ac009c679ec9ddfc09eda3e757677fa7bccaacce291`  
		Last Modified: Wed, 26 Dec 2018 10:52:53 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:a0a8351e4e84b95a2540c9c249f3505b270c9b821614dfacdbf0e64781bbdd9a
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
$ docker pull redmine@sha256:9d344de1c386b7e2df75a317a0b709cba13c1a3361a71860f1502d301c6a09e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291713392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff33f12e8c071f4be47682f03b53fca2f651dbe77e0f0b65bea0dcd26b97539`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96ed036caf24a99061995f9ca28640d2486198570e1ca17518430ff5d6d19fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (279969628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a58b0af6db4fee4c04bba962165859eada33d8227c48d7664bffc2467bf6e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:27:46 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:27:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:27:48 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:09:49 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:12:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:12:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:12:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:13:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:13:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:13:04 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 11:23:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 11:24:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 11:24:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:24:59 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 11:25:00 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 11:25:00 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 11:25:01 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 11:25:01 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 11:25:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 11:25:07 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 11:30:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 11:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 11:30:57 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 11:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:30:57 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 11:30:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf44d7657c7cc879bdbdbbdf0e85bdc0c98fea2007bd5447c79254a82930827`  
		Last Modified: Thu, 13 Dec 2018 11:02:38 GMT  
		Size: 23.5 MB (23526486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4450c4c415b6099a82f6a3f57dd5da329de5db99a796b93d7b9e2c94ffc6be1d`  
		Last Modified: Thu, 13 Dec 2018 11:02:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea441703113b9a52538e3d02a6be2f597bbb40974c05dc5db2180d34355a2c9c`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489c625a92e5246de5dc03157e0a093ca006a09677daba65145cabda1d7daaa5`  
		Last Modified: Thu, 13 Dec 2018 11:46:09 GMT  
		Size: 85.0 MB (84973982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbfea246c1be84431aaec9ba5e8e4e873dea49e0b0d627842843d4080cf92c3`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 1.3 MB (1262227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4147df56299483665a6b48e099fa3b02979ba8eb3482fc05fa18f27b7d14ac`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc63730e79da0065461dc21b0fca96608681d730d5ccb4c92f97529435c11c72`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d17a8db592ed02b928dc53a5664ceb2087ff637f9961d25512768d6f90a748`  
		Last Modified: Thu, 13 Dec 2018 11:45:44 GMT  
		Size: 2.5 MB (2525680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a968753f4c451f4f0a22f4b68a0220286896a9272831447398d5a3362c829c19`  
		Last Modified: Thu, 13 Dec 2018 11:46:11 GMT  
		Size: 112.2 MB (112244741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8b3792191b5d7ce574bd117ea626f4db17149539d75893ba1da7863549ab2`  
		Last Modified: Thu, 13 Dec 2018 11:45:42 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ca2572b5abc31f85edb85f72e8518d3f6c80cf193b28ac1fc66ca5fb08abbfaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272522887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbee1d3f779b6f3da9f38d75d9fc4bc06ccdab6bc0c1de2c384863cf05aa0adc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:52:15 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 19:52:16 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 19:52:17 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 13:16:19 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:19:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:19:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:19:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:19:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:19:27 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:26:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:27:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:27:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:27:22 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:27:22 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:27:23 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:27:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:27:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:32:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:32:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:32:43 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:32:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:32:43 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:32:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fad563177e0e7a9de51f575fb604236f999d635ba8b5df4676651a98bfebb9`  
		Last Modified: Thu, 13 Dec 2018 14:04:58 GMT  
		Size: 23.2 MB (23207285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ec4ecc413e758aaaca6a9f519386f60d0200d809d8b423c5860e68e0fc4deb`  
		Last Modified: Thu, 13 Dec 2018 14:04:52 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63463a7fd56485a7da3c3d70d13623711b6f3a115777decc0718527f74968f16`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9974567f419700114e7e8f27eb429258ecd5e607cf297f55fded870718eaaf3a`  
		Last Modified: Thu, 13 Dec 2018 14:46:35 GMT  
		Size: 81.8 MB (81782508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5179f62153f16aabb03e61c5c7f59ad982c853296d711bcae162134fed3c3223`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 1.3 MB (1254781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a2cc07c25d373bb2bc04958a9105eddec51f8ad9f73f90bf303b23ade94e7b`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa0b3e14d64ed9786c4c7161517bae06ec24446ebfaf2227aff7addbbe23eaf`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71debc8f504f4b414eb2b8f59621a75c0c7bbed81f6d4c91beca1e0a8d5546e2`  
		Last Modified: Thu, 13 Dec 2018 14:46:12 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ca111fd525890f5ee79f798c5b0062ad73b95f2e7a489c0518a094537d4a8d`  
		Last Modified: Thu, 13 Dec 2018 14:46:37 GMT  
		Size: 110.8 MB (110751600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92114f3a6d485857366d286bd3f3e8ab7fde3d9345ada208c170d0594526a8ab`  
		Last Modified: Thu, 13 Dec 2018 14:46:10 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:64148ffdc19311b4dfdae21fa9237bbf7e968feac42f8772fc71569b4833e562
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277989148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa62b8727d27b15b66f50c7704b25287a724c2dfcb7c0d3b5b38b18b379e2b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 06:46:34 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 06:46:36 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 06:46:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 06:46:42 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:18:25 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 12:24:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 12:24:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 12:24:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 12:24:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 12:24:54 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:36:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:38:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:38:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:38:33 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:38:34 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:38:37 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:38:39 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:38:40 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:38:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:50:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:50:01 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:50:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:50:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6d34b79aad5c5403c7b8598759ae54f55dff68ed37d85ede113229df5314b7`  
		Last Modified: Thu, 13 Dec 2018 13:39:22 GMT  
		Size: 23.7 MB (23674903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a717b18e961247443aab4bb7992ffa6240ae5f73b0fc7cb01b28762b8d0fdb48`  
		Last Modified: Thu, 13 Dec 2018 13:39:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99622da14767beda9cc160ebb5810a68a6d30f9e80369e41e74a05a2ab5caae`  
		Last Modified: Thu, 13 Dec 2018 15:23:02 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75b285aae4cc94ba97041198281945eefd5805a50ab5194a1fdf18a440a7017`  
		Last Modified: Thu, 13 Dec 2018 15:23:29 GMT  
		Size: 83.9 MB (83915266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967c7b3242636d4c0b420171cd6f4a32fe8ef499afbaa0a5343ddc56c9b4bd79`  
		Last Modified: Thu, 13 Dec 2018 15:23:01 GMT  
		Size: 1.2 MB (1239755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3972c4fecdd2a49d924039455810ed98aec5ea705dc5a20b9bbc153b1230a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dfd245faf2f152248da9ab92cd80ca711f0f9f2ba99aed116812e6a521c3a7`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54d0214e037cc91064a76e74dcb19e67e40b0fea6c3d95d2ef003b10587cbc3`  
		Last Modified: Thu, 13 Dec 2018 15:23:00 GMT  
		Size: 2.5 MB (2525139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61655527d24b898df77d6bd33adbe88608a325d00283fd52d737089c9e18a61e`  
		Last Modified: Thu, 13 Dec 2018 15:23:33 GMT  
		Size: 111.9 MB (111868980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a71da171501c6a1e2862026475bbdf317333717cdf515419991edede4264d`  
		Last Modified: Thu, 13 Dec 2018 15:22:58 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:986178284b5b1a7dba1af372026492b98dad5da02b43a9e9158f13f0e32a0f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46ab353867379bdae632752bbda76e3c20a2e9932a9ca05e24c25a665f795cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 17:11:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:11:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Nov 2018 17:17:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 17 Nov 2018 17:17:34 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 12:57:54 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 13:00:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 13:00:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 13:00:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 13:00:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 13:00:52 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 14:44:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 14:45:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 14:45:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:45:13 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 14:45:13 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 14:45:13 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 14:45:14 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 14:45:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 14:45:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 14:49:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 14:49:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 14:49:09 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 14:49:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:49:09 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 14:49:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc717430864199fb47be80c1037bfd90f9a61a6ae28675cd0e0b4121af5008a4`  
		Last Modified: Sat, 17 Nov 2018 17:57:13 GMT  
		Size: 16.3 MB (16278299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0821f2ab769a687f1181a37080505f80c76a2f7c36a30dca9f5ba88e060ece25`  
		Last Modified: Sat, 17 Nov 2018 17:57:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a252e3ca2aedf3ea8b5f388cb67b4cbce004b23eca2bb87c81b2f9fa7d0a63`  
		Last Modified: Thu, 13 Dec 2018 14:04:49 GMT  
		Size: 23.7 MB (23721454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2330d1d38b8926af398bad52a6916688a3d60472635612d4934f0810a5d78b8`  
		Last Modified: Thu, 13 Dec 2018 14:04:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e85f27648beeb995a8c86ecddd1c37cd487899979472317a916980d5122643c`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c846caed100bd4f9cdf33f759a049b0fc64b4ef413d4feebe0bc2b9240df4c51`  
		Last Modified: Thu, 13 Dec 2018 14:58:44 GMT  
		Size: 90.0 MB (89972602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f9de1b416c7fddeba6d4eeb13735799435d8b6e3db90dd89716e33ef2e98d`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 1.3 MB (1271819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a0f287c05e133a9d546d50a106504426c7d079e3e627eee369aeea39295a4`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2abb3bc83b4bcbe9c0dadeb6bbcf866f0d75f60c22ba189ed0d3dd23ef5ba7a`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512f8f00fcaca90eb6c10c2768a783233c69f975bdf5f5907f820fb6fac34de`  
		Last Modified: Thu, 13 Dec 2018 14:58:18 GMT  
		Size: 2.5 MB (2525122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a356977a904d770a03f09fee8bf08db0cb864043a29706d3634cb36d69a33`  
		Last Modified: Thu, 13 Dec 2018 14:58:43 GMT  
		Size: 116.0 MB (116008396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b475109f4db5d85602ef231ffe44acafdf0dfac76f1bdfdb18cf419901d3068`  
		Last Modified: Thu, 13 Dec 2018 14:58:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:25e22f93b7fd5f30f3e42b7072282bd80b50854caa2b521b5474c2063dc6bee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287375544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5b4b55d84fcdba5d01fbf80dba8fac096156cadd6ac70fc48b0dcff9cece4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:56:47 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 20:56:48 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 20:56:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 20:56:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 10:33:51 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 10:42:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 10:42:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 10:42:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 10:42:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 10:42:24 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 12:36:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 12:38:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 12:39:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:39:06 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 12:39:08 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 12:39:09 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 12:39:12 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 12:39:13 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 12:39:14 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 12:39:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 12:46:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 12:46:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 12:47:00 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 12:47:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 12:47:02 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 12:47:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5846ed8f262ab23d2df653482b537bca9eb45e067ee109456a979da8b9d67a`  
		Last Modified: Thu, 13 Dec 2018 11:55:28 GMT  
		Size: 24.2 MB (24234985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f98165d5570072f4b3bf5365d5fccd19e21b9b356e94cc491cea62206fb8629`  
		Last Modified: Thu, 13 Dec 2018 11:55:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43971b5a149e23e0fe1c40ffd13edc51d352a19e2baf07858149bc5cd41f3c66`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebfdfd2730ac7edecb43d4fe24af1e5c033c711c37f8a9a554377c719fbdcee`  
		Last Modified: Thu, 13 Dec 2018 13:12:06 GMT  
		Size: 87.2 MB (87237569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e454daaf93493f5804b0c1d15c21b730fd9db5b89041d97894feb95618df6`  
		Last Modified: Thu, 13 Dec 2018 13:11:26 GMT  
		Size: 1.2 MB (1228676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ecf97db10781263212c5aca36aa75f63409c81b910ae3dd7458fa92aa48a3a`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca5ff5b22a8428380cade4ca9535bf9ed3678aae282ef1d0aa154c2cd0fe9e`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a22d774dc517840eb04f097eefa05b53d98effcf54bb9ab6beef31570b272b`  
		Last Modified: Thu, 13 Dec 2018 13:11:25 GMT  
		Size: 2.5 MB (2525679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806b43f2cdbc294eeb82a97d5b5c153433e19c213ad87783d9aefb816acd5769`  
		Last Modified: Thu, 13 Dec 2018 13:12:21 GMT  
		Size: 114.3 MB (114306131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e0898c522e49793f5e8c746fa637eeafe1140ca0241b9f13642bbff9b3009`  
		Last Modified: Thu, 13 Dec 2018 13:11:22 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:487ae83438d5892a5aa38b87522db39a8da748e229244468691ff5a93818a11e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287916296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6672245fb9ac8e1584d8fa2f902757f783b9072c64ffb6bcac15c2c16eb6bd5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:29:49 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 21:29:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Thu, 13 Dec 2018 14:22:21 GMT
ENV BUNDLER_VERSION=1.17.2
# Thu, 13 Dec 2018 14:24:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 13 Dec 2018 14:24:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 13 Dec 2018 14:24:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 14:24:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 13 Dec 2018 14:24:41 GMT
CMD ["irb"]
# Thu, 13 Dec 2018 15:17:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Dec 2018 15:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 15:18:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:18:17 GMT
ENV RAILS_ENV=production
# Thu, 13 Dec 2018 15:18:18 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
ENV HOME=/home/redmine
# Thu, 13 Dec 2018 15:18:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 13 Dec 2018 15:18:18 GMT
ENV REDMINE_VERSION=4.0.0
# Thu, 13 Dec 2018 15:18:19 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Thu, 13 Dec 2018 15:18:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 13 Dec 2018 15:21:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 13 Dec 2018 15:21:49 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Dec 2018 15:21:49 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Thu, 13 Dec 2018 15:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Dec 2018 15:21:50 GMT
EXPOSE 3000/tcp
# Thu, 13 Dec 2018 15:21:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8803b59820e93756506c8c480d132ae91f291e0cc9aa8fcdb86d6655caae8403`  
		Last Modified: Thu, 13 Dec 2018 14:56:38 GMT  
		Size: 24.4 MB (24428061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35094ff05630f399d5225297b69ebfb4cbe22484d68d8cb513a8a3493c7912d`  
		Last Modified: Thu, 13 Dec 2018 14:56:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7088676c7604f48f48c30493ef4fd44fd72bb04465b94b7c5869e9564c291e62`  
		Last Modified: Thu, 13 Dec 2018 15:31:21 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd62532cce8446a18af451eca663e98ee38f4acfbe0277eaadff123fb816f1cb`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 87.9 MB (87866164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca3dc966b4af5c8954fdf2108ffec441cc9679efb58a0885aa06576798cc45e`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 1.3 MB (1294219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c510ade567bdbf834b73517ffabf6b5ff08dd80363339c202b132d702ca86e8`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88e026c3188264108c1ede69d435ca7a9ed4ff74f6d4d67b755c0bc355e79d2`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15f9983ffd6e59003386a4f40e9a099c09f75036c597d911edbb7fef783a27f`  
		Last Modified: Thu, 13 Dec 2018 15:31:20 GMT  
		Size: 2.5 MB (2525134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f37a95be24419842491d4060e5c5a830f0282d1652d0ca48773a400f6c959e`  
		Last Modified: Thu, 13 Dec 2018 15:31:38 GMT  
		Size: 113.4 MB (113354754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed05fa81cd296a9a2b5c1eca8aa564078edd3a26f02e3234390b36899359068b`  
		Last Modified: Thu, 13 Dec 2018 15:31:19 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:abb1c88930906e17fabf4c36b731b29a59fee95fb1839f28e0c6761ef0ab0ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:07c6b923c90a3ec20700e43e7e7666cbb715feccb7f32af403f7785099d19179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315537319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bab60c2bee45636ce7dcae3e7991f5d6c48c957776cdd834941c2808649de7e`
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
# Wed, 26 Dec 2018 09:04:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 26 Dec 2018 09:04:24 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 26 Dec 2018 09:07:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 26 Dec 2018 09:07:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:07:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:07:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 26 Dec 2018 09:07:31 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 10:39:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 26 Dec 2018 10:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:39:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:39:45 GMT
ENV RAILS_ENV=production
# Wed, 26 Dec 2018 10:39:46 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Dec 2018 10:39:46 GMT
ENV HOME=/home/redmine
# Wed, 26 Dec 2018 10:39:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 26 Dec 2018 10:39:47 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 26 Dec 2018 10:39:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 26 Dec 2018 10:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Dec 2018 10:43:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 26 Dec 2018 10:43:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:43:31 GMT
EXPOSE 3000
# Wed, 26 Dec 2018 10:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Dec 2018 10:43:35 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 26 Dec 2018 10:43:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 26 Dec 2018 10:43:50 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 26 Dec 2018 10:43:51 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 26 Dec 2018 10:43:51 GMT
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
	-	`sha256:6a28ffcd8a1b587ca45379697b8c2f22ac6755050a3a730ee821c8ef8c41fbd1`  
		Last Modified: Wed, 26 Dec 2018 10:11:28 GMT  
		Size: 24.0 MB (24044062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca036eb9de4dc605256a66beb4bb9c2bef9237766d54fd1a231ec6fdce1ff`  
		Last Modified: Wed, 26 Dec 2018 10:11:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a30caae2aab355b9d5fd30d6f80b04cfdb2816abd01b6154ebbb59c58aa4a`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f9c19860489760e5ea88e0ad49d863345593567d2d6e9b74e3888b15396f32`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 88.1 MB (88051071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d788ab0ba4527839fc557cba68de8c8b969cde44801a210b1ef8bfed0e07bca`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 1.3 MB (1304370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a269baee68ba72b33f66dd03c29752024e453a5fef2a11b1b18ea7481d0f0f16`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70baeab3614b898634654837a28a6fc6d96a9c8dd232a11c464c4163b28ec585`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c813d73ed9851e4a03057fe44917ea93d37ec339f651ac35d8b18a0b0d501e8`  
		Last Modified: Wed, 26 Dec 2018 10:52:28 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a79784780788cfddc11f3daf7fb0eb6e062c87e9a40f1dd8d418c26301eeb7`  
		Last Modified: Wed, 26 Dec 2018 10:52:45 GMT  
		Size: 117.7 MB (117720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cd6ff28f136a81b0fdd6f8cf08f5568530e1450194c00054605153dba0bd6`  
		Last Modified: Wed, 26 Dec 2018 10:52:27 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9e4d6d49cef9672e8de93f31f60e06d486fad8df6da9a868c05c91d01d698`  
		Last Modified: Wed, 26 Dec 2018 10:52:55 GMT  
		Size: 19.3 MB (19252126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210221fe98520861f48b5ac009c679ec9ddfc09eda3e757677fa7bccaacce291`  
		Last Modified: Wed, 26 Dec 2018 10:52:53 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
