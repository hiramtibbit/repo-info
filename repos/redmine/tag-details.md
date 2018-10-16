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
$ docker pull redmine@sha256:cb1cf1d6fa1ad84cee555d992e3d8be64f23db0d24ac8d0923bd50cca9ae1500
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
$ docker pull redmine@sha256:83a6ca93b262df46f3c9167c116226a7d98af59763ff79528f62b24e0cea125a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296364809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a065bb4c54b69b66685aa90ee8fcf293651dbb8967df0ea411e59a8d04f97f`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:77a13f85209375c890d8588e8a897ff6b2205623afe19220a815516be3f09f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284821037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d9284730cafbd6ee43b19735581341ec61a394988d8663ca8fbb3c607751fc`
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
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 12:17:03 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 12:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 12:23:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 12:23:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 12:23:39 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:42:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:42:24 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:42:24 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:42:24 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:42:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:42:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:48:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:48:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:48:17 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:48:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:48:18 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:48:19 GMT
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
	-	`sha256:0e43d1625c0bc98a1bff830848eff67d6dfa2493f875fa1339ff2118da89b033`  
		Last Modified: Tue, 16 Oct 2018 12:37:34 GMT  
		Size: 21.3 MB (21314634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c830da8d606f28186c682490e0aca0eee0c119eb24990a4e16ab1e4c0bd018c3`  
		Last Modified: Tue, 16 Oct 2018 12:37:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0c6c5af44d80aaea2413cbd37ff11f7a105c44fd878f6ff4d3ff6492df1e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9065060727d5bf1804ac2ffda920702786fef3d52485ff1b02f3ddd32c3a2359`  
		Last Modified: Tue, 16 Oct 2018 16:56:13 GMT  
		Size: 85.0 MB (84956744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f0782a7e0d8a65c6b3187f2e1f8d4dda7f6f3b0be2e6c0b0e6cf0efba80e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 894.4 KB (894362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e3f53cd48c3cf26fc266057a1f8fae75b45a638faf7f78a5439eeeacb91c31`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d576e075ea939251e4c3cda207f11cf0d725e5948dc2db426b009cf7cf84bbf`  
		Last Modified: Tue, 16 Oct 2018 16:55:46 GMT  
		Size: 2.5 MB (2457568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d68e092b1120c37d59a66565ce330dcbec8e9cdc1ce08a56f006fc9fd0cabef`  
		Last Modified: Tue, 16 Oct 2018 16:56:26 GMT  
		Size: 119.8 MB (119783993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d958bbc46b7433ab73bcbfd2d369d6ff89d1abf058990961e8eb2417aa18690`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
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
$ docker pull redmine@sha256:6506006c6556e8384b42737cf1ae55285abb7bc6c47fb72788d6a6ca9f674e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c369733df43f401e93049208ce1c127e013d35643e88424eb945df644d786e8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 20:53:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 20:53:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 21:28:34 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 21:28:35 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:48:14 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:57:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:57:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:57:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:57:50 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:11:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 10:50:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:50:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 10:50:42 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 10:50:43 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 10:50:44 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 10:50:45 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 10:50:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 11:05:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:05:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 11:05:55 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 11:05:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:05:57 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 11:05:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f7bc060ae4ca5a83308cec3b78256601cb867f16286d3270ea3be4cb5e32c6`  
		Last Modified: Wed, 05 Sep 2018 22:04:39 GMT  
		Size: 11.6 MB (11620872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5105a1607b093d30d33a52fe846b34e088c1e0ed7a845f03b4ba713362903fab`  
		Last Modified: Wed, 05 Sep 2018 22:04:34 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bd64fb33b38d9d359b397dd596fb61a0a8ddf1547e9f345c47b044638575a`  
		Last Modified: Sat, 06 Oct 2018 10:49:34 GMT  
		Size: 21.5 MB (21523076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a307ab211f7133043aa5b23f3995cae692c65a0c68d89485ec1a0f390daeb83`  
		Last Modified: Sat, 06 Oct 2018 10:49:28 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f0fcd09de56a4c3453db73ff2a68b5536a25782ec3cd175a88f643c1f1e47b`  
		Last Modified: Sat, 06 Oct 2018 11:43:13 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c117839b6b7af9feb88a7244346946f31bd20b87851a848d9dfdcb5964579c`  
		Last Modified: Tue, 16 Oct 2018 11:25:43 GMT  
		Size: 83.9 MB (83916276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f921cecea2753d559e86053d8f83b7d6a32c7803193e524e3561ca728ad8e5`  
		Last Modified: Tue, 16 Oct 2018 11:24:40 GMT  
		Size: 872.6 KB (872569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be81f5f43a343ee7c529b9f81cc650c0710c3b73a379d056337dcfecb65ba608`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41214ee194ce1ee97f5718dfb6bf3fe104d509fb208e29c11e5465a06ce590`  
		Last Modified: Tue, 16 Oct 2018 11:24:43 GMT  
		Size: 2.5 MB (2456917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81572de9dea8d35ddc16393d9a28f93d2a73170005adca3683d3b20f6a08f51`  
		Last Modified: Tue, 16 Oct 2018 11:25:56 GMT  
		Size: 119.4 MB (119363264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acaa7d09138e56476058d19381aaaea5a37e97747949b21a90bb057129a012a`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:2ec348081a57eaf520bf340ac53c8bc0bc591b01087e444f92360895274ee92f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.0 MB (297026252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5387ca01bef54604342cfdc3d5321419021184098c06aa0f4145d3c99169707b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:55:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:55:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_MAJOR=2.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 11:03:40 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 11:07:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 11:07:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 11:07:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 11:07:28 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 12:11:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 06 Oct 2018 12:12:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Oct 2018 12:12:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:12:32 GMT
ENV RAILS_ENV=production
# Sat, 06 Oct 2018 12:12:32 GMT
WORKDIR /usr/src/redmine
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 06 Oct 2018 12:12:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 06 Oct 2018 12:15:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:15:53 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 06 Oct 2018 12:15:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Sat, 06 Oct 2018 12:15:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 06 Oct 2018 12:15:54 GMT
EXPOSE 3000/tcp
# Sat, 06 Oct 2018 12:15:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3d85fde24bfb0245f2a43404d56288b33ba975a1a87cae42b0cd8f08e91b96`  
		Last Modified: Fri, 07 Sep 2018 01:56:28 GMT  
		Size: 16.3 MB (16255376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685331cae9df59b39e8797434f4413bf03c8b8e09d668edbd32a38cf79f7ff46`  
		Last Modified: Fri, 07 Sep 2018 01:56:23 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4ffe75b402823cd16746621465e2655318cb1bcef5dcc6087dced3e0e54d6`  
		Last Modified: Sat, 06 Oct 2018 11:51:24 GMT  
		Size: 21.4 MB (21350911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570908abeb882db4910499e7179f34df24ca94759ffdb8f500ccbf29f4c82b72`  
		Last Modified: Sat, 06 Oct 2018 11:51:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287383ed84e70490d31723229a8689cd1214f15bff062c433c97d596823e002`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4780d486b91a6ccef4e60245c869aba95c9323ce460cccc4ba6b2b27b9c3e2`  
		Last Modified: Sat, 06 Oct 2018 12:20:35 GMT  
		Size: 86.6 MB (86567939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da917488874f70e76407642aefca3b5da3ea6dae377dac8330eef4d5c6af90e5`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 883.7 KB (883690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789e934d8efeb407831c83881ffc13a341ae96b6f8da15977496611d1c45758`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a076bd62a262f9bb376b03835f974910579b191f5e80b699128c333da85ebad`  
		Last Modified: Sat, 06 Oct 2018 12:20:10 GMT  
		Size: 2.5 MB (2456918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e92154b472e9b58c07e6846845f9c1d279e9f85aadf37225b47815ee2a711b`  
		Last Modified: Sat, 06 Oct 2018 12:20:37 GMT  
		Size: 123.5 MB (123468319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6abb61e643043fd2c24cecb2870c247e86f12d32b3efad3de8304596d4a8f3b`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:6892ff45dcb9d0d75ab232066fb93eb6ea2ff09631aa9ca844301481f6b05193
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291977725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d214f4875ef8ec7e50427669309e77b7bc9ad57e757c20f5c369415cee95b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:02:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:02:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 13:24:00 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 13:24:02 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 13:24:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 13:24:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:27:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:33:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:33:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:33:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:33:34 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 10:50:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 09:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:11:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:11:49 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 09:11:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 09:11:54 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 09:11:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 09:12:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 09:25:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:27:32 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 09:27:36 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 09:27:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:27:42 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 09:27:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ce7eeb3f20dac82cfd60f6ee035d1c1e6630ca4bcc7ed0882ad132b4e72569`  
		Last Modified: Wed, 05 Sep 2018 13:48:00 GMT  
		Size: 12.2 MB (12206980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920f97aa329fd29885e877803e1181aceefd2d4b7f5b71d0a1eb5493726795bd`  
		Last Modified: Wed, 05 Sep 2018 13:47:54 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94603b8ff472d7fea2a5ace1fdf980201a6faa3e270deae5699c608dfd94e385`  
		Last Modified: Sat, 06 Oct 2018 10:26:51 GMT  
		Size: 22.0 MB (21990355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86697fba25e0dacebc2a0103422b0a180acee48bf6574f145125c1960f2a6e35`  
		Last Modified: Sat, 06 Oct 2018 10:26:42 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d7cd611922fe8398f0ab7da73b3d8c6ced9be611039fc7bdf71b29630091d6`  
		Last Modified: Sat, 06 Oct 2018 11:19:27 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5eee7ebcf263b703947cd7458687e948b1f214b06b96643649fd85502833e78`  
		Last Modified: Tue, 16 Oct 2018 09:48:20 GMT  
		Size: 87.2 MB (87233459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a8b184efce8965a820c356405d7da1a9f9a3203a8867e6850d9eaacb2043b9`  
		Last Modified: Tue, 16 Oct 2018 09:47:29 GMT  
		Size: 873.3 KB (873263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b504aee92fdec3cc0f29e55de5b232a4b8daba66d02c1782c4b91c2a178432`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d972edec5c7839f675b30188a75f96fb4d4b54ea9949157d7c770bc3a08be`  
		Last Modified: Tue, 16 Oct 2018 09:47:33 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cfffcc2a95bd38b68eea55a0e3adcf0f06b370c8de1b838ded8fd7e928450`  
		Last Modified: Tue, 16 Oct 2018 09:48:36 GMT  
		Size: 121.6 MB (121616558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bd90752a7be0b4856732ad7ae4351bd049eac8b2834aa3b72b5c0e25ab6bbd`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 1.8 KB (1821 bytes)  
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
$ docker pull redmine@sha256:37c7a81114ad8c6918a57bfec0948b1e0defb6259e466d7a3913da448e8042c5
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
$ docker pull redmine@sha256:29e9f862a76cd3e600599f45ff08518f0a97520384998b1946c68ad9024bc290
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310030355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f0f2ebe60f3b93f807de4ca88b039996e4885d9b059bd85b7e2dbbf0ecfc1a`
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
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:17:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:17:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:17:04 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:39:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:40:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:40:05 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:40:05 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 07:40:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:43:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:43:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:43:46 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:43:47 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:43:47 GMT
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
	-	`sha256:2abe60c5ac8151f1d99b0999d6a1deacb6f5f589accf2cd457fc3c03dd32a615`  
		Last Modified: Tue, 16 Oct 2018 00:28:02 GMT  
		Size: 34.6 MB (34563694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b3e1a0598685091348767e1ff3eac42a4066da6a64ba172e7e67cd28f5b594`  
		Last Modified: Tue, 16 Oct 2018 00:27:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1517cfd4014bedee40e5ef64d6211eb77d7548af598033b075cf1f6309bb3f0e`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423fa39142b1dd4bb28b385f9ed824e1b5d014aa4f95b90dfad37dda533d1cad`  
		Last Modified: Tue, 16 Oct 2018 07:46:43 GMT  
		Size: 86.5 MB (86451024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d2665110266ab65294cba6d55b4405252e5aa224bf0e4e5d496736875991f9`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 904.7 KB (904710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfbaa555af9fbf178250c211207ab64270fc0798253c10ea3b1c9d07203f9ab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b2b787575bfa1fde978bf39070345e6e0fb08d460178120f39c1b4c657f6a8`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 2.4 MB (2394055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947395f4317399cc7adc16492f2466797553feb1396fb42450a091ce1a4584d3`  
		Last Modified: Tue, 16 Oct 2018 07:46:48 GMT  
		Size: 125.9 MB (125947655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b07f390ba91baa51399e17672137d4e489a748b954845c8e4bd1a13ed76bab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:77a1b525cd6c9fb243719457d0cbf9df00fc6ccae5a646212c587c46e6e9ebca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297486678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5aa8a0dbbd23f892476af7739ba0d9a7a90b0888c1c6129c786816aeade2be`
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
# Tue, 16 Oct 2018 12:28:48 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 12:28:48 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 12:28:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 12:28:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 12:33:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 12:33:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 12:33:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 12:33:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 12:33:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 12:33:47 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:48:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:49:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:49:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:49:34 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:49:34 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:49:35 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 16:49:35 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 16:49:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:55:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:55:32 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:55:32 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:55:33 GMT
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
	-	`sha256:2e9168d37b52c5060865e88c400b57a69ffb1a57e44e85f0b30dc208ce3ebe20`  
		Last Modified: Tue, 16 Oct 2018 12:38:42 GMT  
		Size: 33.3 MB (33265468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38ea862ecc3b79dc198eca927a92c8122ad968ee4d3eb8d82028cb847050c29`  
		Last Modified: Tue, 16 Oct 2018 12:38:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc0098ae5e3ae699f9e4943f73851030c545ed044870b3fca4b58ea5cd30de7`  
		Last Modified: Tue, 16 Oct 2018 16:56:57 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f50d8ac599802950ea68480915ba47ff1ab3c687ab1cb43804c551337041a5`  
		Last Modified: Tue, 16 Oct 2018 16:57:23 GMT  
		Size: 83.8 MB (83783194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae696d9dacbf4a116ed39725541a3a60bea259cadff8f208a71a6cdf17fceb`  
		Last Modified: Tue, 16 Oct 2018 16:56:56 GMT  
		Size: 894.6 KB (894563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531e818efe42af75f34ee724874ca52f8a34bf59ee659151c82cc9dbaa46565b`  
		Last Modified: Tue, 16 Oct 2018 16:56:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1de8ee39fe524e609a979ad349bc07fc3bfaeb91f22f497833161e06c1f916`  
		Last Modified: Tue, 16 Oct 2018 16:56:58 GMT  
		Size: 2.4 MB (2394456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a49129b05aa15162569fa34b31115eae993c273f97748436a9d0a5225fd421e`  
		Last Modified: Tue, 16 Oct 2018 16:57:28 GMT  
		Size: 120.7 MB (120673943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de80e3a0b90704655806f713120c532a24d6cdb5a6778be82a395edbb329b094`  
		Last Modified: Tue, 16 Oct 2018 16:56:56 GMT  
		Size: 1.8 KB (1821 bytes)  
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
$ docker pull redmine@sha256:b5fbec1b6dc16d87090a485a0e84837af9bb64ca889a081e8a31f1f61ad85cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296443821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a318dec24d148a51459bb81500a8e56295a72043b63ee7213dd8fce46e3d1f10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 21:49:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:49:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 21:49:57 GMT
ENV RUBY_MAJOR=2.3
# Wed, 05 Sep 2018 21:49:57 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 05 Sep 2018 21:49:58 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 05 Sep 2018 21:49:59 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 10:18:56 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 10:26:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 10:26:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 10:26:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 10:26:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 10:26:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 10:26:48 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:26:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 11:08:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:08:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:08:58 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 11:08:59 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 11:09:00 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 11:09:01 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 11:09:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 11:24:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:24:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 11:24:13 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 11:24:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:24:15 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 11:24:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b27e8a3edf1c35a0764b73f0fb0f9d4657d8fd36aac4fcff144f0874d014c44`  
		Last Modified: Wed, 05 Sep 2018 22:22:29 GMT  
		Size: 12.7 MB (12707454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678dd51c4197dd882cc2fda4bafc448b00e0abcc6da3f21f459418c43a52b44`  
		Last Modified: Wed, 05 Sep 2018 22:22:24 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3905604818144989ebde357b7f05f2c2741b15625a14d6ebd13d9af7c21eb527`  
		Last Modified: Sat, 06 Oct 2018 10:53:32 GMT  
		Size: 34.4 MB (34403879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f0f26280e81355905720234031343d4dbc95897910f7d7c041340ee6508df7`  
		Last Modified: Sat, 06 Oct 2018 10:53:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc91c497d27903704b21e95af8ee02a9e4de788499151b72fbaf60d56c93c8b`  
		Last Modified: Sat, 06 Oct 2018 11:44:46 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e044a5584d10c9a9c72ffe01fa9a2c4ad00bb0abac44943addc8375ee26c3f4`  
		Last Modified: Tue, 16 Oct 2018 11:27:37 GMT  
		Size: 82.7 MB (82736383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4849683911bcc568b0b1d99307fdb3441a85ff5c735c7ed00d03cc959e5be9e`  
		Last Modified: Tue, 16 Oct 2018 11:26:48 GMT  
		Size: 872.7 KB (872715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab208b521c002d4bbfb67f2391e3e408d4ef7e53d1616ab47dab90d462b4a83`  
		Last Modified: Tue, 16 Oct 2018 11:26:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcad6084178e55b7885e629d7250d16489c4bd7c6f607dd489b4d02859b4c8eb`  
		Last Modified: Tue, 16 Oct 2018 11:26:51 GMT  
		Size: 2.4 MB (2394061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34c1cc5e3b46cffd8b661a15b7158e44d47b7d991837801f096564ce22c5326`  
		Last Modified: Tue, 16 Oct 2018 11:27:47 GMT  
		Size: 120.2 MB (120201641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88680c375030eba4ec00d129e64295252594820ab647c951a2ae00d2fd017a27`  
		Last Modified: Tue, 16 Oct 2018 11:26:47 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:13a107aedbe4a1207c08798f34740c271d862c2d26a43f78cdd8bbf21844c013
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309454583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65eadb54628fd909e92296ddad0376b29330b24d6b7965b0cb1243b80e8b103f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 01:40:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 01:40:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBY_MAJOR=2.3
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBY_VERSION=2.3.7
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 11:27:10 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 11:30:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 11:30:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 11:30:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 11:30:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 11:30:30 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 11:30:30 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 12:16:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 06 Oct 2018 12:16:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Oct 2018 12:16:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:16:40 GMT
ENV RAILS_ENV=production
# Sat, 06 Oct 2018 12:16:40 GMT
WORKDIR /usr/src/redmine
# Sat, 06 Oct 2018 12:16:41 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 06 Oct 2018 12:16:41 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 06 Oct 2018 12:16:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 06 Oct 2018 12:19:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:19:56 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 06 Oct 2018 12:19:57 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Sat, 06 Oct 2018 12:19:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 06 Oct 2018 12:19:57 GMT
EXPOSE 3000/tcp
# Sat, 06 Oct 2018 12:19:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfc0c9ab37c99ad82bd8ef98a66b0e16988a1b3b7f72cc3371802a36ea1326a`  
		Last Modified: Fri, 07 Sep 2018 02:00:19 GMT  
		Size: 17.5 MB (17546134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed62c23a9f431133ad24920c162ee1360aed78c7079491a4043bc112b356e50e`  
		Last Modified: Fri, 07 Sep 2018 02:00:14 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941b5e4d275d939329e68dfb530ec1dfdca4553a1c4f2fef3cdd10a54cdf76b9`  
		Last Modified: Sat, 06 Oct 2018 11:54:16 GMT  
		Size: 33.1 MB (33079217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77599370f2d4972d3684326cec3180e45f1765509886982f2259493a9843bfe`  
		Last Modified: Sat, 06 Oct 2018 11:54:07 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fbdb07f97231aa62198ba160ee323c54228ccd1a1c439886c25b878db4b5a1`  
		Last Modified: Sat, 06 Oct 2018 12:21:09 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17084c4cacfaf44a130135d0aea2b00bc5a5d3af5d59f6ec6bcde1ec3597cacf`  
		Last Modified: Sat, 06 Oct 2018 12:21:34 GMT  
		Size: 85.1 MB (85148274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13ac5a3a394f9721cb627e9e1244bd4113e7a029f84b3a9f6cc67b046280b4e`  
		Last Modified: Sat, 06 Oct 2018 12:21:08 GMT  
		Size: 883.8 KB (883838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c335d1f93151be6e62c77f19d3396dbc8b132e26bd18cfd0ed0e8d7cf05795d2`  
		Last Modified: Sat, 06 Oct 2018 12:21:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5e9a2526e3de38609902757449b3f18c500e8c854edc485fd5a31ea92af07`  
		Last Modified: Sat, 06 Oct 2018 12:21:12 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816d3c04c0b9731333a2a1a896281504707fe68cd26fc250f4dffd1388a537f1`  
		Last Modified: Sat, 06 Oct 2018 12:21:37 GMT  
		Size: 124.4 MB (124359959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e6c8b06209752e85a206ca59e7462765d3c72973b17d0e2494084e43a0b459`  
		Last Modified: Sat, 06 Oct 2018 12:21:08 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:65051a8a465068a2a3b51a8701ec64a979e8542c86bafd8280b11d5e4b40c958
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306121793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a09eae2c9a85f659a353bee271a4969d5d92f20901d3bb680fb5b9c8821fed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:37:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:37:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 13:37:50 GMT
ENV RUBY_MAJOR=2.3
# Wed, 05 Sep 2018 13:37:52 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 05 Sep 2018 13:37:53 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 05 Sep 2018 13:37:54 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:53:46 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:58:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:58:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:58:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:58:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:58:54 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:04:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 09:32:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:33:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:33:03 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 09:33:05 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 09:33:06 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 09:33:07 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 09:33:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 09:46:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:46:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 09:46:11 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 09:46:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:46:17 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 09:46:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1e1b787ba56652c6560b06c6f4fc0eca6ebd6d85646ddf11b48f7431dd3426`  
		Last Modified: Wed, 05 Sep 2018 13:53:59 GMT  
		Size: 13.6 MB (13560876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91768ba56f3e41de3a618eab2f28b087ecff8af4246b25851cf870d0a486d93d`  
		Last Modified: Wed, 05 Sep 2018 13:53:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94ee3d9991f5d809ff19d2a715147f6aa3112c6d0ecabbdae9571d2b73feb1`  
		Last Modified: Sat, 06 Oct 2018 10:31:40 GMT  
		Size: 35.3 MB (35257466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dbb5d3788b46862e411ec9fd3859fb112bc795a4ccea2883e991bad05b8105`  
		Last Modified: Sat, 06 Oct 2018 10:31:20 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7ea2b1afd3ae23201c237e2bcd8d398df00f5ca5d18f12be95e3c00e76d76e`  
		Last Modified: Sat, 06 Oct 2018 11:27:31 GMT  
		Size: 1.8 KB (1760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b854250e7f056aaf02ffbd63b5f9d8d0a6342b9a7012e01c23f561cac4593`  
		Last Modified: Tue, 16 Oct 2018 09:52:37 GMT  
		Size: 85.9 MB (85936206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1135150d55496cbbd107a6ba15fcb609f167b7889d05360587fd8a1be69a93c5`  
		Last Modified: Tue, 16 Oct 2018 09:51:54 GMT  
		Size: 873.4 KB (873430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d886eee30c5780b8e59d8467e0baa9108219ab7edeb60fb75bcc4c15054d44`  
		Last Modified: Tue, 16 Oct 2018 09:51:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16be62edc72a3cb8ed5ddce1bf231136e9e0d942e434fa347e51a372382647d0`  
		Last Modified: Tue, 16 Oct 2018 09:51:57 GMT  
		Size: 2.4 MB (2394451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18493723069561d2e8fbf1480bc0e988a77fc726fbfda4a490114e8e8bc5beb1`  
		Last Modified: Tue, 16 Oct 2018 09:52:54 GMT  
		Size: 122.5 MB (122499832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f8d33616c0d49c1362287e99f1a580b0ed7245df9faa3b185b623d7a2f93c3`  
		Last Modified: Tue, 16 Oct 2018 09:51:53 GMT  
		Size: 1.8 KB (1819 bytes)  
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
$ docker pull redmine@sha256:37c7a81114ad8c6918a57bfec0948b1e0defb6259e466d7a3913da448e8042c5
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
$ docker pull redmine@sha256:29e9f862a76cd3e600599f45ff08518f0a97520384998b1946c68ad9024bc290
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310030355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f0f2ebe60f3b93f807de4ca88b039996e4885d9b059bd85b7e2dbbf0ecfc1a`
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
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:17:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:17:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:17:04 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:39:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:40:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:40:05 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:40:05 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 07:40:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:43:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:43:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:43:46 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:43:47 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:43:47 GMT
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
	-	`sha256:2abe60c5ac8151f1d99b0999d6a1deacb6f5f589accf2cd457fc3c03dd32a615`  
		Last Modified: Tue, 16 Oct 2018 00:28:02 GMT  
		Size: 34.6 MB (34563694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b3e1a0598685091348767e1ff3eac42a4066da6a64ba172e7e67cd28f5b594`  
		Last Modified: Tue, 16 Oct 2018 00:27:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1517cfd4014bedee40e5ef64d6211eb77d7548af598033b075cf1f6309bb3f0e`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423fa39142b1dd4bb28b385f9ed824e1b5d014aa4f95b90dfad37dda533d1cad`  
		Last Modified: Tue, 16 Oct 2018 07:46:43 GMT  
		Size: 86.5 MB (86451024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d2665110266ab65294cba6d55b4405252e5aa224bf0e4e5d496736875991f9`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 904.7 KB (904710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfbaa555af9fbf178250c211207ab64270fc0798253c10ea3b1c9d07203f9ab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b2b787575bfa1fde978bf39070345e6e0fb08d460178120f39c1b4c657f6a8`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 2.4 MB (2394055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947395f4317399cc7adc16492f2466797553feb1396fb42450a091ce1a4584d3`  
		Last Modified: Tue, 16 Oct 2018 07:46:48 GMT  
		Size: 125.9 MB (125947655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b07f390ba91baa51399e17672137d4e489a748b954845c8e4bd1a13ed76bab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:77a1b525cd6c9fb243719457d0cbf9df00fc6ccae5a646212c587c46e6e9ebca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297486678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5aa8a0dbbd23f892476af7739ba0d9a7a90b0888c1c6129c786816aeade2be`
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
# Tue, 16 Oct 2018 12:28:48 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 12:28:48 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 12:28:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 12:28:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 12:33:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 12:33:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 12:33:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 12:33:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 12:33:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 12:33:47 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:48:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:49:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:49:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:49:34 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:49:34 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:49:35 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 16:49:35 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 16:49:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:55:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:55:32 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:55:32 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:55:33 GMT
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
	-	`sha256:2e9168d37b52c5060865e88c400b57a69ffb1a57e44e85f0b30dc208ce3ebe20`  
		Last Modified: Tue, 16 Oct 2018 12:38:42 GMT  
		Size: 33.3 MB (33265468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38ea862ecc3b79dc198eca927a92c8122ad968ee4d3eb8d82028cb847050c29`  
		Last Modified: Tue, 16 Oct 2018 12:38:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc0098ae5e3ae699f9e4943f73851030c545ed044870b3fca4b58ea5cd30de7`  
		Last Modified: Tue, 16 Oct 2018 16:56:57 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f50d8ac599802950ea68480915ba47ff1ab3c687ab1cb43804c551337041a5`  
		Last Modified: Tue, 16 Oct 2018 16:57:23 GMT  
		Size: 83.8 MB (83783194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae696d9dacbf4a116ed39725541a3a60bea259cadff8f208a71a6cdf17fceb`  
		Last Modified: Tue, 16 Oct 2018 16:56:56 GMT  
		Size: 894.6 KB (894563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531e818efe42af75f34ee724874ca52f8a34bf59ee659151c82cc9dbaa46565b`  
		Last Modified: Tue, 16 Oct 2018 16:56:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1de8ee39fe524e609a979ad349bc07fc3bfaeb91f22f497833161e06c1f916`  
		Last Modified: Tue, 16 Oct 2018 16:56:58 GMT  
		Size: 2.4 MB (2394456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a49129b05aa15162569fa34b31115eae993c273f97748436a9d0a5225fd421e`  
		Last Modified: Tue, 16 Oct 2018 16:57:28 GMT  
		Size: 120.7 MB (120673943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de80e3a0b90704655806f713120c532a24d6cdb5a6778be82a395edbb329b094`  
		Last Modified: Tue, 16 Oct 2018 16:56:56 GMT  
		Size: 1.8 KB (1821 bytes)  
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
$ docker pull redmine@sha256:b5fbec1b6dc16d87090a485a0e84837af9bb64ca889a081e8a31f1f61ad85cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296443821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a318dec24d148a51459bb81500a8e56295a72043b63ee7213dd8fce46e3d1f10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 21:49:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:49:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 21:49:57 GMT
ENV RUBY_MAJOR=2.3
# Wed, 05 Sep 2018 21:49:57 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 05 Sep 2018 21:49:58 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 05 Sep 2018 21:49:59 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 10:18:56 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 10:26:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 10:26:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 10:26:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 10:26:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 10:26:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 10:26:48 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:26:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 11:08:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:08:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:08:58 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 11:08:59 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 11:09:00 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 11:09:01 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 11:09:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 11:24:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:24:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 11:24:13 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 11:24:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:24:15 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 11:24:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b27e8a3edf1c35a0764b73f0fb0f9d4657d8fd36aac4fcff144f0874d014c44`  
		Last Modified: Wed, 05 Sep 2018 22:22:29 GMT  
		Size: 12.7 MB (12707454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678dd51c4197dd882cc2fda4bafc448b00e0abcc6da3f21f459418c43a52b44`  
		Last Modified: Wed, 05 Sep 2018 22:22:24 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3905604818144989ebde357b7f05f2c2741b15625a14d6ebd13d9af7c21eb527`  
		Last Modified: Sat, 06 Oct 2018 10:53:32 GMT  
		Size: 34.4 MB (34403879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f0f26280e81355905720234031343d4dbc95897910f7d7c041340ee6508df7`  
		Last Modified: Sat, 06 Oct 2018 10:53:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc91c497d27903704b21e95af8ee02a9e4de788499151b72fbaf60d56c93c8b`  
		Last Modified: Sat, 06 Oct 2018 11:44:46 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e044a5584d10c9a9c72ffe01fa9a2c4ad00bb0abac44943addc8375ee26c3f4`  
		Last Modified: Tue, 16 Oct 2018 11:27:37 GMT  
		Size: 82.7 MB (82736383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4849683911bcc568b0b1d99307fdb3441a85ff5c735c7ed00d03cc959e5be9e`  
		Last Modified: Tue, 16 Oct 2018 11:26:48 GMT  
		Size: 872.7 KB (872715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab208b521c002d4bbfb67f2391e3e408d4ef7e53d1616ab47dab90d462b4a83`  
		Last Modified: Tue, 16 Oct 2018 11:26:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcad6084178e55b7885e629d7250d16489c4bd7c6f607dd489b4d02859b4c8eb`  
		Last Modified: Tue, 16 Oct 2018 11:26:51 GMT  
		Size: 2.4 MB (2394061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34c1cc5e3b46cffd8b661a15b7158e44d47b7d991837801f096564ce22c5326`  
		Last Modified: Tue, 16 Oct 2018 11:27:47 GMT  
		Size: 120.2 MB (120201641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88680c375030eba4ec00d129e64295252594820ab647c951a2ae00d2fd017a27`  
		Last Modified: Tue, 16 Oct 2018 11:26:47 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; 386

```console
$ docker pull redmine@sha256:13a107aedbe4a1207c08798f34740c271d862c2d26a43f78cdd8bbf21844c013
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309454583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65eadb54628fd909e92296ddad0376b29330b24d6b7965b0cb1243b80e8b103f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 01:40:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 01:40:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBY_MAJOR=2.3
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBY_VERSION=2.3.7
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Fri, 07 Sep 2018 01:40:57 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 11:27:10 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 11:30:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 11:30:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 11:30:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 11:30:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 11:30:30 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 11:30:30 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 12:16:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 06 Oct 2018 12:16:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Oct 2018 12:16:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:16:40 GMT
ENV RAILS_ENV=production
# Sat, 06 Oct 2018 12:16:40 GMT
WORKDIR /usr/src/redmine
# Sat, 06 Oct 2018 12:16:41 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 06 Oct 2018 12:16:41 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 06 Oct 2018 12:16:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 06 Oct 2018 12:19:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:19:56 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 06 Oct 2018 12:19:57 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Sat, 06 Oct 2018 12:19:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 06 Oct 2018 12:19:57 GMT
EXPOSE 3000/tcp
# Sat, 06 Oct 2018 12:19:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfc0c9ab37c99ad82bd8ef98a66b0e16988a1b3b7f72cc3371802a36ea1326a`  
		Last Modified: Fri, 07 Sep 2018 02:00:19 GMT  
		Size: 17.5 MB (17546134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed62c23a9f431133ad24920c162ee1360aed78c7079491a4043bc112b356e50e`  
		Last Modified: Fri, 07 Sep 2018 02:00:14 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941b5e4d275d939329e68dfb530ec1dfdca4553a1c4f2fef3cdd10a54cdf76b9`  
		Last Modified: Sat, 06 Oct 2018 11:54:16 GMT  
		Size: 33.1 MB (33079217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77599370f2d4972d3684326cec3180e45f1765509886982f2259493a9843bfe`  
		Last Modified: Sat, 06 Oct 2018 11:54:07 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fbdb07f97231aa62198ba160ee323c54228ccd1a1c439886c25b878db4b5a1`  
		Last Modified: Sat, 06 Oct 2018 12:21:09 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17084c4cacfaf44a130135d0aea2b00bc5a5d3af5d59f6ec6bcde1ec3597cacf`  
		Last Modified: Sat, 06 Oct 2018 12:21:34 GMT  
		Size: 85.1 MB (85148274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13ac5a3a394f9721cb627e9e1244bd4113e7a029f84b3a9f6cc67b046280b4e`  
		Last Modified: Sat, 06 Oct 2018 12:21:08 GMT  
		Size: 883.8 KB (883838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c335d1f93151be6e62c77f19d3396dbc8b132e26bd18cfd0ed0e8d7cf05795d2`  
		Last Modified: Sat, 06 Oct 2018 12:21:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5e9a2526e3de38609902757449b3f18c500e8c854edc485fd5a31ea92af07`  
		Last Modified: Sat, 06 Oct 2018 12:21:12 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816d3c04c0b9731333a2a1a896281504707fe68cd26fc250f4dffd1388a537f1`  
		Last Modified: Sat, 06 Oct 2018 12:21:37 GMT  
		Size: 124.4 MB (124359959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e6c8b06209752e85a206ca59e7462765d3c72973b17d0e2494084e43a0b459`  
		Last Modified: Sat, 06 Oct 2018 12:21:08 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:65051a8a465068a2a3b51a8701ec64a979e8542c86bafd8280b11d5e4b40c958
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306121793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a09eae2c9a85f659a353bee271a4969d5d92f20901d3bb680fb5b9c8821fed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:37:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:37:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 13:37:50 GMT
ENV RUBY_MAJOR=2.3
# Wed, 05 Sep 2018 13:37:52 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 05 Sep 2018 13:37:53 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 05 Sep 2018 13:37:54 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:53:46 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:58:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:58:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:58:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:58:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:58:54 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:04:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 09:32:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:33:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:33:03 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 09:33:05 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 09:33:06 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 09:33:07 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 09:33:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 09:46:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:46:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 09:46:11 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 09:46:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:46:17 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 09:46:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1e1b787ba56652c6560b06c6f4fc0eca6ebd6d85646ddf11b48f7431dd3426`  
		Last Modified: Wed, 05 Sep 2018 13:53:59 GMT  
		Size: 13.6 MB (13560876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91768ba56f3e41de3a618eab2f28b087ecff8af4246b25851cf870d0a486d93d`  
		Last Modified: Wed, 05 Sep 2018 13:53:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94ee3d9991f5d809ff19d2a715147f6aa3112c6d0ecabbdae9571d2b73feb1`  
		Last Modified: Sat, 06 Oct 2018 10:31:40 GMT  
		Size: 35.3 MB (35257466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dbb5d3788b46862e411ec9fd3859fb112bc795a4ccea2883e991bad05b8105`  
		Last Modified: Sat, 06 Oct 2018 10:31:20 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7ea2b1afd3ae23201c237e2bcd8d398df00f5ca5d18f12be95e3c00e76d76e`  
		Last Modified: Sat, 06 Oct 2018 11:27:31 GMT  
		Size: 1.8 KB (1760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b854250e7f056aaf02ffbd63b5f9d8d0a6342b9a7012e01c23f561cac4593`  
		Last Modified: Tue, 16 Oct 2018 09:52:37 GMT  
		Size: 85.9 MB (85936206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1135150d55496cbbd107a6ba15fcb609f167b7889d05360587fd8a1be69a93c5`  
		Last Modified: Tue, 16 Oct 2018 09:51:54 GMT  
		Size: 873.4 KB (873430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d886eee30c5780b8e59d8467e0baa9108219ab7edeb60fb75bcc4c15054d44`  
		Last Modified: Tue, 16 Oct 2018 09:51:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16be62edc72a3cb8ed5ddce1bf231136e9e0d942e434fa347e51a372382647d0`  
		Last Modified: Tue, 16 Oct 2018 09:51:57 GMT  
		Size: 2.4 MB (2394451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18493723069561d2e8fbf1480bc0e988a77fc726fbfda4a490114e8e8bc5beb1`  
		Last Modified: Tue, 16 Oct 2018 09:52:54 GMT  
		Size: 122.5 MB (122499832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f8d33616c0d49c1362287e99f1a580b0ed7245df9faa3b185b623d7a2f93c3`  
		Last Modified: Tue, 16 Oct 2018 09:51:53 GMT  
		Size: 1.8 KB (1819 bytes)  
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
$ docker pull redmine@sha256:fc55627b62e29e1cbe863425c215a048f0b3a0475616c9077074bafadec4420d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e44a8e715f90c8f8cd235d8791daaf315ae4e749140978bd992f8cc9d7fb1da9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.6 MB (333594336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7d5200c52d73243225e06d5d3c312f1d378554a3ff3022f767bfbf9f20ceaa`
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
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:17:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:17:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:17:04 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:39:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:40:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:40:05 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:40:05 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 07:40:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:43:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:43:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:43:46 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:43:47 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:43:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 16 Oct 2018 07:43:57 GMT
ENV PASSENGER_VERSION=5.3.5
# Tue, 16 Oct 2018 07:44:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 07:44:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 16 Oct 2018 07:44:10 GMT
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
	-	`sha256:2abe60c5ac8151f1d99b0999d6a1deacb6f5f589accf2cd457fc3c03dd32a615`  
		Last Modified: Tue, 16 Oct 2018 00:28:02 GMT  
		Size: 34.6 MB (34563694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b3e1a0598685091348767e1ff3eac42a4066da6a64ba172e7e67cd28f5b594`  
		Last Modified: Tue, 16 Oct 2018 00:27:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1517cfd4014bedee40e5ef64d6211eb77d7548af598033b075cf1f6309bb3f0e`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423fa39142b1dd4bb28b385f9ed824e1b5d014aa4f95b90dfad37dda533d1cad`  
		Last Modified: Tue, 16 Oct 2018 07:46:43 GMT  
		Size: 86.5 MB (86451024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d2665110266ab65294cba6d55b4405252e5aa224bf0e4e5d496736875991f9`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 904.7 KB (904710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfbaa555af9fbf178250c211207ab64270fc0798253c10ea3b1c9d07203f9ab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b2b787575bfa1fde978bf39070345e6e0fb08d460178120f39c1b4c657f6a8`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 2.4 MB (2394055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947395f4317399cc7adc16492f2466797553feb1396fb42450a091ce1a4584d3`  
		Last Modified: Tue, 16 Oct 2018 07:46:48 GMT  
		Size: 125.9 MB (125947655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b07f390ba91baa51399e17672137d4e489a748b954845c8e4bd1a13ed76bab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434c7190064450d480926dc2f2413adec8aefcd3e584829a2f5cde0913243cbf`  
		Last Modified: Tue, 16 Oct 2018 07:47:12 GMT  
		Size: 19.1 MB (19116521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295875ab66445c1434826fc9b88609878f0107ca8a80d7212f104a8b5838985f`  
		Last Modified: Tue, 16 Oct 2018 07:47:09 GMT  
		Size: 4.4 MB (4447460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:fc55627b62e29e1cbe863425c215a048f0b3a0475616c9077074bafadec4420d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e44a8e715f90c8f8cd235d8791daaf315ae4e749140978bd992f8cc9d7fb1da9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.6 MB (333594336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7d5200c52d73243225e06d5d3c312f1d378554a3ff3022f767bfbf9f20ceaa`
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
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 00:12:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:12:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:17:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:17:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:17:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:17:04 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:39:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:40:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:40:05 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:40:05 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 07:40:05 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 07:40:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:43:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:43:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:43:46 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:43:47 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:43:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 16 Oct 2018 07:43:57 GMT
ENV PASSENGER_VERSION=5.3.5
# Tue, 16 Oct 2018 07:44:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 07:44:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 16 Oct 2018 07:44:10 GMT
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
	-	`sha256:2abe60c5ac8151f1d99b0999d6a1deacb6f5f589accf2cd457fc3c03dd32a615`  
		Last Modified: Tue, 16 Oct 2018 00:28:02 GMT  
		Size: 34.6 MB (34563694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b3e1a0598685091348767e1ff3eac42a4066da6a64ba172e7e67cd28f5b594`  
		Last Modified: Tue, 16 Oct 2018 00:27:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1517cfd4014bedee40e5ef64d6211eb77d7548af598033b075cf1f6309bb3f0e`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423fa39142b1dd4bb28b385f9ed824e1b5d014aa4f95b90dfad37dda533d1cad`  
		Last Modified: Tue, 16 Oct 2018 07:46:43 GMT  
		Size: 86.5 MB (86451024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d2665110266ab65294cba6d55b4405252e5aa224bf0e4e5d496736875991f9`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 904.7 KB (904710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfbaa555af9fbf178250c211207ab64270fc0798253c10ea3b1c9d07203f9ab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b2b787575bfa1fde978bf39070345e6e0fb08d460178120f39c1b4c657f6a8`  
		Last Modified: Tue, 16 Oct 2018 07:46:20 GMT  
		Size: 2.4 MB (2394055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947395f4317399cc7adc16492f2466797553feb1396fb42450a091ce1a4584d3`  
		Last Modified: Tue, 16 Oct 2018 07:46:48 GMT  
		Size: 125.9 MB (125947655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b07f390ba91baa51399e17672137d4e489a748b954845c8e4bd1a13ed76bab`  
		Last Modified: Tue, 16 Oct 2018 07:46:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434c7190064450d480926dc2f2413adec8aefcd3e584829a2f5cde0913243cbf`  
		Last Modified: Tue, 16 Oct 2018 07:47:12 GMT  
		Size: 19.1 MB (19116521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295875ab66445c1434826fc9b88609878f0107ca8a80d7212f104a8b5838985f`  
		Last Modified: Tue, 16 Oct 2018 07:47:09 GMT  
		Size: 4.4 MB (4447460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:cb1cf1d6fa1ad84cee555d992e3d8be64f23db0d24ac8d0923bd50cca9ae1500
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
$ docker pull redmine@sha256:83a6ca93b262df46f3c9167c116226a7d98af59763ff79528f62b24e0cea125a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296364809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a065bb4c54b69b66685aa90ee8fcf293651dbb8967df0ea411e59a8d04f97f`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:77a13f85209375c890d8588e8a897ff6b2205623afe19220a815516be3f09f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284821037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d9284730cafbd6ee43b19735581341ec61a394988d8663ca8fbb3c607751fc`
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
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 12:17:03 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 12:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 12:23:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 12:23:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 12:23:39 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:42:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:42:24 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:42:24 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:42:24 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:42:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:42:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:48:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:48:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:48:17 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:48:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:48:18 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:48:19 GMT
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
	-	`sha256:0e43d1625c0bc98a1bff830848eff67d6dfa2493f875fa1339ff2118da89b033`  
		Last Modified: Tue, 16 Oct 2018 12:37:34 GMT  
		Size: 21.3 MB (21314634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c830da8d606f28186c682490e0aca0eee0c119eb24990a4e16ab1e4c0bd018c3`  
		Last Modified: Tue, 16 Oct 2018 12:37:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0c6c5af44d80aaea2413cbd37ff11f7a105c44fd878f6ff4d3ff6492df1e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9065060727d5bf1804ac2ffda920702786fef3d52485ff1b02f3ddd32c3a2359`  
		Last Modified: Tue, 16 Oct 2018 16:56:13 GMT  
		Size: 85.0 MB (84956744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f0782a7e0d8a65c6b3187f2e1f8d4dda7f6f3b0be2e6c0b0e6cf0efba80e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 894.4 KB (894362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e3f53cd48c3cf26fc266057a1f8fae75b45a638faf7f78a5439eeeacb91c31`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d576e075ea939251e4c3cda207f11cf0d725e5948dc2db426b009cf7cf84bbf`  
		Last Modified: Tue, 16 Oct 2018 16:55:46 GMT  
		Size: 2.5 MB (2457568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d68e092b1120c37d59a66565ce330dcbec8e9cdc1ce08a56f006fc9fd0cabef`  
		Last Modified: Tue, 16 Oct 2018 16:56:26 GMT  
		Size: 119.8 MB (119783993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d958bbc46b7433ab73bcbfd2d369d6ff89d1abf058990961e8eb2417aa18690`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
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
$ docker pull redmine@sha256:6506006c6556e8384b42737cf1ae55285abb7bc6c47fb72788d6a6ca9f674e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c369733df43f401e93049208ce1c127e013d35643e88424eb945df644d786e8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 20:53:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 20:53:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 21:28:34 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 21:28:35 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:48:14 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:57:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:57:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:57:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:57:50 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:11:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 10:50:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:50:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 10:50:42 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 10:50:43 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 10:50:44 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 10:50:45 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 10:50:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 11:05:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:05:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 11:05:55 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 11:05:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:05:57 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 11:05:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f7bc060ae4ca5a83308cec3b78256601cb867f16286d3270ea3be4cb5e32c6`  
		Last Modified: Wed, 05 Sep 2018 22:04:39 GMT  
		Size: 11.6 MB (11620872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5105a1607b093d30d33a52fe846b34e088c1e0ed7a845f03b4ba713362903fab`  
		Last Modified: Wed, 05 Sep 2018 22:04:34 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bd64fb33b38d9d359b397dd596fb61a0a8ddf1547e9f345c47b044638575a`  
		Last Modified: Sat, 06 Oct 2018 10:49:34 GMT  
		Size: 21.5 MB (21523076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a307ab211f7133043aa5b23f3995cae692c65a0c68d89485ec1a0f390daeb83`  
		Last Modified: Sat, 06 Oct 2018 10:49:28 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f0fcd09de56a4c3453db73ff2a68b5536a25782ec3cd175a88f643c1f1e47b`  
		Last Modified: Sat, 06 Oct 2018 11:43:13 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c117839b6b7af9feb88a7244346946f31bd20b87851a848d9dfdcb5964579c`  
		Last Modified: Tue, 16 Oct 2018 11:25:43 GMT  
		Size: 83.9 MB (83916276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f921cecea2753d559e86053d8f83b7d6a32c7803193e524e3561ca728ad8e5`  
		Last Modified: Tue, 16 Oct 2018 11:24:40 GMT  
		Size: 872.6 KB (872569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be81f5f43a343ee7c529b9f81cc650c0710c3b73a379d056337dcfecb65ba608`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41214ee194ce1ee97f5718dfb6bf3fe104d509fb208e29c11e5465a06ce590`  
		Last Modified: Tue, 16 Oct 2018 11:24:43 GMT  
		Size: 2.5 MB (2456917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81572de9dea8d35ddc16393d9a28f93d2a73170005adca3683d3b20f6a08f51`  
		Last Modified: Tue, 16 Oct 2018 11:25:56 GMT  
		Size: 119.4 MB (119363264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acaa7d09138e56476058d19381aaaea5a37e97747949b21a90bb057129a012a`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:2ec348081a57eaf520bf340ac53c8bc0bc591b01087e444f92360895274ee92f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.0 MB (297026252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5387ca01bef54604342cfdc3d5321419021184098c06aa0f4145d3c99169707b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:55:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:55:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_MAJOR=2.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 11:03:40 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 11:07:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 11:07:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 11:07:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 11:07:28 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 12:11:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 06 Oct 2018 12:12:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Oct 2018 12:12:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:12:32 GMT
ENV RAILS_ENV=production
# Sat, 06 Oct 2018 12:12:32 GMT
WORKDIR /usr/src/redmine
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 06 Oct 2018 12:12:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 06 Oct 2018 12:15:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:15:53 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 06 Oct 2018 12:15:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Sat, 06 Oct 2018 12:15:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 06 Oct 2018 12:15:54 GMT
EXPOSE 3000/tcp
# Sat, 06 Oct 2018 12:15:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3d85fde24bfb0245f2a43404d56288b33ba975a1a87cae42b0cd8f08e91b96`  
		Last Modified: Fri, 07 Sep 2018 01:56:28 GMT  
		Size: 16.3 MB (16255376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685331cae9df59b39e8797434f4413bf03c8b8e09d668edbd32a38cf79f7ff46`  
		Last Modified: Fri, 07 Sep 2018 01:56:23 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4ffe75b402823cd16746621465e2655318cb1bcef5dcc6087dced3e0e54d6`  
		Last Modified: Sat, 06 Oct 2018 11:51:24 GMT  
		Size: 21.4 MB (21350911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570908abeb882db4910499e7179f34df24ca94759ffdb8f500ccbf29f4c82b72`  
		Last Modified: Sat, 06 Oct 2018 11:51:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287383ed84e70490d31723229a8689cd1214f15bff062c433c97d596823e002`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4780d486b91a6ccef4e60245c869aba95c9323ce460cccc4ba6b2b27b9c3e2`  
		Last Modified: Sat, 06 Oct 2018 12:20:35 GMT  
		Size: 86.6 MB (86567939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da917488874f70e76407642aefca3b5da3ea6dae377dac8330eef4d5c6af90e5`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 883.7 KB (883690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789e934d8efeb407831c83881ffc13a341ae96b6f8da15977496611d1c45758`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a076bd62a262f9bb376b03835f974910579b191f5e80b699128c333da85ebad`  
		Last Modified: Sat, 06 Oct 2018 12:20:10 GMT  
		Size: 2.5 MB (2456918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e92154b472e9b58c07e6846845f9c1d279e9f85aadf37225b47815ee2a711b`  
		Last Modified: Sat, 06 Oct 2018 12:20:37 GMT  
		Size: 123.5 MB (123468319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6abb61e643043fd2c24cecb2870c247e86f12d32b3efad3de8304596d4a8f3b`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:6892ff45dcb9d0d75ab232066fb93eb6ea2ff09631aa9ca844301481f6b05193
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291977725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d214f4875ef8ec7e50427669309e77b7bc9ad57e757c20f5c369415cee95b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:02:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:02:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 13:24:00 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 13:24:02 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 13:24:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 13:24:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:27:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:33:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:33:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:33:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:33:34 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 10:50:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 09:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:11:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:11:49 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 09:11:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 09:11:54 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 09:11:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 09:12:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 09:25:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:27:32 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 09:27:36 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 09:27:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:27:42 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 09:27:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ce7eeb3f20dac82cfd60f6ee035d1c1e6630ca4bcc7ed0882ad132b4e72569`  
		Last Modified: Wed, 05 Sep 2018 13:48:00 GMT  
		Size: 12.2 MB (12206980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920f97aa329fd29885e877803e1181aceefd2d4b7f5b71d0a1eb5493726795bd`  
		Last Modified: Wed, 05 Sep 2018 13:47:54 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94603b8ff472d7fea2a5ace1fdf980201a6faa3e270deae5699c608dfd94e385`  
		Last Modified: Sat, 06 Oct 2018 10:26:51 GMT  
		Size: 22.0 MB (21990355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86697fba25e0dacebc2a0103422b0a180acee48bf6574f145125c1960f2a6e35`  
		Last Modified: Sat, 06 Oct 2018 10:26:42 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d7cd611922fe8398f0ab7da73b3d8c6ced9be611039fc7bdf71b29630091d6`  
		Last Modified: Sat, 06 Oct 2018 11:19:27 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5eee7ebcf263b703947cd7458687e948b1f214b06b96643649fd85502833e78`  
		Last Modified: Tue, 16 Oct 2018 09:48:20 GMT  
		Size: 87.2 MB (87233459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a8b184efce8965a820c356405d7da1a9f9a3203a8867e6850d9eaacb2043b9`  
		Last Modified: Tue, 16 Oct 2018 09:47:29 GMT  
		Size: 873.3 KB (873263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b504aee92fdec3cc0f29e55de5b232a4b8daba66d02c1782c4b91c2a178432`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d972edec5c7839f675b30188a75f96fb4d4b54ea9949157d7c770bc3a08be`  
		Last Modified: Tue, 16 Oct 2018 09:47:33 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cfffcc2a95bd38b68eea55a0e3adcf0f06b370c8de1b838ded8fd7e928450`  
		Last Modified: Tue, 16 Oct 2018 09:48:36 GMT  
		Size: 121.6 MB (121616558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bd90752a7be0b4856732ad7ae4351bd049eac8b2834aa3b72b5c0e25ab6bbd`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 1.8 KB (1821 bytes)  
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
$ docker pull redmine@sha256:cb1cf1d6fa1ad84cee555d992e3d8be64f23db0d24ac8d0923bd50cca9ae1500
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
$ docker pull redmine@sha256:83a6ca93b262df46f3c9167c116226a7d98af59763ff79528f62b24e0cea125a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296364809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a065bb4c54b69b66685aa90ee8fcf293651dbb8967df0ea411e59a8d04f97f`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:77a13f85209375c890d8588e8a897ff6b2205623afe19220a815516be3f09f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284821037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d9284730cafbd6ee43b19735581341ec61a394988d8663ca8fbb3c607751fc`
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
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 12:17:03 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 12:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 12:23:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 12:23:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 12:23:39 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:42:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:42:24 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:42:24 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:42:24 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:42:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:42:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:48:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:48:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:48:17 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:48:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:48:18 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:48:19 GMT
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
	-	`sha256:0e43d1625c0bc98a1bff830848eff67d6dfa2493f875fa1339ff2118da89b033`  
		Last Modified: Tue, 16 Oct 2018 12:37:34 GMT  
		Size: 21.3 MB (21314634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c830da8d606f28186c682490e0aca0eee0c119eb24990a4e16ab1e4c0bd018c3`  
		Last Modified: Tue, 16 Oct 2018 12:37:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0c6c5af44d80aaea2413cbd37ff11f7a105c44fd878f6ff4d3ff6492df1e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9065060727d5bf1804ac2ffda920702786fef3d52485ff1b02f3ddd32c3a2359`  
		Last Modified: Tue, 16 Oct 2018 16:56:13 GMT  
		Size: 85.0 MB (84956744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f0782a7e0d8a65c6b3187f2e1f8d4dda7f6f3b0be2e6c0b0e6cf0efba80e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 894.4 KB (894362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e3f53cd48c3cf26fc266057a1f8fae75b45a638faf7f78a5439eeeacb91c31`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d576e075ea939251e4c3cda207f11cf0d725e5948dc2db426b009cf7cf84bbf`  
		Last Modified: Tue, 16 Oct 2018 16:55:46 GMT  
		Size: 2.5 MB (2457568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d68e092b1120c37d59a66565ce330dcbec8e9cdc1ce08a56f006fc9fd0cabef`  
		Last Modified: Tue, 16 Oct 2018 16:56:26 GMT  
		Size: 119.8 MB (119783993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d958bbc46b7433ab73bcbfd2d369d6ff89d1abf058990961e8eb2417aa18690`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
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
$ docker pull redmine@sha256:6506006c6556e8384b42737cf1ae55285abb7bc6c47fb72788d6a6ca9f674e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c369733df43f401e93049208ce1c127e013d35643e88424eb945df644d786e8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 20:53:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 20:53:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 21:28:34 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 21:28:35 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:48:14 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:57:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:57:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:57:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:57:50 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:11:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 10:50:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:50:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 10:50:42 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 10:50:43 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 10:50:44 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 10:50:45 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 10:50:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 11:05:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:05:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 11:05:55 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 11:05:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:05:57 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 11:05:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f7bc060ae4ca5a83308cec3b78256601cb867f16286d3270ea3be4cb5e32c6`  
		Last Modified: Wed, 05 Sep 2018 22:04:39 GMT  
		Size: 11.6 MB (11620872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5105a1607b093d30d33a52fe846b34e088c1e0ed7a845f03b4ba713362903fab`  
		Last Modified: Wed, 05 Sep 2018 22:04:34 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bd64fb33b38d9d359b397dd596fb61a0a8ddf1547e9f345c47b044638575a`  
		Last Modified: Sat, 06 Oct 2018 10:49:34 GMT  
		Size: 21.5 MB (21523076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a307ab211f7133043aa5b23f3995cae692c65a0c68d89485ec1a0f390daeb83`  
		Last Modified: Sat, 06 Oct 2018 10:49:28 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f0fcd09de56a4c3453db73ff2a68b5536a25782ec3cd175a88f643c1f1e47b`  
		Last Modified: Sat, 06 Oct 2018 11:43:13 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c117839b6b7af9feb88a7244346946f31bd20b87851a848d9dfdcb5964579c`  
		Last Modified: Tue, 16 Oct 2018 11:25:43 GMT  
		Size: 83.9 MB (83916276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f921cecea2753d559e86053d8f83b7d6a32c7803193e524e3561ca728ad8e5`  
		Last Modified: Tue, 16 Oct 2018 11:24:40 GMT  
		Size: 872.6 KB (872569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be81f5f43a343ee7c529b9f81cc650c0710c3b73a379d056337dcfecb65ba608`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41214ee194ce1ee97f5718dfb6bf3fe104d509fb208e29c11e5465a06ce590`  
		Last Modified: Tue, 16 Oct 2018 11:24:43 GMT  
		Size: 2.5 MB (2456917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81572de9dea8d35ddc16393d9a28f93d2a73170005adca3683d3b20f6a08f51`  
		Last Modified: Tue, 16 Oct 2018 11:25:56 GMT  
		Size: 119.4 MB (119363264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acaa7d09138e56476058d19381aaaea5a37e97747949b21a90bb057129a012a`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; 386

```console
$ docker pull redmine@sha256:2ec348081a57eaf520bf340ac53c8bc0bc591b01087e444f92360895274ee92f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.0 MB (297026252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5387ca01bef54604342cfdc3d5321419021184098c06aa0f4145d3c99169707b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:55:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:55:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_MAJOR=2.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 11:03:40 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 11:07:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 11:07:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 11:07:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 11:07:28 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 12:11:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 06 Oct 2018 12:12:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Oct 2018 12:12:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:12:32 GMT
ENV RAILS_ENV=production
# Sat, 06 Oct 2018 12:12:32 GMT
WORKDIR /usr/src/redmine
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 06 Oct 2018 12:12:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 06 Oct 2018 12:15:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:15:53 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 06 Oct 2018 12:15:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Sat, 06 Oct 2018 12:15:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 06 Oct 2018 12:15:54 GMT
EXPOSE 3000/tcp
# Sat, 06 Oct 2018 12:15:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3d85fde24bfb0245f2a43404d56288b33ba975a1a87cae42b0cd8f08e91b96`  
		Last Modified: Fri, 07 Sep 2018 01:56:28 GMT  
		Size: 16.3 MB (16255376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685331cae9df59b39e8797434f4413bf03c8b8e09d668edbd32a38cf79f7ff46`  
		Last Modified: Fri, 07 Sep 2018 01:56:23 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4ffe75b402823cd16746621465e2655318cb1bcef5dcc6087dced3e0e54d6`  
		Last Modified: Sat, 06 Oct 2018 11:51:24 GMT  
		Size: 21.4 MB (21350911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570908abeb882db4910499e7179f34df24ca94759ffdb8f500ccbf29f4c82b72`  
		Last Modified: Sat, 06 Oct 2018 11:51:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287383ed84e70490d31723229a8689cd1214f15bff062c433c97d596823e002`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4780d486b91a6ccef4e60245c869aba95c9323ce460cccc4ba6b2b27b9c3e2`  
		Last Modified: Sat, 06 Oct 2018 12:20:35 GMT  
		Size: 86.6 MB (86567939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da917488874f70e76407642aefca3b5da3ea6dae377dac8330eef4d5c6af90e5`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 883.7 KB (883690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789e934d8efeb407831c83881ffc13a341ae96b6f8da15977496611d1c45758`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a076bd62a262f9bb376b03835f974910579b191f5e80b699128c333da85ebad`  
		Last Modified: Sat, 06 Oct 2018 12:20:10 GMT  
		Size: 2.5 MB (2456918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e92154b472e9b58c07e6846845f9c1d279e9f85aadf37225b47815ee2a711b`  
		Last Modified: Sat, 06 Oct 2018 12:20:37 GMT  
		Size: 123.5 MB (123468319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6abb61e643043fd2c24cecb2870c247e86f12d32b3efad3de8304596d4a8f3b`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:6892ff45dcb9d0d75ab232066fb93eb6ea2ff09631aa9ca844301481f6b05193
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291977725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d214f4875ef8ec7e50427669309e77b7bc9ad57e757c20f5c369415cee95b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:02:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:02:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 13:24:00 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 13:24:02 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 13:24:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 13:24:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:27:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:33:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:33:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:33:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:33:34 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 10:50:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 09:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:11:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:11:49 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 09:11:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 09:11:54 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 09:11:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 09:12:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 09:25:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:27:32 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 09:27:36 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 09:27:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:27:42 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 09:27:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ce7eeb3f20dac82cfd60f6ee035d1c1e6630ca4bcc7ed0882ad132b4e72569`  
		Last Modified: Wed, 05 Sep 2018 13:48:00 GMT  
		Size: 12.2 MB (12206980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920f97aa329fd29885e877803e1181aceefd2d4b7f5b71d0a1eb5493726795bd`  
		Last Modified: Wed, 05 Sep 2018 13:47:54 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94603b8ff472d7fea2a5ace1fdf980201a6faa3e270deae5699c608dfd94e385`  
		Last Modified: Sat, 06 Oct 2018 10:26:51 GMT  
		Size: 22.0 MB (21990355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86697fba25e0dacebc2a0103422b0a180acee48bf6574f145125c1960f2a6e35`  
		Last Modified: Sat, 06 Oct 2018 10:26:42 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d7cd611922fe8398f0ab7da73b3d8c6ced9be611039fc7bdf71b29630091d6`  
		Last Modified: Sat, 06 Oct 2018 11:19:27 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5eee7ebcf263b703947cd7458687e948b1f214b06b96643649fd85502833e78`  
		Last Modified: Tue, 16 Oct 2018 09:48:20 GMT  
		Size: 87.2 MB (87233459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a8b184efce8965a820c356405d7da1a9f9a3203a8867e6850d9eaacb2043b9`  
		Last Modified: Tue, 16 Oct 2018 09:47:29 GMT  
		Size: 873.3 KB (873263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b504aee92fdec3cc0f29e55de5b232a4b8daba66d02c1782c4b91c2a178432`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d972edec5c7839f675b30188a75f96fb4d4b54ea9949157d7c770bc3a08be`  
		Last Modified: Tue, 16 Oct 2018 09:47:33 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cfffcc2a95bd38b68eea55a0e3adcf0f06b370c8de1b838ded8fd7e928450`  
		Last Modified: Tue, 16 Oct 2018 09:48:36 GMT  
		Size: 121.6 MB (121616558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bd90752a7be0b4856732ad7ae4351bd049eac8b2834aa3b72b5c0e25ab6bbd`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 1.8 KB (1821 bytes)  
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
$ docker pull redmine@sha256:529189d731095f3653116c4e0b400df9afac20034327a5dcdd2c8fdac9a6febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:23a4c39dfb218d59aa5396b0d530891a0dfdfb0c4c2ff2f02ea01a5cabb710b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319928605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761ccdfd32c7c1114828cae94926b3496f928bb8c5a84aa580015895ce02c2a3`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 16 Oct 2018 07:38:51 GMT
ENV PASSENGER_VERSION=5.3.5
# Tue, 16 Oct 2018 07:39:04 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 07:39:06 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 16 Oct 2018 07:39:06 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efa2ef5339be946e696537ba36e6c0bc1a7e3fc090e2be4336c503b7a8e8d94`  
		Last Modified: Tue, 16 Oct 2018 07:45:34 GMT  
		Size: 19.1 MB (19116339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf243e17df4bc4594df891389ae1fdef484dc2aa0b5647af54176a68e66750ad`  
		Last Modified: Tue, 16 Oct 2018 07:45:32 GMT  
		Size: 4.4 MB (4447457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:529189d731095f3653116c4e0b400df9afac20034327a5dcdd2c8fdac9a6febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:23a4c39dfb218d59aa5396b0d530891a0dfdfb0c4c2ff2f02ea01a5cabb710b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319928605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761ccdfd32c7c1114828cae94926b3496f928bb8c5a84aa580015895ce02c2a3`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 16 Oct 2018 07:38:51 GMT
ENV PASSENGER_VERSION=5.3.5
# Tue, 16 Oct 2018 07:39:04 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 07:39:06 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 16 Oct 2018 07:39:06 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efa2ef5339be946e696537ba36e6c0bc1a7e3fc090e2be4336c503b7a8e8d94`  
		Last Modified: Tue, 16 Oct 2018 07:45:34 GMT  
		Size: 19.1 MB (19116339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf243e17df4bc4594df891389ae1fdef484dc2aa0b5647af54176a68e66750ad`  
		Last Modified: Tue, 16 Oct 2018 07:45:32 GMT  
		Size: 4.4 MB (4447457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:529189d731095f3653116c4e0b400df9afac20034327a5dcdd2c8fdac9a6febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:23a4c39dfb218d59aa5396b0d530891a0dfdfb0c4c2ff2f02ea01a5cabb710b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319928605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761ccdfd32c7c1114828cae94926b3496f928bb8c5a84aa580015895ce02c2a3`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 16 Oct 2018 07:38:51 GMT
ENV PASSENGER_VERSION=5.3.5
# Tue, 16 Oct 2018 07:39:04 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 07:39:06 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 16 Oct 2018 07:39:06 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efa2ef5339be946e696537ba36e6c0bc1a7e3fc090e2be4336c503b7a8e8d94`  
		Last Modified: Tue, 16 Oct 2018 07:45:34 GMT  
		Size: 19.1 MB (19116339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf243e17df4bc4594df891389ae1fdef484dc2aa0b5647af54176a68e66750ad`  
		Last Modified: Tue, 16 Oct 2018 07:45:32 GMT  
		Size: 4.4 MB (4447457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:a083229cee84a1f5eef1da97b9e92a95e583965738631947b258b808df31acce
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
$ docker pull redmine@sha256:83a6ca93b262df46f3c9167c116226a7d98af59763ff79528f62b24e0cea125a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296364809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a065bb4c54b69b66685aa90ee8fcf293651dbb8967df0ea411e59a8d04f97f`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:77a13f85209375c890d8588e8a897ff6b2205623afe19220a815516be3f09f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284821037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d9284730cafbd6ee43b19735581341ec61a394988d8663ca8fbb3c607751fc`
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
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 12:17:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 12:17:03 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 12:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 12:23:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 12:23:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 12:23:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 12:23:39 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:42:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:42:24 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:42:24 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:42:24 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:42:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:42:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:48:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:48:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:48:17 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:48:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:48:18 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:48:19 GMT
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
	-	`sha256:0e43d1625c0bc98a1bff830848eff67d6dfa2493f875fa1339ff2118da89b033`  
		Last Modified: Tue, 16 Oct 2018 12:37:34 GMT  
		Size: 21.3 MB (21314634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c830da8d606f28186c682490e0aca0eee0c119eb24990a4e16ab1e4c0bd018c3`  
		Last Modified: Tue, 16 Oct 2018 12:37:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0c6c5af44d80aaea2413cbd37ff11f7a105c44fd878f6ff4d3ff6492df1e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9065060727d5bf1804ac2ffda920702786fef3d52485ff1b02f3ddd32c3a2359`  
		Last Modified: Tue, 16 Oct 2018 16:56:13 GMT  
		Size: 85.0 MB (84956744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f0782a7e0d8a65c6b3187f2e1f8d4dda7f6f3b0be2e6c0b0e6cf0efba80e9b`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 894.4 KB (894362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e3f53cd48c3cf26fc266057a1f8fae75b45a638faf7f78a5439eeeacb91c31`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d576e075ea939251e4c3cda207f11cf0d725e5948dc2db426b009cf7cf84bbf`  
		Last Modified: Tue, 16 Oct 2018 16:55:46 GMT  
		Size: 2.5 MB (2457568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d68e092b1120c37d59a66565ce330dcbec8e9cdc1ce08a56f006fc9fd0cabef`  
		Last Modified: Tue, 16 Oct 2018 16:56:26 GMT  
		Size: 119.8 MB (119783993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d958bbc46b7433ab73bcbfd2d369d6ff89d1abf058990961e8eb2417aa18690`  
		Last Modified: Tue, 16 Oct 2018 16:55:45 GMT  
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
$ docker pull redmine@sha256:6506006c6556e8384b42737cf1ae55285abb7bc6c47fb72788d6a6ca9f674e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c369733df43f401e93049208ce1c127e013d35643e88424eb945df644d786e8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 20:53:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 20:53:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 21:28:34 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 21:28:35 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 21:28:36 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:48:14 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:57:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:57:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:57:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:57:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:57:50 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 11:11:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 10:50:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:50:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 10:50:42 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 10:50:43 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 10:50:44 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 10:50:45 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 10:50:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 11:05:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:05:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 11:05:55 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 11:05:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:05:57 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 11:05:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f7bc060ae4ca5a83308cec3b78256601cb867f16286d3270ea3be4cb5e32c6`  
		Last Modified: Wed, 05 Sep 2018 22:04:39 GMT  
		Size: 11.6 MB (11620872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5105a1607b093d30d33a52fe846b34e088c1e0ed7a845f03b4ba713362903fab`  
		Last Modified: Wed, 05 Sep 2018 22:04:34 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bd64fb33b38d9d359b397dd596fb61a0a8ddf1547e9f345c47b044638575a`  
		Last Modified: Sat, 06 Oct 2018 10:49:34 GMT  
		Size: 21.5 MB (21523076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a307ab211f7133043aa5b23f3995cae692c65a0c68d89485ec1a0f390daeb83`  
		Last Modified: Sat, 06 Oct 2018 10:49:28 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f0fcd09de56a4c3453db73ff2a68b5536a25782ec3cd175a88f643c1f1e47b`  
		Last Modified: Sat, 06 Oct 2018 11:43:13 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c117839b6b7af9feb88a7244346946f31bd20b87851a848d9dfdcb5964579c`  
		Last Modified: Tue, 16 Oct 2018 11:25:43 GMT  
		Size: 83.9 MB (83916276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f921cecea2753d559e86053d8f83b7d6a32c7803193e524e3561ca728ad8e5`  
		Last Modified: Tue, 16 Oct 2018 11:24:40 GMT  
		Size: 872.6 KB (872569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be81f5f43a343ee7c529b9f81cc650c0710c3b73a379d056337dcfecb65ba608`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41214ee194ce1ee97f5718dfb6bf3fe104d509fb208e29c11e5465a06ce590`  
		Last Modified: Tue, 16 Oct 2018 11:24:43 GMT  
		Size: 2.5 MB (2456917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81572de9dea8d35ddc16393d9a28f93d2a73170005adca3683d3b20f6a08f51`  
		Last Modified: Tue, 16 Oct 2018 11:25:56 GMT  
		Size: 119.4 MB (119363264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acaa7d09138e56476058d19381aaaea5a37e97747949b21a90bb057129a012a`  
		Last Modified: Tue, 16 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:2ec348081a57eaf520bf340ac53c8bc0bc591b01087e444f92360895274ee92f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.0 MB (297026252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5387ca01bef54604342cfdc3d5321419021184098c06aa0f4145d3c99169707b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:55:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:55:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_MAJOR=2.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 07 Sep 2018 01:14:32 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 11:03:40 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 11:07:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 11:07:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 11:07:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 11:07:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 11:07:28 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 12:11:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 06 Oct 2018 12:12:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Oct 2018 12:12:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:12:32 GMT
ENV RAILS_ENV=production
# Sat, 06 Oct 2018 12:12:32 GMT
WORKDIR /usr/src/redmine
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 06 Oct 2018 12:12:32 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 06 Oct 2018 12:12:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 06 Oct 2018 12:15:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 06 Oct 2018 12:15:53 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 06 Oct 2018 12:15:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Sat, 06 Oct 2018 12:15:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 06 Oct 2018 12:15:54 GMT
EXPOSE 3000/tcp
# Sat, 06 Oct 2018 12:15:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3d85fde24bfb0245f2a43404d56288b33ba975a1a87cae42b0cd8f08e91b96`  
		Last Modified: Fri, 07 Sep 2018 01:56:28 GMT  
		Size: 16.3 MB (16255376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685331cae9df59b39e8797434f4413bf03c8b8e09d668edbd32a38cf79f7ff46`  
		Last Modified: Fri, 07 Sep 2018 01:56:23 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4ffe75b402823cd16746621465e2655318cb1bcef5dcc6087dced3e0e54d6`  
		Last Modified: Sat, 06 Oct 2018 11:51:24 GMT  
		Size: 21.4 MB (21350911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570908abeb882db4910499e7179f34df24ca94759ffdb8f500ccbf29f4c82b72`  
		Last Modified: Sat, 06 Oct 2018 11:51:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287383ed84e70490d31723229a8689cd1214f15bff062c433c97d596823e002`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4780d486b91a6ccef4e60245c869aba95c9323ce460cccc4ba6b2b27b9c3e2`  
		Last Modified: Sat, 06 Oct 2018 12:20:35 GMT  
		Size: 86.6 MB (86567939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da917488874f70e76407642aefca3b5da3ea6dae377dac8330eef4d5c6af90e5`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 883.7 KB (883690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789e934d8efeb407831c83881ffc13a341ae96b6f8da15977496611d1c45758`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a076bd62a262f9bb376b03835f974910579b191f5e80b699128c333da85ebad`  
		Last Modified: Sat, 06 Oct 2018 12:20:10 GMT  
		Size: 2.5 MB (2456918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e92154b472e9b58c07e6846845f9c1d279e9f85aadf37225b47815ee2a711b`  
		Last Modified: Sat, 06 Oct 2018 12:20:37 GMT  
		Size: 123.5 MB (123468319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6abb61e643043fd2c24cecb2870c247e86f12d32b3efad3de8304596d4a8f3b`  
		Last Modified: Sat, 06 Oct 2018 12:20:09 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:6892ff45dcb9d0d75ab232066fb93eb6ea2ff09631aa9ca844301481f6b05193
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291977725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d214f4875ef8ec7e50427669309e77b7bc9ad57e757c20f5c369415cee95b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:02:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:02:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 13:24:00 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 13:24:02 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 13:24:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 13:24:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 09:27:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 09:33:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 09:33:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 09:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 09:33:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 09:33:34 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 10:50:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 09:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:11:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:11:49 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 09:11:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 09:11:54 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 09:11:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 09:12:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 09:25:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 09:27:32 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 09:27:36 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 09:27:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:27:42 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 09:27:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ce7eeb3f20dac82cfd60f6ee035d1c1e6630ca4bcc7ed0882ad132b4e72569`  
		Last Modified: Wed, 05 Sep 2018 13:48:00 GMT  
		Size: 12.2 MB (12206980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920f97aa329fd29885e877803e1181aceefd2d4b7f5b71d0a1eb5493726795bd`  
		Last Modified: Wed, 05 Sep 2018 13:47:54 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94603b8ff472d7fea2a5ace1fdf980201a6faa3e270deae5699c608dfd94e385`  
		Last Modified: Sat, 06 Oct 2018 10:26:51 GMT  
		Size: 22.0 MB (21990355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86697fba25e0dacebc2a0103422b0a180acee48bf6574f145125c1960f2a6e35`  
		Last Modified: Sat, 06 Oct 2018 10:26:42 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d7cd611922fe8398f0ab7da73b3d8c6ced9be611039fc7bdf71b29630091d6`  
		Last Modified: Sat, 06 Oct 2018 11:19:27 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5eee7ebcf263b703947cd7458687e948b1f214b06b96643649fd85502833e78`  
		Last Modified: Tue, 16 Oct 2018 09:48:20 GMT  
		Size: 87.2 MB (87233459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a8b184efce8965a820c356405d7da1a9f9a3203a8867e6850d9eaacb2043b9`  
		Last Modified: Tue, 16 Oct 2018 09:47:29 GMT  
		Size: 873.3 KB (873263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b504aee92fdec3cc0f29e55de5b232a4b8daba66d02c1782c4b91c2a178432`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d972edec5c7839f675b30188a75f96fb4d4b54ea9949157d7c770bc3a08be`  
		Last Modified: Tue, 16 Oct 2018 09:47:33 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cfffcc2a95bd38b68eea55a0e3adcf0f06b370c8de1b838ded8fd7e928450`  
		Last Modified: Tue, 16 Oct 2018 09:48:36 GMT  
		Size: 121.6 MB (121616558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bd90752a7be0b4856732ad7ae4351bd049eac8b2834aa3b72b5c0e25ab6bbd`  
		Last Modified: Tue, 16 Oct 2018 09:47:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:432c6e4f92f99417de575204f716c78d31f76d373f0d08e17d611074349b8377
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294803487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2aa4f6ca576ee15813da5b4c5e0612f54c4bae84a0031b001e51741266633`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:19:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:19:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 14:32:02 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 14:32:02 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 14:32:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 14:32:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 06 Oct 2018 12:20:25 GMT
ENV BUNDLER_VERSION=1.16.6
# Sat, 06 Oct 2018 12:26:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 06 Oct 2018 12:26:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 06 Oct 2018 12:26:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 06 Oct 2018 12:26:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Oct 2018 12:26:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 06 Oct 2018 12:26:26 GMT
CMD ["irb"]
# Sat, 06 Oct 2018 13:14:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 11:57:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:58:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 11:58:01 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 11:58:02 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 11:58:02 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 11:58:02 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 11:58:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 12:01:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 12:01:30 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 12:01:30 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 12:01:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:01:30 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 12:01:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3371031a51ca361d3daf496dec6367d029a3ee20622539a21066cea73fd402e`  
		Last Modified: Wed, 05 Sep 2018 14:46:09 GMT  
		Size: 13.2 MB (13213766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3f2ebd8e379dfccf91b91bfcfbe54d1f942b7299c7ecea4e1acc06d6bbcdf`  
		Last Modified: Wed, 05 Sep 2018 14:46:04 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c301b5855f00dc67db17617faaece6788453a79e76cc8a53b61a4e17cb03f92`  
		Last Modified: Sat, 06 Oct 2018 12:55:31 GMT  
		Size: 22.1 MB (22127489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831d66ce995d2c3d9138b26cc4ffd4c8a850e313599be4980062aab3411c036`  
		Last Modified: Sat, 06 Oct 2018 12:55:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15f1fdb64f15ea245ffaa5a7536aeb4b181ede0e53f8e2d5760651397cb31ae`  
		Last Modified: Sat, 06 Oct 2018 13:23:25 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd6752627f0d08bbc788595df5fa8dda7dfd44367f18e2be2fcef4e0e4c43a3`  
		Last Modified: Tue, 16 Oct 2018 12:06:36 GMT  
		Size: 87.9 MB (87864657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc415f7de1494cc639b19283d9a51d8ddaa1da8727765d8cea98bde57908ae2c`  
		Last Modified: Tue, 16 Oct 2018 12:06:11 GMT  
		Size: 890.9 KB (890854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e814ea8ccfd30f68de145c73e2cadc6afb30ed0a42b4d3dc7805e6d3c6e528`  
		Last Modified: Tue, 16 Oct 2018 12:06:11 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a02837f667dcd36f53aac0acd1a26aede31025896d441ffeddb1765aae17c6a`  
		Last Modified: Tue, 16 Oct 2018 12:06:13 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bb9143ee75f9c6e8adacef5c490926f4b07b7252cde2503150b46baf8d3c9`  
		Last Modified: Tue, 16 Oct 2018 12:06:38 GMT  
		Size: 123.0 MB (123046107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f69cd524112e781b7e73ed251c7544f951e00098ec40b51b364056e65b3f37`  
		Last Modified: Tue, 16 Oct 2018 12:06:11 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:529189d731095f3653116c4e0b400df9afac20034327a5dcdd2c8fdac9a6febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:23a4c39dfb218d59aa5396b0d530891a0dfdfb0c4c2ff2f02ea01a5cabb710b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319928605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761ccdfd32c7c1114828cae94926b3496f928bb8c5a84aa580015895ce02c2a3`
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
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 00:01:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 00:05:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 00:05:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 00:05:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 00:05:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 00:05:18 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 07:34:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 07:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:34:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:34:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 07:34:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 07:34:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 07:34:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 07:38:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 07:38:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 07:38:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 07:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:38:33 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 07:38:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 16 Oct 2018 07:38:51 GMT
ENV PASSENGER_VERSION=5.3.5
# Tue, 16 Oct 2018 07:39:04 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 07:39:06 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 16 Oct 2018 07:39:06 GMT
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
	-	`sha256:ac196a6c555f2cf4a5f0b2d74dff98cc8d7e6d19fe58adcea28a21240c094ccf`  
		Last Modified: Tue, 16 Oct 2018 00:26:13 GMT  
		Size: 21.8 MB (21753429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168907cb640d981ff87b794905e64a88db9e4c2d3108b7fd821e595daa9af322`  
		Last Modified: Tue, 16 Oct 2018 00:26:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de857b3fbcea2650a6e3c415f73f8bcf8dd9371db575832741fa7cbb74d31f5`  
		Last Modified: Tue, 16 Oct 2018 07:44:30 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ce69565a821bde5191ce8ba2ae74dc76d1ff7c322094380b42dd06d7e8d65c`  
		Last Modified: Tue, 16 Oct 2018 07:44:47 GMT  
		Size: 88.0 MB (88038050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e710308f7a60e7c97be35b4927e547dac556d10f109c4166412f02ae0687e6`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 904.7 KB (904673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3405c0e26b41cf4f18f92a245f954b2e4fccffe4e1d428e55d49b1c0eb589`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6834c06e636d52ec8bb8b7ed217e60193659f9fb8c75c7e3d2bba30a3673f50c`  
		Last Modified: Tue, 16 Oct 2018 07:44:29 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f50bac9f40554c37e888e8c067a2b43fc5f4d475a97e91f99119d9d834313c`  
		Last Modified: Tue, 16 Oct 2018 07:44:53 GMT  
		Size: 125.1 MB (125085771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fbfb62eba3ce5ccd7f4861c33629746673e7039787be9ba2df8d87ea77f45`  
		Last Modified: Tue, 16 Oct 2018 07:44:28 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efa2ef5339be946e696537ba36e6c0bc1a7e3fc090e2be4336c503b7a8e8d94`  
		Last Modified: Tue, 16 Oct 2018 07:45:34 GMT  
		Size: 19.1 MB (19116339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf243e17df4bc4594df891389ae1fdef484dc2aa0b5647af54176a68e66750ad`  
		Last Modified: Tue, 16 Oct 2018 07:45:32 GMT  
		Size: 4.4 MB (4447457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
