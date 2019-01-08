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
$ docker pull redmine@sha256:446018cf41aec6290b4754e0e506236663e260de2edcd37949bef7c43a8619f7
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
$ docker pull redmine@sha256:f7d48be415a8f88eecf3cb9b1bee0c72a5f7f8b335620df2bce2b640e012fcf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289908830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f64e641bd51fe86191d6d01489b5ee6edc28ea8f938904780976f65a019d14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:02:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:02:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:05:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:05:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:05:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:05:22 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:09:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:10:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:10:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:10:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:10:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:10:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:10:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 07 Jan 2019 23:10:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:13:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:13:11 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:13:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:13:11 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:13:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:51187a3c83827ee89a8f32a6003d4d769a127c593dbfa178b52215e8c43c54ce`  
		Last Modified: Mon, 07 Jan 2019 22:48:20 GMT  
		Size: 21.1 MB (21096096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554eff91aeb8ad24bea95183154d0430f270f855dcc380c3649a08a2dea3c3bb`  
		Last Modified: Mon, 07 Jan 2019 22:48:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8f0b69962ce93239d9e93530481ed17fe1331810b8dc584423904b5f5f8c3`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120d24658f3ac5782e76c90e82eaca7143eb1b14f66280f49ace9730a1eb792b`  
		Last Modified: Mon, 07 Jan 2019 23:18:43 GMT  
		Size: 88.0 MB (88049414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c2d20af1bcecb94c92be4bb908945799f640602f8c90cb232d2a1c2f37fa3`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 1.3 MB (1304197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02dbbcf7558eb071301278fdd5ec614a5a68ac93a86e1971a09a035dd024bbd`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc380c25945dd05fe122ddd78db9095649a1e374b4c308ecc12a505d0dc8e08`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e883e0d7e4084cd0e444bd78884dfbffa8513e623b741553be041d9e2de059`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3760b817f8a2207e8a132fbf9d2897b61e84d7bfe64248435e9db5ee7530ba5`  
		Last Modified: Mon, 07 Jan 2019 23:18:44 GMT  
		Size: 118.8 MB (118782668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a051a1a0459adf7816d185c08837874553a0dae5945e7a2abf2325d91b1b8204`  
		Last Modified: Mon, 07 Jan 2019 23:18:25 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:7b86acdd150207b824c909b7a910401e46b0d516770d050a4a071f1c0c1637ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280770695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074941972861d162e2272ecee6572ab020669189b19b6172c488afb59000db4c`
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
# Wed, 26 Dec 2018 10:27:33 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 10:07:06 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:13:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:13:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:13:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:13:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:13:19 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:13:19 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:15:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:15:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:16:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:16:09 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:16:09 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:16:10 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:16:11 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:16:11 GMT
ENV REDMINE_VERSION=3.4.7
# Fri, 28 Dec 2018 11:16:12 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Fri, 28 Dec 2018 11:16:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:21:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:21:58 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:21:58 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:21:59 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:21:59 GMT
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
	-	`sha256:a269efd2392b4c4900ee9c2bd9ea4088ba0f56ab763dca250610eb45b7951d73`  
		Last Modified: Fri, 28 Dec 2018 10:50:21 GMT  
		Size: 23.2 MB (23227228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eec28fe16e03b83143955fcb414d82ecae1b939fc4ebeb0a0f8b7d7feb6a9c7`  
		Last Modified: Fri, 28 Dec 2018 10:50:15 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8d16eeb829a3f39124f4d62f9df03e192e8b6ddc3b4cde4234beca1b721745`  
		Last Modified: Fri, 28 Dec 2018 11:30:18 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774eea0e161af243071b2cf05cb3094788a4dcb0c738b48a3214f89201530a04`  
		Last Modified: Fri, 28 Dec 2018 11:30:47 GMT  
		Size: 85.0 MB (84975890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4ff6d8449b6f9416eb809b379795967350db0a21200d26b5168fac4d289e95`  
		Last Modified: Fri, 28 Dec 2018 11:30:19 GMT  
		Size: 1.3 MB (1262283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c25687c8dccdc34700600dea25a8dd7a94dd9d1f2919118bb87e7c4a9d8314b`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e195e4f9cbbee450ac6245515f6acbbe41818b9827517f5acf4b6169ee3d59`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa2bf0ec671defe06f3cf1c416375e00594aeca9c3022cc0356c33ad791ab8`  
		Last Modified: Fri, 28 Dec 2018 11:30:19 GMT  
		Size: 2.5 MB (2460528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34678d58160f0856b0db8d68d16cd4bbb4d38427fcccb9ae05af7d4cc254a3f`  
		Last Modified: Fri, 28 Dec 2018 11:30:48 GMT  
		Size: 113.4 MB (113408258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0408d561e71fa255bf4d1f45ef62faee8ca3da5ec7ea2d53ae9837bc7e4acc1f`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0e30fc1f1bfe7ab23af846826e4dc5e21bb101bc41eed3511f08015573e7b03d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271656231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66fb271cc14b52f5abb2fd8003a13a5dc9adced2c502ce8c60d553084aaf36d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:10:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:10:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:07:07 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 18:07:08 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 18:07:08 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 18:07:09 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:07:09 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:12:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:12:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:12:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:12:55 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:28:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:29:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:29:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:29:53 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:29:54 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:29:54 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:29:56 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:29:56 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 31 Dec 2018 18:29:56 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 31 Dec 2018 18:30:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:35:09 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:35:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:35:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:35:10 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:35:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c1af42a2126d2c7086d23c31787ae5b0829e4ded2653f2a4932b36c9d97f8`  
		Last Modified: Mon, 31 Dec 2018 18:04:43 GMT  
		Size: 11.0 MB (10965635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a38dca6b5e520625b43621012d0051754501d0dccd543da7ca400a07adcbf03`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b2dd1545ac8c732c3c758299389c40a54e1f19551f703aed98904f0101642`  
		Last Modified: Mon, 31 Dec 2018 18:05:29 GMT  
		Size: 21.2 MB (21184693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bd021c23a21437f6d037340ed3b775dcac1555daf228380b96707f414c1ac1`  
		Last Modified: Mon, 31 Dec 2018 18:05:23 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23fc10a606c718e1ffcce4da3b7a51e74ff9f1ec792e74ada25f470d459016`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7acbaedfc77cfe69e0d4e7439a53f7a02c64bb9066cd6a2083e8168eb3f5a4`  
		Last Modified: Mon, 31 Dec 2018 18:43:00 GMT  
		Size: 81.8 MB (81781492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc28b8a285967fc1f5f99e10b4c408929fcc38ce2d9e82b2d71063e4f452dd0`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 1.3 MB (1254533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc70eec33c6c72657a8d1870ddd083570c7645e7e0a82a523eadd0aa13e6b2dc`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed14376ec90435187baa3186a34f0d574e74141655737f65c4620ef48581d43`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7ff08c4c652809d853eba74648cf9f5cc9a1a87d7e491c54ff0e0bf1793d54`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 2.5 MB (2460530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3ec2b0c2ccb09d59a1f48215aa46c722d9b3ab54b21c1f818f440d1f1129a3`  
		Last Modified: Mon, 31 Dec 2018 18:43:04 GMT  
		Size: 111.9 MB (111930356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26af1ac689a2b7fbb4cdab5081fd49b9258aff5d34f7698798eb903a67a6880`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6b155ccd5a4e3961c0ff9624344409507b322e8584d0d77392990bd5a1459b85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277023240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be779b2b46d126e114118969ba8c8e9af972ec3f3127b15af5a14719739b0ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:37:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 30 Dec 2018 00:11:21 GMT
ENV RUBY_MAJOR=2.4
# Sun, 30 Dec 2018 00:11:21 GMT
ENV RUBY_VERSION=2.4.5
# Sun, 30 Dec 2018 00:11:22 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sun, 30 Dec 2018 00:11:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sun, 30 Dec 2018 00:11:25 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:22:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:22:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:22:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:22:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:23:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:23:01 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:50:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:54:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:54:52 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:54:56 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:54:58 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:55:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:55:07 GMT
ENV REDMINE_VERSION=3.4.7
# Sun, 30 Dec 2018 05:55:10 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sun, 30 Dec 2018 05:55:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 06:08:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 06:08:36 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 06:08:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 06:08:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 06:08:38 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 06:08:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a79252ba57d5ab11d990e3ea541ba295171cb39dbc89303ed471ea63162f03`  
		Last Modified: Sun, 30 Dec 2018 00:43:21 GMT  
		Size: 11.7 MB (11700955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c477982f06a4815361be67e18ed66bbc8664ffadfd7356e85227b9872ae2a1`  
		Last Modified: Sun, 30 Dec 2018 00:43:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a095329b4aa8efa0ec974e9d0515e73cc66bf5d967c0777eb21b61d9dd661fe3`  
		Last Modified: Sun, 30 Dec 2018 00:44:57 GMT  
		Size: 21.6 MB (21582393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17da02d0b6a5272f38c23c50bc7389b5b1ec34a76bde76524973ff0d5e908579`  
		Last Modified: Sun, 30 Dec 2018 00:44:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918883ed56723916fe8ff9b6424ff0a9214e56ae158329f50cdfc69747aa302c`  
		Last Modified: Sun, 30 Dec 2018 06:26:32 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34c830a3fece94920e126a5d3f0a161baac962fde77b7539b94759d2a68ef2b`  
		Last Modified: Sun, 30 Dec 2018 06:27:02 GMT  
		Size: 83.9 MB (83924439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02c84ef29fa9cee1a2d1fe4d6b5856cf74cdd4fc3e35607a772269755a5b23f`  
		Last Modified: Sun, 30 Dec 2018 06:26:32 GMT  
		Size: 1.2 MB (1239883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a7cefd59d96a5c6de06aea0dc974f4047e4fa56902f73d49b9b4a39cd76f6a`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ee78ab62f91c34a329a30d054949cefe982edc456feb3f13d5ab877eae987c`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008412c74b77033cc23bd0974c2173f8ba4f1e15f857101b6719e9fb27d4d3d`  
		Last Modified: Sun, 30 Dec 2018 06:26:31 GMT  
		Size: 2.5 MB (2459976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb122552a2e42b98396f9fdb838b6d10ca2b569b490b3362c38bbf1cfbf0530a`  
		Last Modified: Sun, 30 Dec 2018 06:27:05 GMT  
		Size: 113.0 MB (112994791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d70bd14f1550eeec65d412f871642f2a4f04f4171774ea6bcb2dd4bdf260003`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:87bb51990fcc3273a031fdbb72dfcb2be51b1a332c9a40d6f04a2fb3917241b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294745554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c935288cb4ec5b0c13f2459b6325b89a0077cb500ee20baa1fa233f53de4f36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:03:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:03:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 18:16:46 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:16:46 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:20:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:20:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:20:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:20:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:20:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:20:49 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:02:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:03:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:03:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:03:22 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:03:22 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:03:22 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:03:23 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:03:23 GMT
ENV REDMINE_VERSION=3.4.7
# Sun, 30 Dec 2018 05:03:23 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sun, 30 Dec 2018 05:03:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:06:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:06:37 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:06:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:06:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:06:37 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:06:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe2e2439d98a682ab58f2b93a3b7a3398da79f7a394e5b779b2d54f8f9aa36e`  
		Last Modified: Sat, 29 Dec 2018 19:03:07 GMT  
		Size: 16.3 MB (16334516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167bf4d165c9e79aa252cf87ede7ed1a4b0e9f5ca48dddd741d329159a86f73`  
		Last Modified: Sat, 29 Dec 2018 19:03:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111b16e9a7b63ca507ea9edb82bf75f7f71c5144427a82b693fac6f59ccea5e8`  
		Last Modified: Sat, 29 Dec 2018 19:03:50 GMT  
		Size: 21.4 MB (21416478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95daaf1744fb2e11e8d438f819a6f3793518360781199abacebf6b778e4679f`  
		Last Modified: Sat, 29 Dec 2018 19:03:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4874ed4ec4b497e55a19525b5647840df09703f391e72ad93a8fcc7c5c3d66d2`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f442cbbd51d69287524e0820f1253fba9f6fc0cf6f439f8f0b0ad0dfc8b96d9d`  
		Last Modified: Sun, 30 Dec 2018 05:12:02 GMT  
		Size: 90.0 MB (89988573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8eeb0005b35c728c73f45ac0bf27c66fb7681951d2d58cda61cde72177fd3ee`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 1.3 MB (1271741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cf9dd2c094cc9944ab95e15bc4f2f5586950a5525de8b7b3a431aa40342b0e`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaec8d36bac23dace693342ab829a643461a9eae2b660c9532e0b1fce8923042`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd723106aec01675fa3669417dcb5e668ec41e17f89a90a13d7013e44f9af8`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 2.5 MB (2459997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b67eafe43d76d725736d130d3fe37c687d76eefa791751877194d364e8a7d19`  
		Last Modified: Sun, 30 Dec 2018 05:12:01 GMT  
		Size: 117.2 MB (117212645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935ef9992ffdc8065b1caadbedfe826eea4deadfa57c9139c508eab005d1410a`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:4d3b631ba89d7383b03e55714727c4f5fe5ecf75e534c9054a599254b79b0552
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286239599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02751099a8f7ae6664a0240b9a432d9ef1d74ae2ce1476aa42eb8bd12540eea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:53:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:53:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:14:25 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 15:14:27 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 15:14:29 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 15:14:31 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:14:33 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:21:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:21:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:21:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:21:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:21:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:21:21 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 21:04:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 21:05:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:06:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:06:23 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 21:06:24 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 21:06:25 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 21:06:28 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 21:06:29 GMT
ENV REDMINE_VERSION=3.4.7
# Sat, 29 Dec 2018 21:06:30 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sat, 29 Dec 2018 21:06:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:13:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:13:05 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:13:05 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:13:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:13:08 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:13:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcd0d5da45458d86abc5bed20cdd7b8dc9814b34eb844bb0e941546507cb85`  
		Last Modified: Sat, 29 Dec 2018 15:35:30 GMT  
		Size: 12.3 MB (12283468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3f7680937dd6058acb2d73f6fd2c6156150096802b79e73ac21d495ec8113c`  
		Last Modified: Sat, 29 Dec 2018 15:35:24 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f12ccd52d1cb1e5738bf27a4a629d0ce5ac212ea8d3db7b41637658a795a56`  
		Last Modified: Sat, 29 Dec 2018 15:37:03 GMT  
		Size: 22.1 MB (22055832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed278c75bf1275af3fbc7c7c5ff10ff497ba04ecec38d831eaed9fc9363f3cf`  
		Last Modified: Sat, 29 Dec 2018 15:36:59 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1929ef83ca67df21aeb6b50705552a222a30965c040a163ab38266bb220b5ced`  
		Last Modified: Sat, 29 Dec 2018 21:22:48 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3ef8504aeb16795039251a97c399a6bafa3846d7bbdadb142bd7c50dd6b956`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 87.2 MB (87240846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78006a01b5e9b2b96b84bab0e3ce2cba73d310af056086abbdf63bdbf8984b07`  
		Last Modified: Sat, 29 Dec 2018 21:22:49 GMT  
		Size: 1.2 MB (1227937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53950611768feb71f5670d42597d66285b58c5b8378340183256dee61e759d31`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0559e1b03a028e650ab8252b959cec597e7ca68594983804be11726ca49f990e`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f8e6bdf6c394c600b2a853b6c97c3c757ed652f01b664afe55973c2cdab814`  
		Last Modified: Sat, 29 Dec 2018 21:22:47 GMT  
		Size: 2.5 MB (2460527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de980a821c376282fdd01cadb9800d0221fe7c80b1b18e805d438752bacc2513`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 115.4 MB (115360873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa76a05de47443e9dbab5fddffef87c50714fd6f3a1f240be21a99b90f2331e3`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:d1ff4890fb156c623965dd4690f56f3efd4db5d822028b1062e9a07ca9ebb726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 MB (286548665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54309502071fbe90fd0ef1ab281e2036823587501751ce7366b56076b71c0b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:49:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:49:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:59:38 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 15:59:38 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 15:59:39 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 15:59:39 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:59:39 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 16:02:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 16:02:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 16:02:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 16:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 16:02:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 16:02:38 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:42:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:43:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:43:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:43:23 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:43:23 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:43:23 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:43:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:43:24 GMT
ENV REDMINE_VERSION=3.4.7
# Sat, 29 Dec 2018 18:43:24 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sat, 29 Dec 2018 18:43:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:45:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:45:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:45:54 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:45:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:45:55 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:45:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662841ebe4a1deb1e3f8cb13b2a42afd6aa374e5f3e22406610ff5e010175c83`  
		Last Modified: Sat, 29 Dec 2018 16:08:51 GMT  
		Size: 13.3 MB (13292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05810924bf036f5873e63e5db8c1723d567d01164fb34ddb27908cd0fa04e69f`  
		Last Modified: Sat, 29 Dec 2018 16:08:48 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c335cd8bd0a84593de2144356c3f725d687ffa8099dce10f961012440b6f99b6`  
		Last Modified: Sat, 29 Dec 2018 16:09:35 GMT  
		Size: 22.2 MB (22196785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84292b1980b41ff16898071c4cc5bd764f64d635e19041cd3d6190865d4bffd6`  
		Last Modified: Sat, 29 Dec 2018 16:09:32 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ca836fc8188544ce2b41711730f74043e32458a16bd6095d66fe9ca626ce52`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab5afa6b08d2acb6239aca36430e4407438755cd65b4b2bf34437fbd9d9d10`  
		Last Modified: Sat, 29 Dec 2018 18:50:16 GMT  
		Size: 87.9 MB (87867811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482c19faf65900a2e1536b1248e8390710b12b2b0e78f966244a29c0b9357b6a`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 1.3 MB (1293962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ee282080dea5e3eb2ab889be9f3842e17176bf743b40084f2a474cadd08c5`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d21c5b5bedfb1a24853e90306dc1ed3c6a78b6e1ee3393a3487e5a87d98884`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e30d28e910c8e0c986f0861492114938581003c12957b44c6ff595ccb967c4`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 2.5 MB (2459985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0deb03d7f2d23dd4594aafba4ab0d87dd2ad409d329bc776b7c56786fab3`  
		Last Modified: Sat, 29 Dec 2018 18:50:15 GMT  
		Size: 114.2 MB (114227098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd53dd41057b3dcaf13afd8f6f31ac0b6ae1d1fe85fd57d80df4bd8cbbaeb6a`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:ac0803e2e1812f33202bcc70d4990f548f3f0359998e8aebf1e81124f23a71d8
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
$ docker pull redmine@sha256:dfca7aa88db37b3828af2e473cec7a2c60187638105839934bb830446f23334a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302352785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a7bf4cba13d7f6795235bac19d92e7c4ce0ff903b6f7acfe974ec1ef4f5bf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:44:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:44:36 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 06:44:37 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:30:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:30:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:30:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:30:16 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:13:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:14:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:14:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:14:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:14:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:14:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_VERSION=3.3.9
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Mon, 07 Jan 2019 23:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:17:17 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:17:18 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:17:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:17:18 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:17:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fe64c22f71d0c4aaed626ca72a76ddc92d5d8f2aec13fd4dd909dd290e9685`  
		Last Modified: Sat, 29 Dec 2018 07:05:59 GMT  
		Size: 14.5 MB (14535091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4838f41f6e9ea9e536f6bf2859cfe280d4328cc36b7fb20e09f4c7609a77a9`  
		Last Modified: Sat, 29 Dec 2018 07:05:54 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6837b5964232ec769be0e7896cfb2b4935e25fcad8442c9876393d6a5f33b9a1`  
		Last Modified: Mon, 07 Jan 2019 22:49:15 GMT  
		Size: 33.9 MB (33895208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f366a493f78d8142b8bb86051b05b61babb732fc3e2e8a61f6e209f96f34cf`  
		Last Modified: Mon, 07 Jan 2019 22:49:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c687a8f767181708248f86f52234d45ade659b7349813498210c7531720572`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f648fe09002cb573daac67ce4055b6561d6b06c532368e208e0d1ee5088fa4`  
		Last Modified: Mon, 07 Jan 2019 23:19:15 GMT  
		Size: 86.5 MB (86452693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920ec79458b30a9addc3d515742a060d60cdeaa0f7c857f803e1c828562f42a7`  
		Last Modified: Mon, 07 Jan 2019 23:18:59 GMT  
		Size: 1.3 MB (1304257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a908695033ee3f76b1f343db4faf8e671fccc11954b74b311e0310a9a8c03ad`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61ab471739cf8f6d24cd9140ef432596d106c80f6acff7ca2305edea6d59327`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112b12e9f4b817ac5ce9bc72ca71fdbe54d4dce9756d51e7b8c2bc40195c73fb`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16200a6c322c4511cd950965f73696f48d158676418e78585633a46efccfd0fe`  
		Last Modified: Mon, 07 Jan 2019 23:19:16 GMT  
		Size: 118.4 MB (118442269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a76402a72be2c29a7eff9bb8084d5e3fa9087318aeb7901d7d922bf6521dc`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:745647e19c3c5863b42a34046910ec104922f6dc322f679e485f158e10c92d38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295480414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df723859b6c3865ee9bfef9cecd9051ee32592dbddd91b11eac39558141f9ba`
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
# Wed, 26 Dec 2018 10:53:01 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 10:31:47 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:36:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:36:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:36:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:36:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:36:34 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:36:34 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:22:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:22:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:23:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:23:13 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:23:13 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:23:14 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:23:15 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:23:15 GMT
ENV REDMINE_VERSION=3.3.9
# Fri, 28 Dec 2018 11:23:15 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Fri, 28 Dec 2018 11:23:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:29:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:29:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:29:21 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:29:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:29:22 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:29:22 GMT
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
	-	`sha256:685a54ca0ac68c88e355fbbb9c0f5a29e354d2dcfbbeebe95abdaed65fd371fc`  
		Last Modified: Fri, 28 Dec 2018 10:51:45 GMT  
		Size: 35.2 MB (35180083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f69f0d2acf65136b573339780598fa03188e27778e7c259dfd4c0f1130e19dd`  
		Last Modified: Fri, 28 Dec 2018 10:51:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6964e1d5920e364bf97f7a5412d8437412f5e98423d18914a0885e01c1acd8ac`  
		Last Modified: Fri, 28 Dec 2018 11:30:58 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961115a7c49fed81695f3bc1e709be21b303bfb80864b1bf15d3ad92efe33057`  
		Last Modified: Fri, 28 Dec 2018 11:31:25 GMT  
		Size: 83.8 MB (83794052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bee0f1ffb45ea30228009dc3d9cec234268acb394c68821ba9f3cafcc7ac51`  
		Last Modified: Fri, 28 Dec 2018 11:30:58 GMT  
		Size: 1.3 MB (1262378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7782739c8808849d61835a4e95af9e1e5c9e8825fab80c5b6518164530b6cb4`  
		Last Modified: Fri, 28 Dec 2018 11:30:57 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2992d4cc8f7c5e693d3a756fa5fa0c9374120cb2f843c09ff62cf6d0b7a8bb3f`  
		Last Modified: Fri, 28 Dec 2018 11:30:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f03d6973f38eade5ef2c30c040a3997408865b76da4eccf54712a1ea968d5b`  
		Last Modified: Fri, 28 Dec 2018 11:30:58 GMT  
		Size: 2.4 MB (2395534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3a340b9941638199ec5439070c7dd80511fda80ca7bdd96ab9ed74cee19be1`  
		Last Modified: Fri, 28 Dec 2018 11:31:30 GMT  
		Size: 116.4 MB (116351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf40d071bf62297194c7a82203bc3d82b6338d5d852910706157d093d51e92d`  
		Last Modified: Fri, 28 Dec 2018 11:30:57 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:298d77a69880b5ec53d9dc60341e46c820e9fefdcfa0778a40d43882ebe0f9ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282990286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123f045c6e1684d81b39110aba6ec5c85e205b3b21487db068e74646e0bf1f81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:31:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:31:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:31:54 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 18:31:55 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 18:31:55 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 18:31:56 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:31:56 GMT
ENV BUNDLER_VERSION=1.17.3
# Mon, 31 Dec 2018 18:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 31 Dec 2018 18:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 31 Dec 2018 18:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 31 Dec 2018 18:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Dec 2018 18:16:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 31 Dec 2018 18:16:59 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:35:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:35:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:36:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:36:13 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:36:14 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:36:14 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:36:16 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:36:16 GMT
ENV REDMINE_VERSION=3.3.9
# Mon, 31 Dec 2018 18:36:17 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Mon, 31 Dec 2018 18:36:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:41:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:41:41 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:41:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:41:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:41:43 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:41:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0feb2475b38fef6b552f5fe5befca12af884537a1fe8fe47d734b3df968d92`  
		Last Modified: Mon, 31 Dec 2018 18:18:07 GMT  
		Size: 12.0 MB (11955694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cb2642d9f630268e9da68e5d1601e2bfaeafb65226c4510b0c730c05de02e1`  
		Last Modified: Mon, 31 Dec 2018 18:18:06 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1508b0c11255db645ac274164f7a8b2374732ce9d8e80a2594b583175c473d7`  
		Last Modified: Mon, 31 Dec 2018 18:18:16 GMT  
		Size: 33.0 MB (32996123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b9a00b4e2bf7dbe2960c3447b4a706a312c1f3e27077b3b58279a5eb92203d`  
		Last Modified: Mon, 31 Dec 2018 18:18:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2482e02535b51705442b78eed96abbff19d596ec0fedce8d456402e48a5779d8`  
		Last Modified: Mon, 31 Dec 2018 18:43:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639ddcba9ccbcb7ed8775066c996d56b1290f3e6ac3ce6c1abd82a306590276`  
		Last Modified: Mon, 31 Dec 2018 18:43:39 GMT  
		Size: 80.7 MB (80667641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9da4290914086311776518c8020713e2b9337c96eb385a970f1a33bb79102`  
		Last Modified: Mon, 31 Dec 2018 18:43:16 GMT  
		Size: 1.3 MB (1254735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949897a0bfd4da1f2452dedf0721f7886fa7aefcf88bb2ae092501bec1a5773a`  
		Last Modified: Mon, 31 Dec 2018 18:43:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eeff8708c7947408b504c061bf070f8a15e15bd612f260d498927ea28b75b71`  
		Last Modified: Mon, 31 Dec 2018 18:43:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db8bc9adf17957b0ae8434fa1f80c0d4183cccbd86a1742cdb05705c138ed1`  
		Last Modified: Mon, 31 Dec 2018 18:43:16 GMT  
		Size: 2.4 MB (2395538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757b0c0e1dea0d1f746bdc10f358904e8f26cbcfafa3cc9917be5e95a4b8be3`  
		Last Modified: Mon, 31 Dec 2018 18:43:42 GMT  
		Size: 111.6 MB (111641551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75259cd93af0e594c23be4589e46f12e6d8163998f73bd3a82ce1fa188b7099f`  
		Last Modified: Mon, 31 Dec 2018 18:43:14 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:809103a868d3fd26620a1f77895a5242a13316fb323cc67eed0ba615ea53c81d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.4 MB (289386607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b9138135f874f0f045c647c3407bd3a93aab3f7c9c6bf99f26c0db5b5ca8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sun, 30 Dec 2018 00:31:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 00:31:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 30 Dec 2018 00:31:39 GMT
ENV RUBY_MAJOR=2.3
# Sun, 30 Dec 2018 00:31:39 GMT
ENV RUBY_VERSION=2.3.8
# Sun, 30 Dec 2018 00:31:40 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sun, 30 Dec 2018 00:31:41 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sun, 30 Dec 2018 00:31:42 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:41:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:41:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:41:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:41:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:41:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:41:18 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 06:08:51 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 06:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 06:11:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 06:11:56 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 06:11:57 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 06:11:58 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 06:12:00 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 06:12:01 GMT
ENV REDMINE_VERSION=3.3.9
# Sun, 30 Dec 2018 06:12:01 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sun, 30 Dec 2018 06:12:07 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 06:25:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 06:25:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 06:25:07 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 06:25:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 06:25:08 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 06:25:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a13a7271f38429aaac7ec7bfe23456403934582cb6bafed9dc34e7b5a6e810f`  
		Last Modified: Sun, 30 Dec 2018 00:45:59 GMT  
		Size: 12.8 MB (12782241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f170eef54752e743acf4cd36a6a0ba4e201a414ba7fd8eeb01d2c4f1d7ce3e`  
		Last Modified: Sun, 30 Dec 2018 00:45:50 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cd1306f5738f901983fc448b8da0b035f9f662344bb8e264ca66530836829`  
		Last Modified: Sun, 30 Dec 2018 00:46:12 GMT  
		Size: 34.5 MB (34457183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dd98253520bb01488a78120d08138872d9a0ed58e1fd6ce982bcc45c36f248`  
		Last Modified: Sun, 30 Dec 2018 00:45:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869562109ce4cc9f14408469dd1610815393b4c401ca09f874432e393a56f33`  
		Last Modified: Sun, 30 Dec 2018 06:27:23 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2929b5e03c00a569f796407cad0df89b245c3f6ef6cf7b5f7f124e5d7554840`  
		Last Modified: Sun, 30 Dec 2018 06:27:51 GMT  
		Size: 82.7 MB (82732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e7851945105eb29dd83fdba8070e4155e4e7334c69b60e12a5567ab75a30a9`  
		Last Modified: Sun, 30 Dec 2018 06:27:23 GMT  
		Size: 1.2 MB (1239908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e10ae698bb2eb599ae8c4888f18025a62e5fee69facff97208955683c6e70d8`  
		Last Modified: Sun, 30 Dec 2018 06:27:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f7529cc359f61024438936caad7e2b27a086a5bd3fb2e47d27b66d68ffcde`  
		Last Modified: Sun, 30 Dec 2018 06:27:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219cc465669e711d3b407c8c39b7f673f8bbcd59184dea34f30416fab817e9b0`  
		Last Modified: Sun, 30 Dec 2018 06:27:20 GMT  
		Size: 2.4 MB (2395152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df14de3676c6bf3d1295b631eb2c1e706767f5ab6f38f8be9add41798d7a2f1d`  
		Last Modified: Sun, 30 Dec 2018 06:27:54 GMT  
		Size: 112.7 MB (112658615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624efd244caa709c171ad4860e7c9386b9778296cd598ef51340848d3956a29f`  
		Last Modified: Sun, 30 Dec 2018 06:27:19 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:3c0861d0433b916a5c329887e128d2c7785b718481d851656780a41473885002
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305940216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13bab03dfe55f22331a0894e3a4abf3ee79898d2ba597635e2114ef8dcecfed9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:43:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:43:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:43:40 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 18:43:40 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 18:43:40 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 18:43:41 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:43:41 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:47:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:47:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:47:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:47:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:47:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:47:16 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:06:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:07:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:07:20 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:07:20 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:07:20 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:07:21 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:07:21 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:07:21 GMT
ENV REDMINE_VERSION=3.3.9
# Sun, 30 Dec 2018 05:07:22 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sun, 30 Dec 2018 05:07:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:10:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:10:47 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:10:47 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:10:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:10:48 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:10:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6620f89ddfff3bfc647b9a5868de9ce500ce907d92dfdb864596c0a4d0dd9029`  
		Last Modified: Sat, 29 Dec 2018 19:04:34 GMT  
		Size: 17.6 MB (17621283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78f5af1571403538965bf929a103f185f24422d7b36257cc8c9a3eca0acb5b4`  
		Last Modified: Sat, 29 Dec 2018 19:04:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db2c33085b296e296b1ae0a1648c7b19e2b0e1ac2df78f99e543563af18de86`  
		Last Modified: Sat, 29 Dec 2018 19:04:38 GMT  
		Size: 33.1 MB (33134295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f746ba8dc61138fa0f29145db6c86be78d0177d577cfdb52f040657db3e9f75`  
		Last Modified: Sat, 29 Dec 2018 19:04:29 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba30a9bf939688159a0c302eb9b0291035e58f7193a45a51d1c5de67c17c3b`  
		Last Modified: Sun, 30 Dec 2018 05:12:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56471ce008c4d33a94968e3e6a0726e9940acb6085f978fdfba13a50cf34af0`  
		Last Modified: Sun, 30 Dec 2018 05:12:33 GMT  
		Size: 88.5 MB (88540842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268ddb951e1469843b07fe4a3b31ed84ed7bf7b17cc503c37acd9710d3d68ed6`  
		Last Modified: Sun, 30 Dec 2018 05:12:09 GMT  
		Size: 1.3 MB (1271808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b96ae36f2b75a40062e026548f7cf93940e1ff72a85e25777b0fec1c7d51a26`  
		Last Modified: Sun, 30 Dec 2018 05:12:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88651bf4cbe360980bfb68303bf51b5ebb832e0cfba8e1d1820435e51ae055b8`  
		Last Modified: Sun, 30 Dec 2018 05:12:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e957f71840d241848c010b3f3adfe2eb5c1e3d3ac81d5e9a7f257b754bac1aac`  
		Last Modified: Sun, 30 Dec 2018 05:12:09 GMT  
		Size: 2.4 MB (2395149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba64c5ed9745b9201ee751dad0c86b28f6cb2d2ee5808f634b858514e925ce11`  
		Last Modified: Sun, 30 Dec 2018 05:12:33 GMT  
		Size: 116.9 MB (116915238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2808ba4e19327368b018730c1490825f0f9105c3555bcc432341fd33732bfa3`  
		Last Modified: Sun, 30 Dec 2018 05:12:08 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:0f3ab06b7576a047997691345dfd1ecdc15a55d9edf4077d8afc33879c078ffa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299142126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2670d94bf8436b27b19391e6fe830988422ad57a444e6d868b082911a7310aaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:26:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:26:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:26:44 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 15:26:46 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 15:26:49 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 15:26:52 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:26:55 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:33:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:33:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:33:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:33:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:33:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:33:25 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 21:13:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 21:14:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:14:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:14:52 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 21:14:53 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 21:14:54 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 21:14:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 21:14:58 GMT
ENV REDMINE_VERSION=3.3.9
# Sat, 29 Dec 2018 21:14:59 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sat, 29 Dec 2018 21:15:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:21:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:21:31 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:21:32 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:21:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:21:36 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:21:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14976ccba8c4c979005a699a007c967bdac52af41f68001ff4bf8e617e60e34b`  
		Last Modified: Sat, 29 Dec 2018 15:37:48 GMT  
		Size: 13.6 MB (13633389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb2c936dd4b49bf6a6ae330d8a92a8cd4ecc5b46cc22173426333d53bc4b115`  
		Last Modified: Sat, 29 Dec 2018 15:37:45 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c42dc3b26a1642624a4c713c349a0c51956e5eee5fcdb06ef8fea8a225b4128`  
		Last Modified: Sat, 29 Dec 2018 15:37:54 GMT  
		Size: 35.3 MB (35315333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd46b76ea95c3895e2fcaa0d17609abc95325df36597678e1001dd2a0e08bae4`  
		Last Modified: Sat, 29 Dec 2018 15:37:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa42db8e970c1470ce5d446514006062718d72342323115f3088548e069a44f`  
		Last Modified: Sat, 29 Dec 2018 21:23:24 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0daf7ff75d25d57027ae49882177ff311a2b0cf21d7774a1dec36133b541d1c2`  
		Last Modified: Sat, 29 Dec 2018 21:23:42 GMT  
		Size: 85.9 MB (85936423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6c2204eef7e07afef33e10a8c24ec828b08d03cb37e28be1adf88653f5e2bc`  
		Last Modified: Sat, 29 Dec 2018 21:23:24 GMT  
		Size: 1.2 MB (1228240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cac5421ee8542b4996840b9f9de16b5ced4f63eb91514565d758264db0a05b`  
		Last Modified: Sat, 29 Dec 2018 21:23:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93daa7f05319d4522bac8c7625d84a38c3cab88612ec7bdd6a35486caa88d1c4`  
		Last Modified: Sat, 29 Dec 2018 21:23:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea06917c8cb4aef08163b060dcc6470cf9dc79034cbcea9225238dc40f2fe124`  
		Last Modified: Sat, 29 Dec 2018 21:23:22 GMT  
		Size: 2.4 MB (2395538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1634a90cc7c0a1554bfa4d602992bf762e706c882942741cf8b8e7d87dccb`  
		Last Modified: Sat, 29 Dec 2018 21:23:41 GMT  
		Size: 115.0 MB (115023093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e108760d7f95e551a5bdfd2d07355fad4566a473e8cf146ce01690f2507e8a`  
		Last Modified: Sat, 29 Dec 2018 21:23:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:a96bda1d49f560c7984a66062ef66c44691125789da9d45ea7de385f93afc9ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302537017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6774fe3b702d16163936fc1f437e021bb23a54344d1f83d5d27afab198cc0ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:05:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:05:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 16:05:15 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 16:07:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 16:07:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 16:07:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 16:07:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 16:07:50 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 16:07:50 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:46:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:46:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:46:42 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:46:42 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:46:42 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:46:43 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:46:43 GMT
ENV REDMINE_VERSION=3.3.9
# Sat, 29 Dec 2018 18:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sat, 29 Dec 2018 18:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:49:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:49:21 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:49:21 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:49:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:49:21 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:49:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f47fa20f60a363843211fe7a743e68a4f9fc452f2f1d2b0584f5bf9bcdf2613`  
		Last Modified: Sat, 29 Dec 2018 16:10:02 GMT  
		Size: 14.7 MB (14730777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d4c6a4de25f3e51d83dd862a9cd8e8f001f92ce4113cf3cfa23d2492be5bbf`  
		Last Modified: Sat, 29 Dec 2018 16:09:59 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f400d3728e1bb84283ab4e9a8829465748b65ed34f04d7e2e349480d91217e`  
		Last Modified: Sat, 29 Dec 2018 16:10:08 GMT  
		Size: 38.6 MB (38587075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e1d726ade316716f0a315149727cdd5e659380544846dfd016952c6b0336c6`  
		Last Modified: Sat, 29 Dec 2018 16:09:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a75ca397f7033434ccf0cd1ae8f1cdbae4f7cb4493775d98270b1e19ff9c3d`  
		Last Modified: Sat, 29 Dec 2018 18:50:27 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f11f131bef4ef94e19efb13f8f9b74836298f668c0ba8efa3aa7de41f5a7f18`  
		Last Modified: Sat, 29 Dec 2018 18:50:49 GMT  
		Size: 86.5 MB (86499440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bb527fc53935f5a7b35c9044f688de5f1a3200cee4dc74037d5225f705b129`  
		Last Modified: Sat, 29 Dec 2018 18:50:27 GMT  
		Size: 1.3 MB (1293957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390f333ecad5a9924d229cc00d661505142569c997f456744d45c41b1af540a7`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8624834fdc12f3d47e4894c4553daffdc985f55f28ea379d9140fe6f6cbdbc17`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638555824e20ff8dfa0f4722d314ac3c389ecaa0591ebd3dd5f56d5c31020198`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 2.4 MB (2395153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1529f77684b00bacc474a67665f52bd9c853c9bd12ae7300bdec776dbd0480f7`  
		Last Modified: Sat, 29 Dec 2018 18:50:42 GMT  
		Size: 113.8 MB (113820131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41127e8dfcd6f9b1c7609e6db3b0e5d5fc9fd9a6b6b93672404384288ebb387`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.9`

```console
$ docker pull redmine@sha256:ac0803e2e1812f33202bcc70d4990f548f3f0359998e8aebf1e81124f23a71d8
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
$ docker pull redmine@sha256:dfca7aa88db37b3828af2e473cec7a2c60187638105839934bb830446f23334a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302352785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a7bf4cba13d7f6795235bac19d92e7c4ce0ff903b6f7acfe974ec1ef4f5bf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:44:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:44:36 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 06:44:37 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:30:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:30:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:30:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:30:16 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:13:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:14:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:14:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:14:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:14:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:14:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_VERSION=3.3.9
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Mon, 07 Jan 2019 23:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:17:17 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:17:18 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:17:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:17:18 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:17:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fe64c22f71d0c4aaed626ca72a76ddc92d5d8f2aec13fd4dd909dd290e9685`  
		Last Modified: Sat, 29 Dec 2018 07:05:59 GMT  
		Size: 14.5 MB (14535091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4838f41f6e9ea9e536f6bf2859cfe280d4328cc36b7fb20e09f4c7609a77a9`  
		Last Modified: Sat, 29 Dec 2018 07:05:54 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6837b5964232ec769be0e7896cfb2b4935e25fcad8442c9876393d6a5f33b9a1`  
		Last Modified: Mon, 07 Jan 2019 22:49:15 GMT  
		Size: 33.9 MB (33895208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f366a493f78d8142b8bb86051b05b61babb732fc3e2e8a61f6e209f96f34cf`  
		Last Modified: Mon, 07 Jan 2019 22:49:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c687a8f767181708248f86f52234d45ade659b7349813498210c7531720572`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f648fe09002cb573daac67ce4055b6561d6b06c532368e208e0d1ee5088fa4`  
		Last Modified: Mon, 07 Jan 2019 23:19:15 GMT  
		Size: 86.5 MB (86452693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920ec79458b30a9addc3d515742a060d60cdeaa0f7c857f803e1c828562f42a7`  
		Last Modified: Mon, 07 Jan 2019 23:18:59 GMT  
		Size: 1.3 MB (1304257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a908695033ee3f76b1f343db4faf8e671fccc11954b74b311e0310a9a8c03ad`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61ab471739cf8f6d24cd9140ef432596d106c80f6acff7ca2305edea6d59327`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112b12e9f4b817ac5ce9bc72ca71fdbe54d4dce9756d51e7b8c2bc40195c73fb`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16200a6c322c4511cd950965f73696f48d158676418e78585633a46efccfd0fe`  
		Last Modified: Mon, 07 Jan 2019 23:19:16 GMT  
		Size: 118.4 MB (118442269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a76402a72be2c29a7eff9bb8084d5e3fa9087318aeb7901d7d922bf6521dc`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; arm variant v5

```console
$ docker pull redmine@sha256:745647e19c3c5863b42a34046910ec104922f6dc322f679e485f158e10c92d38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295480414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df723859b6c3865ee9bfef9cecd9051ee32592dbddd91b11eac39558141f9ba`
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
# Wed, 26 Dec 2018 10:53:01 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 10:31:47 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:36:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:36:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:36:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:36:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:36:34 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:36:34 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:22:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:22:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:23:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:23:13 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:23:13 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:23:14 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:23:15 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:23:15 GMT
ENV REDMINE_VERSION=3.3.9
# Fri, 28 Dec 2018 11:23:15 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Fri, 28 Dec 2018 11:23:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:29:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:29:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:29:21 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:29:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:29:22 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:29:22 GMT
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
	-	`sha256:685a54ca0ac68c88e355fbbb9c0f5a29e354d2dcfbbeebe95abdaed65fd371fc`  
		Last Modified: Fri, 28 Dec 2018 10:51:45 GMT  
		Size: 35.2 MB (35180083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f69f0d2acf65136b573339780598fa03188e27778e7c259dfd4c0f1130e19dd`  
		Last Modified: Fri, 28 Dec 2018 10:51:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6964e1d5920e364bf97f7a5412d8437412f5e98423d18914a0885e01c1acd8ac`  
		Last Modified: Fri, 28 Dec 2018 11:30:58 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961115a7c49fed81695f3bc1e709be21b303bfb80864b1bf15d3ad92efe33057`  
		Last Modified: Fri, 28 Dec 2018 11:31:25 GMT  
		Size: 83.8 MB (83794052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bee0f1ffb45ea30228009dc3d9cec234268acb394c68821ba9f3cafcc7ac51`  
		Last Modified: Fri, 28 Dec 2018 11:30:58 GMT  
		Size: 1.3 MB (1262378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7782739c8808849d61835a4e95af9e1e5c9e8825fab80c5b6518164530b6cb4`  
		Last Modified: Fri, 28 Dec 2018 11:30:57 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2992d4cc8f7c5e693d3a756fa5fa0c9374120cb2f843c09ff62cf6d0b7a8bb3f`  
		Last Modified: Fri, 28 Dec 2018 11:30:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f03d6973f38eade5ef2c30c040a3997408865b76da4eccf54712a1ea968d5b`  
		Last Modified: Fri, 28 Dec 2018 11:30:58 GMT  
		Size: 2.4 MB (2395534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3a340b9941638199ec5439070c7dd80511fda80ca7bdd96ab9ed74cee19be1`  
		Last Modified: Fri, 28 Dec 2018 11:31:30 GMT  
		Size: 116.4 MB (116351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf40d071bf62297194c7a82203bc3d82b6338d5d852910706157d093d51e92d`  
		Last Modified: Fri, 28 Dec 2018 11:30:57 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; arm variant v7

```console
$ docker pull redmine@sha256:298d77a69880b5ec53d9dc60341e46c820e9fefdcfa0778a40d43882ebe0f9ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282990286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123f045c6e1684d81b39110aba6ec5c85e205b3b21487db068e74646e0bf1f81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:31:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:31:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:31:54 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 18:31:55 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 18:31:55 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 18:31:56 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:31:56 GMT
ENV BUNDLER_VERSION=1.17.3
# Mon, 31 Dec 2018 18:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 31 Dec 2018 18:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 31 Dec 2018 18:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 31 Dec 2018 18:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Dec 2018 18:16:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 31 Dec 2018 18:16:59 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:35:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:35:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:36:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:36:13 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:36:14 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:36:14 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:36:16 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:36:16 GMT
ENV REDMINE_VERSION=3.3.9
# Mon, 31 Dec 2018 18:36:17 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Mon, 31 Dec 2018 18:36:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:41:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:41:41 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:41:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:41:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:41:43 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:41:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0feb2475b38fef6b552f5fe5befca12af884537a1fe8fe47d734b3df968d92`  
		Last Modified: Mon, 31 Dec 2018 18:18:07 GMT  
		Size: 12.0 MB (11955694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cb2642d9f630268e9da68e5d1601e2bfaeafb65226c4510b0c730c05de02e1`  
		Last Modified: Mon, 31 Dec 2018 18:18:06 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1508b0c11255db645ac274164f7a8b2374732ce9d8e80a2594b583175c473d7`  
		Last Modified: Mon, 31 Dec 2018 18:18:16 GMT  
		Size: 33.0 MB (32996123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b9a00b4e2bf7dbe2960c3447b4a706a312c1f3e27077b3b58279a5eb92203d`  
		Last Modified: Mon, 31 Dec 2018 18:18:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2482e02535b51705442b78eed96abbff19d596ec0fedce8d456402e48a5779d8`  
		Last Modified: Mon, 31 Dec 2018 18:43:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639ddcba9ccbcb7ed8775066c996d56b1290f3e6ac3ce6c1abd82a306590276`  
		Last Modified: Mon, 31 Dec 2018 18:43:39 GMT  
		Size: 80.7 MB (80667641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9da4290914086311776518c8020713e2b9337c96eb385a970f1a33bb79102`  
		Last Modified: Mon, 31 Dec 2018 18:43:16 GMT  
		Size: 1.3 MB (1254735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949897a0bfd4da1f2452dedf0721f7886fa7aefcf88bb2ae092501bec1a5773a`  
		Last Modified: Mon, 31 Dec 2018 18:43:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eeff8708c7947408b504c061bf070f8a15e15bd612f260d498927ea28b75b71`  
		Last Modified: Mon, 31 Dec 2018 18:43:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db8bc9adf17957b0ae8434fa1f80c0d4183cccbd86a1742cdb05705c138ed1`  
		Last Modified: Mon, 31 Dec 2018 18:43:16 GMT  
		Size: 2.4 MB (2395538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757b0c0e1dea0d1f746bdc10f358904e8f26cbcfafa3cc9917be5e95a4b8be3`  
		Last Modified: Mon, 31 Dec 2018 18:43:42 GMT  
		Size: 111.6 MB (111641551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75259cd93af0e594c23be4589e46f12e6d8163998f73bd3a82ce1fa188b7099f`  
		Last Modified: Mon, 31 Dec 2018 18:43:14 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:809103a868d3fd26620a1f77895a5242a13316fb323cc67eed0ba615ea53c81d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.4 MB (289386607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b9138135f874f0f045c647c3407bd3a93aab3f7c9c6bf99f26c0db5b5ca8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sun, 30 Dec 2018 00:31:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 00:31:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 30 Dec 2018 00:31:39 GMT
ENV RUBY_MAJOR=2.3
# Sun, 30 Dec 2018 00:31:39 GMT
ENV RUBY_VERSION=2.3.8
# Sun, 30 Dec 2018 00:31:40 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sun, 30 Dec 2018 00:31:41 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sun, 30 Dec 2018 00:31:42 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:41:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:41:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:41:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:41:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:41:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:41:18 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 06:08:51 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 06:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 06:11:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 06:11:56 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 06:11:57 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 06:11:58 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 06:12:00 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 06:12:01 GMT
ENV REDMINE_VERSION=3.3.9
# Sun, 30 Dec 2018 06:12:01 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sun, 30 Dec 2018 06:12:07 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 06:25:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 06:25:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 06:25:07 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 06:25:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 06:25:08 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 06:25:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a13a7271f38429aaac7ec7bfe23456403934582cb6bafed9dc34e7b5a6e810f`  
		Last Modified: Sun, 30 Dec 2018 00:45:59 GMT  
		Size: 12.8 MB (12782241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f170eef54752e743acf4cd36a6a0ba4e201a414ba7fd8eeb01d2c4f1d7ce3e`  
		Last Modified: Sun, 30 Dec 2018 00:45:50 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cd1306f5738f901983fc448b8da0b035f9f662344bb8e264ca66530836829`  
		Last Modified: Sun, 30 Dec 2018 00:46:12 GMT  
		Size: 34.5 MB (34457183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dd98253520bb01488a78120d08138872d9a0ed58e1fd6ce982bcc45c36f248`  
		Last Modified: Sun, 30 Dec 2018 00:45:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869562109ce4cc9f14408469dd1610815393b4c401ca09f874432e393a56f33`  
		Last Modified: Sun, 30 Dec 2018 06:27:23 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2929b5e03c00a569f796407cad0df89b245c3f6ef6cf7b5f7f124e5d7554840`  
		Last Modified: Sun, 30 Dec 2018 06:27:51 GMT  
		Size: 82.7 MB (82732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e7851945105eb29dd83fdba8070e4155e4e7334c69b60e12a5567ab75a30a9`  
		Last Modified: Sun, 30 Dec 2018 06:27:23 GMT  
		Size: 1.2 MB (1239908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e10ae698bb2eb599ae8c4888f18025a62e5fee69facff97208955683c6e70d8`  
		Last Modified: Sun, 30 Dec 2018 06:27:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f7529cc359f61024438936caad7e2b27a086a5bd3fb2e47d27b66d68ffcde`  
		Last Modified: Sun, 30 Dec 2018 06:27:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219cc465669e711d3b407c8c39b7f673f8bbcd59184dea34f30416fab817e9b0`  
		Last Modified: Sun, 30 Dec 2018 06:27:20 GMT  
		Size: 2.4 MB (2395152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df14de3676c6bf3d1295b631eb2c1e706767f5ab6f38f8be9add41798d7a2f1d`  
		Last Modified: Sun, 30 Dec 2018 06:27:54 GMT  
		Size: 112.7 MB (112658615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624efd244caa709c171ad4860e7c9386b9778296cd598ef51340848d3956a29f`  
		Last Modified: Sun, 30 Dec 2018 06:27:19 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; 386

```console
$ docker pull redmine@sha256:3c0861d0433b916a5c329887e128d2c7785b718481d851656780a41473885002
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305940216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13bab03dfe55f22331a0894e3a4abf3ee79898d2ba597635e2114ef8dcecfed9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:43:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:43:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:43:40 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 18:43:40 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 18:43:40 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 18:43:41 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:43:41 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:47:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:47:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:47:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:47:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:47:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:47:16 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:06:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:07:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:07:20 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:07:20 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:07:20 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:07:21 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:07:21 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:07:21 GMT
ENV REDMINE_VERSION=3.3.9
# Sun, 30 Dec 2018 05:07:22 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sun, 30 Dec 2018 05:07:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:10:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:10:47 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:10:47 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:10:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:10:48 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:10:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6620f89ddfff3bfc647b9a5868de9ce500ce907d92dfdb864596c0a4d0dd9029`  
		Last Modified: Sat, 29 Dec 2018 19:04:34 GMT  
		Size: 17.6 MB (17621283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78f5af1571403538965bf929a103f185f24422d7b36257cc8c9a3eca0acb5b4`  
		Last Modified: Sat, 29 Dec 2018 19:04:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db2c33085b296e296b1ae0a1648c7b19e2b0e1ac2df78f99e543563af18de86`  
		Last Modified: Sat, 29 Dec 2018 19:04:38 GMT  
		Size: 33.1 MB (33134295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f746ba8dc61138fa0f29145db6c86be78d0177d577cfdb52f040657db3e9f75`  
		Last Modified: Sat, 29 Dec 2018 19:04:29 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba30a9bf939688159a0c302eb9b0291035e58f7193a45a51d1c5de67c17c3b`  
		Last Modified: Sun, 30 Dec 2018 05:12:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56471ce008c4d33a94968e3e6a0726e9940acb6085f978fdfba13a50cf34af0`  
		Last Modified: Sun, 30 Dec 2018 05:12:33 GMT  
		Size: 88.5 MB (88540842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268ddb951e1469843b07fe4a3b31ed84ed7bf7b17cc503c37acd9710d3d68ed6`  
		Last Modified: Sun, 30 Dec 2018 05:12:09 GMT  
		Size: 1.3 MB (1271808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b96ae36f2b75a40062e026548f7cf93940e1ff72a85e25777b0fec1c7d51a26`  
		Last Modified: Sun, 30 Dec 2018 05:12:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88651bf4cbe360980bfb68303bf51b5ebb832e0cfba8e1d1820435e51ae055b8`  
		Last Modified: Sun, 30 Dec 2018 05:12:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e957f71840d241848c010b3f3adfe2eb5c1e3d3ac81d5e9a7f257b754bac1aac`  
		Last Modified: Sun, 30 Dec 2018 05:12:09 GMT  
		Size: 2.4 MB (2395149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba64c5ed9745b9201ee751dad0c86b28f6cb2d2ee5808f634b858514e925ce11`  
		Last Modified: Sun, 30 Dec 2018 05:12:33 GMT  
		Size: 116.9 MB (116915238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2808ba4e19327368b018730c1490825f0f9105c3555bcc432341fd33732bfa3`  
		Last Modified: Sun, 30 Dec 2018 05:12:08 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; ppc64le

```console
$ docker pull redmine@sha256:0f3ab06b7576a047997691345dfd1ecdc15a55d9edf4077d8afc33879c078ffa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299142126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2670d94bf8436b27b19391e6fe830988422ad57a444e6d868b082911a7310aaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:26:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:26:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:26:44 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 15:26:46 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 15:26:49 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 15:26:52 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:26:55 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:33:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:33:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:33:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:33:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:33:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:33:25 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 21:13:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 21:14:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:14:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:14:52 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 21:14:53 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 21:14:54 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 21:14:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 21:14:58 GMT
ENV REDMINE_VERSION=3.3.9
# Sat, 29 Dec 2018 21:14:59 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sat, 29 Dec 2018 21:15:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:21:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:21:31 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:21:32 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:21:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:21:36 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:21:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14976ccba8c4c979005a699a007c967bdac52af41f68001ff4bf8e617e60e34b`  
		Last Modified: Sat, 29 Dec 2018 15:37:48 GMT  
		Size: 13.6 MB (13633389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb2c936dd4b49bf6a6ae330d8a92a8cd4ecc5b46cc22173426333d53bc4b115`  
		Last Modified: Sat, 29 Dec 2018 15:37:45 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c42dc3b26a1642624a4c713c349a0c51956e5eee5fcdb06ef8fea8a225b4128`  
		Last Modified: Sat, 29 Dec 2018 15:37:54 GMT  
		Size: 35.3 MB (35315333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd46b76ea95c3895e2fcaa0d17609abc95325df36597678e1001dd2a0e08bae4`  
		Last Modified: Sat, 29 Dec 2018 15:37:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa42db8e970c1470ce5d446514006062718d72342323115f3088548e069a44f`  
		Last Modified: Sat, 29 Dec 2018 21:23:24 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0daf7ff75d25d57027ae49882177ff311a2b0cf21d7774a1dec36133b541d1c2`  
		Last Modified: Sat, 29 Dec 2018 21:23:42 GMT  
		Size: 85.9 MB (85936423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6c2204eef7e07afef33e10a8c24ec828b08d03cb37e28be1adf88653f5e2bc`  
		Last Modified: Sat, 29 Dec 2018 21:23:24 GMT  
		Size: 1.2 MB (1228240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cac5421ee8542b4996840b9f9de16b5ced4f63eb91514565d758264db0a05b`  
		Last Modified: Sat, 29 Dec 2018 21:23:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93daa7f05319d4522bac8c7625d84a38c3cab88612ec7bdd6a35486caa88d1c4`  
		Last Modified: Sat, 29 Dec 2018 21:23:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea06917c8cb4aef08163b060dcc6470cf9dc79034cbcea9225238dc40f2fe124`  
		Last Modified: Sat, 29 Dec 2018 21:23:22 GMT  
		Size: 2.4 MB (2395538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1634a90cc7c0a1554bfa4d602992bf762e706c882942741cf8b8e7d87dccb`  
		Last Modified: Sat, 29 Dec 2018 21:23:41 GMT  
		Size: 115.0 MB (115023093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e108760d7f95e551a5bdfd2d07355fad4566a473e8cf146ce01690f2507e8a`  
		Last Modified: Sat, 29 Dec 2018 21:23:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.9` - linux; s390x

```console
$ docker pull redmine@sha256:a96bda1d49f560c7984a66062ef66c44691125789da9d45ea7de385f93afc9ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302537017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6774fe3b702d16163936fc1f437e021bb23a54344d1f83d5d27afab198cc0ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:05:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:05:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 16:05:15 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 16:05:15 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 16:07:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 16:07:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 16:07:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 16:07:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 16:07:50 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 16:07:50 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:46:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:46:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:46:42 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:46:42 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:46:42 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:46:43 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:46:43 GMT
ENV REDMINE_VERSION=3.3.9
# Sat, 29 Dec 2018 18:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Sat, 29 Dec 2018 18:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:49:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:49:21 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:49:21 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:49:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:49:21 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:49:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f47fa20f60a363843211fe7a743e68a4f9fc452f2f1d2b0584f5bf9bcdf2613`  
		Last Modified: Sat, 29 Dec 2018 16:10:02 GMT  
		Size: 14.7 MB (14730777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d4c6a4de25f3e51d83dd862a9cd8e8f001f92ce4113cf3cfa23d2492be5bbf`  
		Last Modified: Sat, 29 Dec 2018 16:09:59 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f400d3728e1bb84283ab4e9a8829465748b65ed34f04d7e2e349480d91217e`  
		Last Modified: Sat, 29 Dec 2018 16:10:08 GMT  
		Size: 38.6 MB (38587075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e1d726ade316716f0a315149727cdd5e659380544846dfd016952c6b0336c6`  
		Last Modified: Sat, 29 Dec 2018 16:09:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a75ca397f7033434ccf0cd1ae8f1cdbae4f7cb4493775d98270b1e19ff9c3d`  
		Last Modified: Sat, 29 Dec 2018 18:50:27 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f11f131bef4ef94e19efb13f8f9b74836298f668c0ba8efa3aa7de41f5a7f18`  
		Last Modified: Sat, 29 Dec 2018 18:50:49 GMT  
		Size: 86.5 MB (86499440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bb527fc53935f5a7b35c9044f688de5f1a3200cee4dc74037d5225f705b129`  
		Last Modified: Sat, 29 Dec 2018 18:50:27 GMT  
		Size: 1.3 MB (1293957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390f333ecad5a9924d229cc00d661505142569c997f456744d45c41b1af540a7`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8624834fdc12f3d47e4894c4553daffdc985f55f28ea379d9140fe6f6cbdbc17`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638555824e20ff8dfa0f4722d314ac3c389ecaa0591ebd3dd5f56d5c31020198`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 2.4 MB (2395153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1529f77684b00bacc474a67665f52bd9c853c9bd12ae7300bdec776dbd0480f7`  
		Last Modified: Sat, 29 Dec 2018 18:50:42 GMT  
		Size: 113.8 MB (113820131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41127e8dfcd6f9b1c7609e6db3b0e5d5fc9fd9a6b6b93672404384288ebb387`  
		Last Modified: Sat, 29 Dec 2018 18:50:26 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.9-passenger`

```console
$ docker pull redmine@sha256:3988d73c681337365f66a2649ce46987a906acd2f93434bf11115178be2647b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a7a67a67504f9d84b989aa0cf3be1a9fa6b5a3c07406080af9ef12dd1ed8ccae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.1 MB (326085826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6a82d7040236eda3cca5ebaef7e0a8c2af197f5ad6137502cbdbe482857474`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:44:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:44:36 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 06:44:37 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:30:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:30:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:30:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:30:16 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:13:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:14:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:14:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:14:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:14:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:14:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_VERSION=3.3.9
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Mon, 07 Jan 2019 23:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:17:17 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:17:18 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:17:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:17:18 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:17:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:17:26 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:17:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:17:40 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:17:40 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:17:40 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fe64c22f71d0c4aaed626ca72a76ddc92d5d8f2aec13fd4dd909dd290e9685`  
		Last Modified: Sat, 29 Dec 2018 07:05:59 GMT  
		Size: 14.5 MB (14535091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4838f41f6e9ea9e536f6bf2859cfe280d4328cc36b7fb20e09f4c7609a77a9`  
		Last Modified: Sat, 29 Dec 2018 07:05:54 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6837b5964232ec769be0e7896cfb2b4935e25fcad8442c9876393d6a5f33b9a1`  
		Last Modified: Mon, 07 Jan 2019 22:49:15 GMT  
		Size: 33.9 MB (33895208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f366a493f78d8142b8bb86051b05b61babb732fc3e2e8a61f6e209f96f34cf`  
		Last Modified: Mon, 07 Jan 2019 22:49:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c687a8f767181708248f86f52234d45ade659b7349813498210c7531720572`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f648fe09002cb573daac67ce4055b6561d6b06c532368e208e0d1ee5088fa4`  
		Last Modified: Mon, 07 Jan 2019 23:19:15 GMT  
		Size: 86.5 MB (86452693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920ec79458b30a9addc3d515742a060d60cdeaa0f7c857f803e1c828562f42a7`  
		Last Modified: Mon, 07 Jan 2019 23:18:59 GMT  
		Size: 1.3 MB (1304257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a908695033ee3f76b1f343db4faf8e671fccc11954b74b311e0310a9a8c03ad`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61ab471739cf8f6d24cd9140ef432596d106c80f6acff7ca2305edea6d59327`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112b12e9f4b817ac5ce9bc72ca71fdbe54d4dce9756d51e7b8c2bc40195c73fb`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16200a6c322c4511cd950965f73696f48d158676418e78585633a46efccfd0fe`  
		Last Modified: Mon, 07 Jan 2019 23:19:16 GMT  
		Size: 118.4 MB (118442269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a76402a72be2c29a7eff9bb8084d5e3fa9087318aeb7901d7d922bf6521dc`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fe2a3624a8c2f09d8e886a2bef3b2687e33a805e4c3e501d1e5d958cca3600`  
		Last Modified: Mon, 07 Jan 2019 23:19:23 GMT  
		Size: 19.3 MB (19253921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324e237b78c26fc4d607d777a66d2a4fae8f5d548a1120c489b6b8154c97627f`  
		Last Modified: Mon, 07 Jan 2019 23:19:21 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:3988d73c681337365f66a2649ce46987a906acd2f93434bf11115178be2647b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a7a67a67504f9d84b989aa0cf3be1a9fa6b5a3c07406080af9ef12dd1ed8ccae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.1 MB (326085826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6a82d7040236eda3cca5ebaef7e0a8c2af197f5ad6137502cbdbe482857474`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:44:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:44:36 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_MAJOR=2.3
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_VERSION=2.3.8
# Sat, 29 Dec 2018 06:44:36 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Sat, 29 Dec 2018 06:44:37 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:30:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:30:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:30:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:30:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:30:16 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:13:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:14:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:14:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:14:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:14:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:14:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_VERSION=3.3.9
# Mon, 07 Jan 2019 23:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Mon, 07 Jan 2019 23:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:17:17 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:17:18 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:17:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:17:18 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:17:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:17:26 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:17:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:17:40 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:17:40 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:17:40 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fe64c22f71d0c4aaed626ca72a76ddc92d5d8f2aec13fd4dd909dd290e9685`  
		Last Modified: Sat, 29 Dec 2018 07:05:59 GMT  
		Size: 14.5 MB (14535091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4838f41f6e9ea9e536f6bf2859cfe280d4328cc36b7fb20e09f4c7609a77a9`  
		Last Modified: Sat, 29 Dec 2018 07:05:54 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6837b5964232ec769be0e7896cfb2b4935e25fcad8442c9876393d6a5f33b9a1`  
		Last Modified: Mon, 07 Jan 2019 22:49:15 GMT  
		Size: 33.9 MB (33895208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f366a493f78d8142b8bb86051b05b61babb732fc3e2e8a61f6e209f96f34cf`  
		Last Modified: Mon, 07 Jan 2019 22:49:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c687a8f767181708248f86f52234d45ade659b7349813498210c7531720572`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f648fe09002cb573daac67ce4055b6561d6b06c532368e208e0d1ee5088fa4`  
		Last Modified: Mon, 07 Jan 2019 23:19:15 GMT  
		Size: 86.5 MB (86452693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920ec79458b30a9addc3d515742a060d60cdeaa0f7c857f803e1c828562f42a7`  
		Last Modified: Mon, 07 Jan 2019 23:18:59 GMT  
		Size: 1.3 MB (1304257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a908695033ee3f76b1f343db4faf8e671fccc11954b74b311e0310a9a8c03ad`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61ab471739cf8f6d24cd9140ef432596d106c80f6acff7ca2305edea6d59327`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112b12e9f4b817ac5ce9bc72ca71fdbe54d4dce9756d51e7b8c2bc40195c73fb`  
		Last Modified: Mon, 07 Jan 2019 23:18:58 GMT  
		Size: 2.4 MB (2395151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16200a6c322c4511cd950965f73696f48d158676418e78585633a46efccfd0fe`  
		Last Modified: Mon, 07 Jan 2019 23:19:16 GMT  
		Size: 118.4 MB (118442269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a76402a72be2c29a7eff9bb8084d5e3fa9087318aeb7901d7d922bf6521dc`  
		Last Modified: Mon, 07 Jan 2019 23:18:57 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fe2a3624a8c2f09d8e886a2bef3b2687e33a805e4c3e501d1e5d958cca3600`  
		Last Modified: Mon, 07 Jan 2019 23:19:23 GMT  
		Size: 19.3 MB (19253921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324e237b78c26fc4d607d777a66d2a4fae8f5d548a1120c489b6b8154c97627f`  
		Last Modified: Mon, 07 Jan 2019 23:19:21 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:446018cf41aec6290b4754e0e506236663e260de2edcd37949bef7c43a8619f7
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
$ docker pull redmine@sha256:f7d48be415a8f88eecf3cb9b1bee0c72a5f7f8b335620df2bce2b640e012fcf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289908830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f64e641bd51fe86191d6d01489b5ee6edc28ea8f938904780976f65a019d14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:02:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:02:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:05:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:05:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:05:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:05:22 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:09:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:10:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:10:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:10:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:10:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:10:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:10:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 07 Jan 2019 23:10:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:13:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:13:11 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:13:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:13:11 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:13:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:51187a3c83827ee89a8f32a6003d4d769a127c593dbfa178b52215e8c43c54ce`  
		Last Modified: Mon, 07 Jan 2019 22:48:20 GMT  
		Size: 21.1 MB (21096096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554eff91aeb8ad24bea95183154d0430f270f855dcc380c3649a08a2dea3c3bb`  
		Last Modified: Mon, 07 Jan 2019 22:48:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8f0b69962ce93239d9e93530481ed17fe1331810b8dc584423904b5f5f8c3`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120d24658f3ac5782e76c90e82eaca7143eb1b14f66280f49ace9730a1eb792b`  
		Last Modified: Mon, 07 Jan 2019 23:18:43 GMT  
		Size: 88.0 MB (88049414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c2d20af1bcecb94c92be4bb908945799f640602f8c90cb232d2a1c2f37fa3`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 1.3 MB (1304197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02dbbcf7558eb071301278fdd5ec614a5a68ac93a86e1971a09a035dd024bbd`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc380c25945dd05fe122ddd78db9095649a1e374b4c308ecc12a505d0dc8e08`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e883e0d7e4084cd0e444bd78884dfbffa8513e623b741553be041d9e2de059`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3760b817f8a2207e8a132fbf9d2897b61e84d7bfe64248435e9db5ee7530ba5`  
		Last Modified: Mon, 07 Jan 2019 23:18:44 GMT  
		Size: 118.8 MB (118782668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a051a1a0459adf7816d185c08837874553a0dae5945e7a2abf2325d91b1b8204`  
		Last Modified: Mon, 07 Jan 2019 23:18:25 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:7b86acdd150207b824c909b7a910401e46b0d516770d050a4a071f1c0c1637ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280770695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074941972861d162e2272ecee6572ab020669189b19b6172c488afb59000db4c`
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
# Wed, 26 Dec 2018 10:27:33 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 10:07:06 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:13:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:13:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:13:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:13:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:13:19 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:13:19 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:15:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:15:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:16:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:16:09 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:16:09 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:16:10 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:16:11 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:16:11 GMT
ENV REDMINE_VERSION=3.4.7
# Fri, 28 Dec 2018 11:16:12 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Fri, 28 Dec 2018 11:16:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:21:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:21:58 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:21:58 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:21:59 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:21:59 GMT
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
	-	`sha256:a269efd2392b4c4900ee9c2bd9ea4088ba0f56ab763dca250610eb45b7951d73`  
		Last Modified: Fri, 28 Dec 2018 10:50:21 GMT  
		Size: 23.2 MB (23227228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eec28fe16e03b83143955fcb414d82ecae1b939fc4ebeb0a0f8b7d7feb6a9c7`  
		Last Modified: Fri, 28 Dec 2018 10:50:15 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8d16eeb829a3f39124f4d62f9df03e192e8b6ddc3b4cde4234beca1b721745`  
		Last Modified: Fri, 28 Dec 2018 11:30:18 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774eea0e161af243071b2cf05cb3094788a4dcb0c738b48a3214f89201530a04`  
		Last Modified: Fri, 28 Dec 2018 11:30:47 GMT  
		Size: 85.0 MB (84975890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4ff6d8449b6f9416eb809b379795967350db0a21200d26b5168fac4d289e95`  
		Last Modified: Fri, 28 Dec 2018 11:30:19 GMT  
		Size: 1.3 MB (1262283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c25687c8dccdc34700600dea25a8dd7a94dd9d1f2919118bb87e7c4a9d8314b`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e195e4f9cbbee450ac6245515f6acbbe41818b9827517f5acf4b6169ee3d59`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa2bf0ec671defe06f3cf1c416375e00594aeca9c3022cc0356c33ad791ab8`  
		Last Modified: Fri, 28 Dec 2018 11:30:19 GMT  
		Size: 2.5 MB (2460528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34678d58160f0856b0db8d68d16cd4bbb4d38427fcccb9ae05af7d4cc254a3f`  
		Last Modified: Fri, 28 Dec 2018 11:30:48 GMT  
		Size: 113.4 MB (113408258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0408d561e71fa255bf4d1f45ef62faee8ca3da5ec7ea2d53ae9837bc7e4acc1f`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0e30fc1f1bfe7ab23af846826e4dc5e21bb101bc41eed3511f08015573e7b03d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271656231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66fb271cc14b52f5abb2fd8003a13a5dc9adced2c502ce8c60d553084aaf36d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:10:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:10:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:07:07 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 18:07:08 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 18:07:08 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 18:07:09 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:07:09 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:12:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:12:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:12:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:12:55 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:28:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:29:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:29:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:29:53 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:29:54 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:29:54 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:29:56 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:29:56 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 31 Dec 2018 18:29:56 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 31 Dec 2018 18:30:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:35:09 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:35:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:35:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:35:10 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:35:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c1af42a2126d2c7086d23c31787ae5b0829e4ded2653f2a4932b36c9d97f8`  
		Last Modified: Mon, 31 Dec 2018 18:04:43 GMT  
		Size: 11.0 MB (10965635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a38dca6b5e520625b43621012d0051754501d0dccd543da7ca400a07adcbf03`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b2dd1545ac8c732c3c758299389c40a54e1f19551f703aed98904f0101642`  
		Last Modified: Mon, 31 Dec 2018 18:05:29 GMT  
		Size: 21.2 MB (21184693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bd021c23a21437f6d037340ed3b775dcac1555daf228380b96707f414c1ac1`  
		Last Modified: Mon, 31 Dec 2018 18:05:23 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23fc10a606c718e1ffcce4da3b7a51e74ff9f1ec792e74ada25f470d459016`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7acbaedfc77cfe69e0d4e7439a53f7a02c64bb9066cd6a2083e8168eb3f5a4`  
		Last Modified: Mon, 31 Dec 2018 18:43:00 GMT  
		Size: 81.8 MB (81781492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc28b8a285967fc1f5f99e10b4c408929fcc38ce2d9e82b2d71063e4f452dd0`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 1.3 MB (1254533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc70eec33c6c72657a8d1870ddd083570c7645e7e0a82a523eadd0aa13e6b2dc`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed14376ec90435187baa3186a34f0d574e74141655737f65c4620ef48581d43`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7ff08c4c652809d853eba74648cf9f5cc9a1a87d7e491c54ff0e0bf1793d54`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 2.5 MB (2460530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3ec2b0c2ccb09d59a1f48215aa46c722d9b3ab54b21c1f818f440d1f1129a3`  
		Last Modified: Mon, 31 Dec 2018 18:43:04 GMT  
		Size: 111.9 MB (111930356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26af1ac689a2b7fbb4cdab5081fd49b9258aff5d34f7698798eb903a67a6880`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6b155ccd5a4e3961c0ff9624344409507b322e8584d0d77392990bd5a1459b85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277023240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be779b2b46d126e114118969ba8c8e9af972ec3f3127b15af5a14719739b0ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:37:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 30 Dec 2018 00:11:21 GMT
ENV RUBY_MAJOR=2.4
# Sun, 30 Dec 2018 00:11:21 GMT
ENV RUBY_VERSION=2.4.5
# Sun, 30 Dec 2018 00:11:22 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sun, 30 Dec 2018 00:11:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sun, 30 Dec 2018 00:11:25 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:22:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:22:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:22:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:22:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:23:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:23:01 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:50:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:54:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:54:52 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:54:56 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:54:58 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:55:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:55:07 GMT
ENV REDMINE_VERSION=3.4.7
# Sun, 30 Dec 2018 05:55:10 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sun, 30 Dec 2018 05:55:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 06:08:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 06:08:36 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 06:08:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 06:08:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 06:08:38 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 06:08:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a79252ba57d5ab11d990e3ea541ba295171cb39dbc89303ed471ea63162f03`  
		Last Modified: Sun, 30 Dec 2018 00:43:21 GMT  
		Size: 11.7 MB (11700955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c477982f06a4815361be67e18ed66bbc8664ffadfd7356e85227b9872ae2a1`  
		Last Modified: Sun, 30 Dec 2018 00:43:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a095329b4aa8efa0ec974e9d0515e73cc66bf5d967c0777eb21b61d9dd661fe3`  
		Last Modified: Sun, 30 Dec 2018 00:44:57 GMT  
		Size: 21.6 MB (21582393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17da02d0b6a5272f38c23c50bc7389b5b1ec34a76bde76524973ff0d5e908579`  
		Last Modified: Sun, 30 Dec 2018 00:44:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918883ed56723916fe8ff9b6424ff0a9214e56ae158329f50cdfc69747aa302c`  
		Last Modified: Sun, 30 Dec 2018 06:26:32 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34c830a3fece94920e126a5d3f0a161baac962fde77b7539b94759d2a68ef2b`  
		Last Modified: Sun, 30 Dec 2018 06:27:02 GMT  
		Size: 83.9 MB (83924439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02c84ef29fa9cee1a2d1fe4d6b5856cf74cdd4fc3e35607a772269755a5b23f`  
		Last Modified: Sun, 30 Dec 2018 06:26:32 GMT  
		Size: 1.2 MB (1239883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a7cefd59d96a5c6de06aea0dc974f4047e4fa56902f73d49b9b4a39cd76f6a`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ee78ab62f91c34a329a30d054949cefe982edc456feb3f13d5ab877eae987c`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008412c74b77033cc23bd0974c2173f8ba4f1e15f857101b6719e9fb27d4d3d`  
		Last Modified: Sun, 30 Dec 2018 06:26:31 GMT  
		Size: 2.5 MB (2459976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb122552a2e42b98396f9fdb838b6d10ca2b569b490b3362c38bbf1cfbf0530a`  
		Last Modified: Sun, 30 Dec 2018 06:27:05 GMT  
		Size: 113.0 MB (112994791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d70bd14f1550eeec65d412f871642f2a4f04f4171774ea6bcb2dd4bdf260003`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:87bb51990fcc3273a031fdbb72dfcb2be51b1a332c9a40d6f04a2fb3917241b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294745554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c935288cb4ec5b0c13f2459b6325b89a0077cb500ee20baa1fa233f53de4f36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:03:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:03:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 18:16:46 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:16:46 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:20:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:20:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:20:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:20:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:20:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:20:49 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:02:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:03:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:03:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:03:22 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:03:22 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:03:22 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:03:23 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:03:23 GMT
ENV REDMINE_VERSION=3.4.7
# Sun, 30 Dec 2018 05:03:23 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sun, 30 Dec 2018 05:03:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:06:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:06:37 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:06:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:06:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:06:37 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:06:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe2e2439d98a682ab58f2b93a3b7a3398da79f7a394e5b779b2d54f8f9aa36e`  
		Last Modified: Sat, 29 Dec 2018 19:03:07 GMT  
		Size: 16.3 MB (16334516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167bf4d165c9e79aa252cf87ede7ed1a4b0e9f5ca48dddd741d329159a86f73`  
		Last Modified: Sat, 29 Dec 2018 19:03:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111b16e9a7b63ca507ea9edb82bf75f7f71c5144427a82b693fac6f59ccea5e8`  
		Last Modified: Sat, 29 Dec 2018 19:03:50 GMT  
		Size: 21.4 MB (21416478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95daaf1744fb2e11e8d438f819a6f3793518360781199abacebf6b778e4679f`  
		Last Modified: Sat, 29 Dec 2018 19:03:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4874ed4ec4b497e55a19525b5647840df09703f391e72ad93a8fcc7c5c3d66d2`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f442cbbd51d69287524e0820f1253fba9f6fc0cf6f439f8f0b0ad0dfc8b96d9d`  
		Last Modified: Sun, 30 Dec 2018 05:12:02 GMT  
		Size: 90.0 MB (89988573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8eeb0005b35c728c73f45ac0bf27c66fb7681951d2d58cda61cde72177fd3ee`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 1.3 MB (1271741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cf9dd2c094cc9944ab95e15bc4f2f5586950a5525de8b7b3a431aa40342b0e`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaec8d36bac23dace693342ab829a643461a9eae2b660c9532e0b1fce8923042`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd723106aec01675fa3669417dcb5e668ec41e17f89a90a13d7013e44f9af8`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 2.5 MB (2459997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b67eafe43d76d725736d130d3fe37c687d76eefa791751877194d364e8a7d19`  
		Last Modified: Sun, 30 Dec 2018 05:12:01 GMT  
		Size: 117.2 MB (117212645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935ef9992ffdc8065b1caadbedfe826eea4deadfa57c9139c508eab005d1410a`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:4d3b631ba89d7383b03e55714727c4f5fe5ecf75e534c9054a599254b79b0552
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286239599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02751099a8f7ae6664a0240b9a432d9ef1d74ae2ce1476aa42eb8bd12540eea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:53:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:53:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:14:25 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 15:14:27 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 15:14:29 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 15:14:31 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:14:33 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:21:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:21:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:21:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:21:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:21:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:21:21 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 21:04:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 21:05:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:06:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:06:23 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 21:06:24 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 21:06:25 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 21:06:28 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 21:06:29 GMT
ENV REDMINE_VERSION=3.4.7
# Sat, 29 Dec 2018 21:06:30 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sat, 29 Dec 2018 21:06:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:13:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:13:05 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:13:05 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:13:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:13:08 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:13:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcd0d5da45458d86abc5bed20cdd7b8dc9814b34eb844bb0e941546507cb85`  
		Last Modified: Sat, 29 Dec 2018 15:35:30 GMT  
		Size: 12.3 MB (12283468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3f7680937dd6058acb2d73f6fd2c6156150096802b79e73ac21d495ec8113c`  
		Last Modified: Sat, 29 Dec 2018 15:35:24 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f12ccd52d1cb1e5738bf27a4a629d0ce5ac212ea8d3db7b41637658a795a56`  
		Last Modified: Sat, 29 Dec 2018 15:37:03 GMT  
		Size: 22.1 MB (22055832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed278c75bf1275af3fbc7c7c5ff10ff497ba04ecec38d831eaed9fc9363f3cf`  
		Last Modified: Sat, 29 Dec 2018 15:36:59 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1929ef83ca67df21aeb6b50705552a222a30965c040a163ab38266bb220b5ced`  
		Last Modified: Sat, 29 Dec 2018 21:22:48 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3ef8504aeb16795039251a97c399a6bafa3846d7bbdadb142bd7c50dd6b956`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 87.2 MB (87240846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78006a01b5e9b2b96b84bab0e3ce2cba73d310af056086abbdf63bdbf8984b07`  
		Last Modified: Sat, 29 Dec 2018 21:22:49 GMT  
		Size: 1.2 MB (1227937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53950611768feb71f5670d42597d66285b58c5b8378340183256dee61e759d31`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0559e1b03a028e650ab8252b959cec597e7ca68594983804be11726ca49f990e`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f8e6bdf6c394c600b2a853b6c97c3c757ed652f01b664afe55973c2cdab814`  
		Last Modified: Sat, 29 Dec 2018 21:22:47 GMT  
		Size: 2.5 MB (2460527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de980a821c376282fdd01cadb9800d0221fe7c80b1b18e805d438752bacc2513`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 115.4 MB (115360873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa76a05de47443e9dbab5fddffef87c50714fd6f3a1f240be21a99b90f2331e3`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:d1ff4890fb156c623965dd4690f56f3efd4db5d822028b1062e9a07ca9ebb726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 MB (286548665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54309502071fbe90fd0ef1ab281e2036823587501751ce7366b56076b71c0b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:49:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:49:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:59:38 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 15:59:38 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 15:59:39 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 15:59:39 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:59:39 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 16:02:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 16:02:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 16:02:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 16:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 16:02:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 16:02:38 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:42:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:43:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:43:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:43:23 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:43:23 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:43:23 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:43:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:43:24 GMT
ENV REDMINE_VERSION=3.4.7
# Sat, 29 Dec 2018 18:43:24 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sat, 29 Dec 2018 18:43:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:45:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:45:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:45:54 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:45:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:45:55 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:45:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662841ebe4a1deb1e3f8cb13b2a42afd6aa374e5f3e22406610ff5e010175c83`  
		Last Modified: Sat, 29 Dec 2018 16:08:51 GMT  
		Size: 13.3 MB (13292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05810924bf036f5873e63e5db8c1723d567d01164fb34ddb27908cd0fa04e69f`  
		Last Modified: Sat, 29 Dec 2018 16:08:48 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c335cd8bd0a84593de2144356c3f725d687ffa8099dce10f961012440b6f99b6`  
		Last Modified: Sat, 29 Dec 2018 16:09:35 GMT  
		Size: 22.2 MB (22196785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84292b1980b41ff16898071c4cc5bd764f64d635e19041cd3d6190865d4bffd6`  
		Last Modified: Sat, 29 Dec 2018 16:09:32 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ca836fc8188544ce2b41711730f74043e32458a16bd6095d66fe9ca626ce52`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab5afa6b08d2acb6239aca36430e4407438755cd65b4b2bf34437fbd9d9d10`  
		Last Modified: Sat, 29 Dec 2018 18:50:16 GMT  
		Size: 87.9 MB (87867811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482c19faf65900a2e1536b1248e8390710b12b2b0e78f966244a29c0b9357b6a`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 1.3 MB (1293962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ee282080dea5e3eb2ab889be9f3842e17176bf743b40084f2a474cadd08c5`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d21c5b5bedfb1a24853e90306dc1ed3c6a78b6e1ee3393a3487e5a87d98884`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e30d28e910c8e0c986f0861492114938581003c12957b44c6ff595ccb967c4`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 2.5 MB (2459985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0deb03d7f2d23dd4594aafba4ab0d87dd2ad409d329bc776b7c56786fab3`  
		Last Modified: Sat, 29 Dec 2018 18:50:15 GMT  
		Size: 114.2 MB (114227098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd53dd41057b3dcaf13afd8f6f31ac0b6ae1d1fe85fd57d80df4bd8cbbaeb6a`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.7`

```console
$ docker pull redmine@sha256:446018cf41aec6290b4754e0e506236663e260de2edcd37949bef7c43a8619f7
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
$ docker pull redmine@sha256:f7d48be415a8f88eecf3cb9b1bee0c72a5f7f8b335620df2bce2b640e012fcf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289908830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f64e641bd51fe86191d6d01489b5ee6edc28ea8f938904780976f65a019d14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:02:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:02:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:05:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:05:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:05:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:05:22 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:09:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:10:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:10:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:10:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:10:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:10:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:10:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 07 Jan 2019 23:10:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:13:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:13:11 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:13:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:13:11 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:13:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:51187a3c83827ee89a8f32a6003d4d769a127c593dbfa178b52215e8c43c54ce`  
		Last Modified: Mon, 07 Jan 2019 22:48:20 GMT  
		Size: 21.1 MB (21096096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554eff91aeb8ad24bea95183154d0430f270f855dcc380c3649a08a2dea3c3bb`  
		Last Modified: Mon, 07 Jan 2019 22:48:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8f0b69962ce93239d9e93530481ed17fe1331810b8dc584423904b5f5f8c3`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120d24658f3ac5782e76c90e82eaca7143eb1b14f66280f49ace9730a1eb792b`  
		Last Modified: Mon, 07 Jan 2019 23:18:43 GMT  
		Size: 88.0 MB (88049414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c2d20af1bcecb94c92be4bb908945799f640602f8c90cb232d2a1c2f37fa3`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 1.3 MB (1304197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02dbbcf7558eb071301278fdd5ec614a5a68ac93a86e1971a09a035dd024bbd`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc380c25945dd05fe122ddd78db9095649a1e374b4c308ecc12a505d0dc8e08`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e883e0d7e4084cd0e444bd78884dfbffa8513e623b741553be041d9e2de059`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3760b817f8a2207e8a132fbf9d2897b61e84d7bfe64248435e9db5ee7530ba5`  
		Last Modified: Mon, 07 Jan 2019 23:18:44 GMT  
		Size: 118.8 MB (118782668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a051a1a0459adf7816d185c08837874553a0dae5945e7a2abf2325d91b1b8204`  
		Last Modified: Mon, 07 Jan 2019 23:18:25 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; arm variant v5

```console
$ docker pull redmine@sha256:7b86acdd150207b824c909b7a910401e46b0d516770d050a4a071f1c0c1637ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280770695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074941972861d162e2272ecee6572ab020669189b19b6172c488afb59000db4c`
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
# Wed, 26 Dec 2018 10:27:33 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 10:07:06 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:13:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:13:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:13:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:13:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:13:19 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:13:19 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:15:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:15:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:16:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:16:09 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:16:09 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:16:10 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:16:11 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:16:11 GMT
ENV REDMINE_VERSION=3.4.7
# Fri, 28 Dec 2018 11:16:12 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Fri, 28 Dec 2018 11:16:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:21:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:21:58 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:21:58 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:21:59 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:21:59 GMT
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
	-	`sha256:a269efd2392b4c4900ee9c2bd9ea4088ba0f56ab763dca250610eb45b7951d73`  
		Last Modified: Fri, 28 Dec 2018 10:50:21 GMT  
		Size: 23.2 MB (23227228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eec28fe16e03b83143955fcb414d82ecae1b939fc4ebeb0a0f8b7d7feb6a9c7`  
		Last Modified: Fri, 28 Dec 2018 10:50:15 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8d16eeb829a3f39124f4d62f9df03e192e8b6ddc3b4cde4234beca1b721745`  
		Last Modified: Fri, 28 Dec 2018 11:30:18 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774eea0e161af243071b2cf05cb3094788a4dcb0c738b48a3214f89201530a04`  
		Last Modified: Fri, 28 Dec 2018 11:30:47 GMT  
		Size: 85.0 MB (84975890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4ff6d8449b6f9416eb809b379795967350db0a21200d26b5168fac4d289e95`  
		Last Modified: Fri, 28 Dec 2018 11:30:19 GMT  
		Size: 1.3 MB (1262283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c25687c8dccdc34700600dea25a8dd7a94dd9d1f2919118bb87e7c4a9d8314b`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e195e4f9cbbee450ac6245515f6acbbe41818b9827517f5acf4b6169ee3d59`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa2bf0ec671defe06f3cf1c416375e00594aeca9c3022cc0356c33ad791ab8`  
		Last Modified: Fri, 28 Dec 2018 11:30:19 GMT  
		Size: 2.5 MB (2460528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34678d58160f0856b0db8d68d16cd4bbb4d38427fcccb9ae05af7d4cc254a3f`  
		Last Modified: Fri, 28 Dec 2018 11:30:48 GMT  
		Size: 113.4 MB (113408258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0408d561e71fa255bf4d1f45ef62faee8ca3da5ec7ea2d53ae9837bc7e4acc1f`  
		Last Modified: Fri, 28 Dec 2018 11:30:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0e30fc1f1bfe7ab23af846826e4dc5e21bb101bc41eed3511f08015573e7b03d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271656231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66fb271cc14b52f5abb2fd8003a13a5dc9adced2c502ce8c60d553084aaf36d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:10:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:10:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:07:07 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 18:07:08 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 18:07:08 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 18:07:09 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:07:09 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:12:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:12:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:12:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:12:55 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:28:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:29:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:29:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:29:53 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:29:54 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:29:54 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:29:56 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:29:56 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 31 Dec 2018 18:29:56 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 31 Dec 2018 18:30:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:35:09 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:35:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:35:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:35:10 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:35:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c1af42a2126d2c7086d23c31787ae5b0829e4ded2653f2a4932b36c9d97f8`  
		Last Modified: Mon, 31 Dec 2018 18:04:43 GMT  
		Size: 11.0 MB (10965635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a38dca6b5e520625b43621012d0051754501d0dccd543da7ca400a07adcbf03`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b2dd1545ac8c732c3c758299389c40a54e1f19551f703aed98904f0101642`  
		Last Modified: Mon, 31 Dec 2018 18:05:29 GMT  
		Size: 21.2 MB (21184693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bd021c23a21437f6d037340ed3b775dcac1555daf228380b96707f414c1ac1`  
		Last Modified: Mon, 31 Dec 2018 18:05:23 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23fc10a606c718e1ffcce4da3b7a51e74ff9f1ec792e74ada25f470d459016`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7acbaedfc77cfe69e0d4e7439a53f7a02c64bb9066cd6a2083e8168eb3f5a4`  
		Last Modified: Mon, 31 Dec 2018 18:43:00 GMT  
		Size: 81.8 MB (81781492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc28b8a285967fc1f5f99e10b4c408929fcc38ce2d9e82b2d71063e4f452dd0`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 1.3 MB (1254533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc70eec33c6c72657a8d1870ddd083570c7645e7e0a82a523eadd0aa13e6b2dc`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed14376ec90435187baa3186a34f0d574e74141655737f65c4620ef48581d43`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7ff08c4c652809d853eba74648cf9f5cc9a1a87d7e491c54ff0e0bf1793d54`  
		Last Modified: Mon, 31 Dec 2018 18:42:36 GMT  
		Size: 2.5 MB (2460530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3ec2b0c2ccb09d59a1f48215aa46c722d9b3ab54b21c1f818f440d1f1129a3`  
		Last Modified: Mon, 31 Dec 2018 18:43:04 GMT  
		Size: 111.9 MB (111930356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26af1ac689a2b7fbb4cdab5081fd49b9258aff5d34f7698798eb903a67a6880`  
		Last Modified: Mon, 31 Dec 2018 18:42:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6b155ccd5a4e3961c0ff9624344409507b322e8584d0d77392990bd5a1459b85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277023240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be779b2b46d126e114118969ba8c8e9af972ec3f3127b15af5a14719739b0ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:37:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 30 Dec 2018 00:11:21 GMT
ENV RUBY_MAJOR=2.4
# Sun, 30 Dec 2018 00:11:21 GMT
ENV RUBY_VERSION=2.4.5
# Sun, 30 Dec 2018 00:11:22 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sun, 30 Dec 2018 00:11:24 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sun, 30 Dec 2018 00:11:25 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:22:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:22:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:22:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:22:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:23:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:23:01 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:50:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:54:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:54:52 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:54:56 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:54:58 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:55:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:55:07 GMT
ENV REDMINE_VERSION=3.4.7
# Sun, 30 Dec 2018 05:55:10 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sun, 30 Dec 2018 05:55:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 06:08:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 06:08:36 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 06:08:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 06:08:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 06:08:38 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 06:08:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a79252ba57d5ab11d990e3ea541ba295171cb39dbc89303ed471ea63162f03`  
		Last Modified: Sun, 30 Dec 2018 00:43:21 GMT  
		Size: 11.7 MB (11700955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c477982f06a4815361be67e18ed66bbc8664ffadfd7356e85227b9872ae2a1`  
		Last Modified: Sun, 30 Dec 2018 00:43:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a095329b4aa8efa0ec974e9d0515e73cc66bf5d967c0777eb21b61d9dd661fe3`  
		Last Modified: Sun, 30 Dec 2018 00:44:57 GMT  
		Size: 21.6 MB (21582393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17da02d0b6a5272f38c23c50bc7389b5b1ec34a76bde76524973ff0d5e908579`  
		Last Modified: Sun, 30 Dec 2018 00:44:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918883ed56723916fe8ff9b6424ff0a9214e56ae158329f50cdfc69747aa302c`  
		Last Modified: Sun, 30 Dec 2018 06:26:32 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34c830a3fece94920e126a5d3f0a161baac962fde77b7539b94759d2a68ef2b`  
		Last Modified: Sun, 30 Dec 2018 06:27:02 GMT  
		Size: 83.9 MB (83924439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02c84ef29fa9cee1a2d1fe4d6b5856cf74cdd4fc3e35607a772269755a5b23f`  
		Last Modified: Sun, 30 Dec 2018 06:26:32 GMT  
		Size: 1.2 MB (1239883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a7cefd59d96a5c6de06aea0dc974f4047e4fa56902f73d49b9b4a39cd76f6a`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ee78ab62f91c34a329a30d054949cefe982edc456feb3f13d5ab877eae987c`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008412c74b77033cc23bd0974c2173f8ba4f1e15f857101b6719e9fb27d4d3d`  
		Last Modified: Sun, 30 Dec 2018 06:26:31 GMT  
		Size: 2.5 MB (2459976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb122552a2e42b98396f9fdb838b6d10ca2b569b490b3362c38bbf1cfbf0530a`  
		Last Modified: Sun, 30 Dec 2018 06:27:05 GMT  
		Size: 113.0 MB (112994791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d70bd14f1550eeec65d412f871642f2a4f04f4171774ea6bcb2dd4bdf260003`  
		Last Modified: Sun, 30 Dec 2018 06:26:30 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; 386

```console
$ docker pull redmine@sha256:87bb51990fcc3273a031fdbb72dfcb2be51b1a332c9a40d6f04a2fb3917241b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294745554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c935288cb4ec5b0c13f2459b6325b89a0077cb500ee20baa1fa233f53de4f36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:03:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:03:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 18:16:45 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 18:16:46 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:16:46 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:20:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:20:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:20:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:20:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:20:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:20:49 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:02:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:03:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:03:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:03:22 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:03:22 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:03:22 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:03:23 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:03:23 GMT
ENV REDMINE_VERSION=3.4.7
# Sun, 30 Dec 2018 05:03:23 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sun, 30 Dec 2018 05:03:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:06:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:06:37 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:06:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:06:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:06:37 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:06:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe2e2439d98a682ab58f2b93a3b7a3398da79f7a394e5b779b2d54f8f9aa36e`  
		Last Modified: Sat, 29 Dec 2018 19:03:07 GMT  
		Size: 16.3 MB (16334516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167bf4d165c9e79aa252cf87ede7ed1a4b0e9f5ca48dddd741d329159a86f73`  
		Last Modified: Sat, 29 Dec 2018 19:03:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111b16e9a7b63ca507ea9edb82bf75f7f71c5144427a82b693fac6f59ccea5e8`  
		Last Modified: Sat, 29 Dec 2018 19:03:50 GMT  
		Size: 21.4 MB (21416478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95daaf1744fb2e11e8d438f819a6f3793518360781199abacebf6b778e4679f`  
		Last Modified: Sat, 29 Dec 2018 19:03:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4874ed4ec4b497e55a19525b5647840df09703f391e72ad93a8fcc7c5c3d66d2`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f442cbbd51d69287524e0820f1253fba9f6fc0cf6f439f8f0b0ad0dfc8b96d9d`  
		Last Modified: Sun, 30 Dec 2018 05:12:02 GMT  
		Size: 90.0 MB (89988573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8eeb0005b35c728c73f45ac0bf27c66fb7681951d2d58cda61cde72177fd3ee`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 1.3 MB (1271741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cf9dd2c094cc9944ab95e15bc4f2f5586950a5525de8b7b3a431aa40342b0e`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaec8d36bac23dace693342ab829a643461a9eae2b660c9532e0b1fce8923042`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd723106aec01675fa3669417dcb5e668ec41e17f89a90a13d7013e44f9af8`  
		Last Modified: Sun, 30 Dec 2018 05:11:38 GMT  
		Size: 2.5 MB (2459997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b67eafe43d76d725736d130d3fe37c687d76eefa791751877194d364e8a7d19`  
		Last Modified: Sun, 30 Dec 2018 05:12:01 GMT  
		Size: 117.2 MB (117212645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935ef9992ffdc8065b1caadbedfe826eea4deadfa57c9139c508eab005d1410a`  
		Last Modified: Sun, 30 Dec 2018 05:11:36 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:4d3b631ba89d7383b03e55714727c4f5fe5ecf75e534c9054a599254b79b0552
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286239599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02751099a8f7ae6664a0240b9a432d9ef1d74ae2ce1476aa42eb8bd12540eea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:53:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:53:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:14:25 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 15:14:27 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 15:14:29 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 15:14:31 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:14:33 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:21:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:21:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:21:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:21:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:21:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:21:21 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 21:04:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 21:05:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:06:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:06:23 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 21:06:24 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 21:06:25 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 21:06:28 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 21:06:29 GMT
ENV REDMINE_VERSION=3.4.7
# Sat, 29 Dec 2018 21:06:30 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sat, 29 Dec 2018 21:06:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:13:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:13:05 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:13:05 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:13:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:13:08 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:13:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcd0d5da45458d86abc5bed20cdd7b8dc9814b34eb844bb0e941546507cb85`  
		Last Modified: Sat, 29 Dec 2018 15:35:30 GMT  
		Size: 12.3 MB (12283468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3f7680937dd6058acb2d73f6fd2c6156150096802b79e73ac21d495ec8113c`  
		Last Modified: Sat, 29 Dec 2018 15:35:24 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f12ccd52d1cb1e5738bf27a4a629d0ce5ac212ea8d3db7b41637658a795a56`  
		Last Modified: Sat, 29 Dec 2018 15:37:03 GMT  
		Size: 22.1 MB (22055832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed278c75bf1275af3fbc7c7c5ff10ff497ba04ecec38d831eaed9fc9363f3cf`  
		Last Modified: Sat, 29 Dec 2018 15:36:59 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1929ef83ca67df21aeb6b50705552a222a30965c040a163ab38266bb220b5ced`  
		Last Modified: Sat, 29 Dec 2018 21:22:48 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3ef8504aeb16795039251a97c399a6bafa3846d7bbdadb142bd7c50dd6b956`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 87.2 MB (87240846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78006a01b5e9b2b96b84bab0e3ce2cba73d310af056086abbdf63bdbf8984b07`  
		Last Modified: Sat, 29 Dec 2018 21:22:49 GMT  
		Size: 1.2 MB (1227937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53950611768feb71f5670d42597d66285b58c5b8378340183256dee61e759d31`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0559e1b03a028e650ab8252b959cec597e7ca68594983804be11726ca49f990e`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f8e6bdf6c394c600b2a853b6c97c3c757ed652f01b664afe55973c2cdab814`  
		Last Modified: Sat, 29 Dec 2018 21:22:47 GMT  
		Size: 2.5 MB (2460527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de980a821c376282fdd01cadb9800d0221fe7c80b1b18e805d438752bacc2513`  
		Last Modified: Sat, 29 Dec 2018 21:23:06 GMT  
		Size: 115.4 MB (115360873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa76a05de47443e9dbab5fddffef87c50714fd6f3a1f240be21a99b90f2331e3`  
		Last Modified: Sat, 29 Dec 2018 21:22:45 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.7` - linux; s390x

```console
$ docker pull redmine@sha256:d1ff4890fb156c623965dd4690f56f3efd4db5d822028b1062e9a07ca9ebb726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 MB (286548665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54309502071fbe90fd0ef1ab281e2036823587501751ce7366b56076b71c0b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:49:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:49:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:59:38 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 15:59:38 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 15:59:39 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 15:59:39 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:59:39 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 16:02:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 16:02:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 16:02:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 16:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 16:02:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 16:02:38 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:42:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:43:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:43:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:43:23 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:43:23 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:43:23 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:43:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:43:24 GMT
ENV REDMINE_VERSION=3.4.7
# Sat, 29 Dec 2018 18:43:24 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Sat, 29 Dec 2018 18:43:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:45:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:45:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:45:54 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:45:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:45:55 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:45:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662841ebe4a1deb1e3f8cb13b2a42afd6aa374e5f3e22406610ff5e010175c83`  
		Last Modified: Sat, 29 Dec 2018 16:08:51 GMT  
		Size: 13.3 MB (13292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05810924bf036f5873e63e5db8c1723d567d01164fb34ddb27908cd0fa04e69f`  
		Last Modified: Sat, 29 Dec 2018 16:08:48 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c335cd8bd0a84593de2144356c3f725d687ffa8099dce10f961012440b6f99b6`  
		Last Modified: Sat, 29 Dec 2018 16:09:35 GMT  
		Size: 22.2 MB (22196785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84292b1980b41ff16898071c4cc5bd764f64d635e19041cd3d6190865d4bffd6`  
		Last Modified: Sat, 29 Dec 2018 16:09:32 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ca836fc8188544ce2b41711730f74043e32458a16bd6095d66fe9ca626ce52`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab5afa6b08d2acb6239aca36430e4407438755cd65b4b2bf34437fbd9d9d10`  
		Last Modified: Sat, 29 Dec 2018 18:50:16 GMT  
		Size: 87.9 MB (87867811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482c19faf65900a2e1536b1248e8390710b12b2b0e78f966244a29c0b9357b6a`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 1.3 MB (1293962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ee282080dea5e3eb2ab889be9f3842e17176bf743b40084f2a474cadd08c5`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d21c5b5bedfb1a24853e90306dc1ed3c6a78b6e1ee3393a3487e5a87d98884`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e30d28e910c8e0c986f0861492114938581003c12957b44c6ff595ccb967c4`  
		Last Modified: Sat, 29 Dec 2018 18:50:00 GMT  
		Size: 2.5 MB (2459985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0deb03d7f2d23dd4594aafba4ab0d87dd2ad409d329bc776b7c56786fab3`  
		Last Modified: Sat, 29 Dec 2018 18:50:15 GMT  
		Size: 114.2 MB (114227098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd53dd41057b3dcaf13afd8f6f31ac0b6ae1d1fe85fd57d80df4bd8cbbaeb6a`  
		Last Modified: Sat, 29 Dec 2018 18:49:59 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.7-passenger`

```console
$ docker pull redmine@sha256:1f981bbe195e7544faec067b2b5fa0e447de6abf523f5bd5f612e66e397de74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e2fdb424d9227cab6f57cb45924fd8febffd38da13a8f52ee409e09fda391256
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313639192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc26e60bced8fea392c4ce1022106d9d5d8032956713464e68ac189edc93bd6`
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
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:05:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:05:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:05:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:05:22 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:09:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:10:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:10:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:10:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:10:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:10:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:10:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 07 Jan 2019 23:10:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:13:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:13:11 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:13:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:13:11 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:13:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:13:24 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:38 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:13:38 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:13:38 GMT
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
	-	`sha256:51187a3c83827ee89a8f32a6003d4d769a127c593dbfa178b52215e8c43c54ce`  
		Last Modified: Mon, 07 Jan 2019 22:48:20 GMT  
		Size: 21.1 MB (21096096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554eff91aeb8ad24bea95183154d0430f270f855dcc380c3649a08a2dea3c3bb`  
		Last Modified: Mon, 07 Jan 2019 22:48:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8f0b69962ce93239d9e93530481ed17fe1331810b8dc584423904b5f5f8c3`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120d24658f3ac5782e76c90e82eaca7143eb1b14f66280f49ace9730a1eb792b`  
		Last Modified: Mon, 07 Jan 2019 23:18:43 GMT  
		Size: 88.0 MB (88049414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c2d20af1bcecb94c92be4bb908945799f640602f8c90cb232d2a1c2f37fa3`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 1.3 MB (1304197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02dbbcf7558eb071301278fdd5ec614a5a68ac93a86e1971a09a035dd024bbd`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc380c25945dd05fe122ddd78db9095649a1e374b4c308ecc12a505d0dc8e08`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e883e0d7e4084cd0e444bd78884dfbffa8513e623b741553be041d9e2de059`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3760b817f8a2207e8a132fbf9d2897b61e84d7bfe64248435e9db5ee7530ba5`  
		Last Modified: Mon, 07 Jan 2019 23:18:44 GMT  
		Size: 118.8 MB (118782668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a051a1a0459adf7816d185c08837874553a0dae5945e7a2abf2325d91b1b8204`  
		Last Modified: Mon, 07 Jan 2019 23:18:25 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f7f8ba91da391043258af1c821aecbb0eaaeb495889bb845bc21ee5136c23`  
		Last Modified: Mon, 07 Jan 2019 23:18:53 GMT  
		Size: 19.3 MB (19251242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a619494a3ba6337517c53a28e27538e7560383c246457d61eaea16784fb46275`  
		Last Modified: Mon, 07 Jan 2019 23:18:51 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:1f981bbe195e7544faec067b2b5fa0e447de6abf523f5bd5f612e66e397de74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e2fdb424d9227cab6f57cb45924fd8febffd38da13a8f52ee409e09fda391256
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313639192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc26e60bced8fea392c4ce1022106d9d5d8032956713464e68ac189edc93bd6`
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
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:05:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:05:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:05:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:05:22 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:09:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:10:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:10:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:10:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:10:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:10:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:10:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 07 Jan 2019 23:10:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:13:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:13:11 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:13:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:13:11 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:13:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:13:24 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:38 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:13:38 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:13:38 GMT
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
	-	`sha256:51187a3c83827ee89a8f32a6003d4d769a127c593dbfa178b52215e8c43c54ce`  
		Last Modified: Mon, 07 Jan 2019 22:48:20 GMT  
		Size: 21.1 MB (21096096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554eff91aeb8ad24bea95183154d0430f270f855dcc380c3649a08a2dea3c3bb`  
		Last Modified: Mon, 07 Jan 2019 22:48:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8f0b69962ce93239d9e93530481ed17fe1331810b8dc584423904b5f5f8c3`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120d24658f3ac5782e76c90e82eaca7143eb1b14f66280f49ace9730a1eb792b`  
		Last Modified: Mon, 07 Jan 2019 23:18:43 GMT  
		Size: 88.0 MB (88049414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c2d20af1bcecb94c92be4bb908945799f640602f8c90cb232d2a1c2f37fa3`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 1.3 MB (1304197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02dbbcf7558eb071301278fdd5ec614a5a68ac93a86e1971a09a035dd024bbd`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc380c25945dd05fe122ddd78db9095649a1e374b4c308ecc12a505d0dc8e08`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e883e0d7e4084cd0e444bd78884dfbffa8513e623b741553be041d9e2de059`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3760b817f8a2207e8a132fbf9d2897b61e84d7bfe64248435e9db5ee7530ba5`  
		Last Modified: Mon, 07 Jan 2019 23:18:44 GMT  
		Size: 118.8 MB (118782668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a051a1a0459adf7816d185c08837874553a0dae5945e7a2abf2325d91b1b8204`  
		Last Modified: Mon, 07 Jan 2019 23:18:25 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f7f8ba91da391043258af1c821aecbb0eaaeb495889bb845bc21ee5136c23`  
		Last Modified: Mon, 07 Jan 2019 23:18:53 GMT  
		Size: 19.3 MB (19251242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a619494a3ba6337517c53a28e27538e7560383c246457d61eaea16784fb46275`  
		Last Modified: Mon, 07 Jan 2019 23:18:51 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:1f981bbe195e7544faec067b2b5fa0e447de6abf523f5bd5f612e66e397de74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e2fdb424d9227cab6f57cb45924fd8febffd38da13a8f52ee409e09fda391256
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313639192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc26e60bced8fea392c4ce1022106d9d5d8032956713464e68ac189edc93bd6`
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
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_MAJOR=2.4
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_VERSION=2.4.5
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 29 Dec 2018 06:18:50 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Mon, 07 Jan 2019 22:05:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 22:05:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 22:05:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 22:05:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 22:05:22 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:09:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:10:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:10:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:10:16 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:10:16 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:10:16 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:10:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_VERSION=3.4.7
# Mon, 07 Jan 2019 23:10:17 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Mon, 07 Jan 2019 23:10:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:13:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:13:11 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:13:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:13:11 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:13:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:13:24 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:13:38 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:13:38 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:13:38 GMT
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
	-	`sha256:51187a3c83827ee89a8f32a6003d4d769a127c593dbfa178b52215e8c43c54ce`  
		Last Modified: Mon, 07 Jan 2019 22:48:20 GMT  
		Size: 21.1 MB (21096096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554eff91aeb8ad24bea95183154d0430f270f855dcc380c3649a08a2dea3c3bb`  
		Last Modified: Mon, 07 Jan 2019 22:48:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8f0b69962ce93239d9e93530481ed17fe1331810b8dc584423904b5f5f8c3`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120d24658f3ac5782e76c90e82eaca7143eb1b14f66280f49ace9730a1eb792b`  
		Last Modified: Mon, 07 Jan 2019 23:18:43 GMT  
		Size: 88.0 MB (88049414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c2d20af1bcecb94c92be4bb908945799f640602f8c90cb232d2a1c2f37fa3`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 1.3 MB (1304197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02dbbcf7558eb071301278fdd5ec614a5a68ac93a86e1971a09a035dd024bbd`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc380c25945dd05fe122ddd78db9095649a1e374b4c308ecc12a505d0dc8e08`  
		Last Modified: Mon, 07 Jan 2019 23:18:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e883e0d7e4084cd0e444bd78884dfbffa8513e623b741553be041d9e2de059`  
		Last Modified: Mon, 07 Jan 2019 23:18:27 GMT  
		Size: 2.5 MB (2459981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3760b817f8a2207e8a132fbf9d2897b61e84d7bfe64248435e9db5ee7530ba5`  
		Last Modified: Mon, 07 Jan 2019 23:18:44 GMT  
		Size: 118.8 MB (118782668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a051a1a0459adf7816d185c08837874553a0dae5945e7a2abf2325d91b1b8204`  
		Last Modified: Mon, 07 Jan 2019 23:18:25 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f7f8ba91da391043258af1c821aecbb0eaaeb495889bb845bc21ee5136c23`  
		Last Modified: Mon, 07 Jan 2019 23:18:53 GMT  
		Size: 19.3 MB (19251242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a619494a3ba6337517c53a28e27538e7560383c246457d61eaea16784fb46275`  
		Last Modified: Mon, 07 Jan 2019 23:18:51 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4`

```console
$ docker pull redmine@sha256:2e3f81eaf88e58ef7072a7d355b4849304f764b558730b19fd3209d270b4f514
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
$ docker pull redmine@sha256:4afbbc88a758e5462c057c019cf7eb277a5e1d0327e99b52f4dd66d2f0fe4508
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289246387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247580afd1a5742d21a0c8fe3395355f13abe2a1943fac2991163bd564fb0869`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96e82751f419a7a24e9c3620c463f9438c70ff588de338181719472b996c0b24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280065962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4b58963357f63033a7a2b6bd88bb6cabf6e444342c9e9018e8abbc9ef7ca5e`
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
# Wed, 26 Dec 2018 10:18:30 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 09:57:47 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:00:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:00:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:00:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:01:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:01:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:01:01 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:07:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:08:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:08:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:08:57 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:08:57 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:08:58 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:08:59 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:08:59 GMT
ENV REDMINE_VERSION=4.0.0
# Fri, 28 Dec 2018 11:09:00 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Fri, 28 Dec 2018 11:09:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:14:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:14:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:14:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:14:51 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:14:51 GMT
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
	-	`sha256:17c5a705e88cabe55b62c8be0fd1ca669ceb38d6a084afcd144c90ba741ebe15`  
		Last Modified: Fri, 28 Dec 2018 10:49:51 GMT  
		Size: 23.6 MB (23554516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0b66b6949ce9361f91daf62693194edae9eea349f86edc19d89e550788fd4d`  
		Last Modified: Fri, 28 Dec 2018 10:49:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ce5edeaeafbfe80c7926904774ced2ccc3096ccf6c76f3620b475aaebf56d4`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbac9cb495cb5d34670e7fe4a3f8a1c26a04375850c19589aaf03dc89ce4d3a`  
		Last Modified: Fri, 28 Dec 2018 11:30:03 GMT  
		Size: 85.0 MB (84975552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a83ab9270c1345f3f7f6a5a3a8be46370e94ab85f2b5b286ca5fcf595ffa`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.3 MB (1262325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f540f053c8a450c470c1b60829ec688784d4f093e04cfd68ed488d3220df3216`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4850d7dd716a9fa2248bf5c397c2b088201febe198fb8dbd1a8123631aafe8`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8140e14521d5d590145c656ad0634cb078ffe6dbcc3b8a13dba5d3801bf2436`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 2.5 MB (2525392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd96b409493a2e84be0eee69ed86ae6d695c871a9f9f52315e52fccebdd1b55`  
		Last Modified: Fri, 28 Dec 2018 11:30:07 GMT  
		Size: 112.3 MB (112311670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5db8600c4a2a2717c30c7e186eaa4c600e519625e945a95510c27567e414e`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:b929181a7bba3a5fcef41ef232926124db2d270af1b7f24cb8b79f8ab4421ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270917030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8426d6621c534497c1f449470966d6e38fd2ec600b3558c3da7b82b783e72c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:10:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:10:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 17:58:35 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:01:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:01:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:01:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:01:31 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:22:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:23:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:23:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:23:25 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:23:25 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:23:26 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:23:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 31 Dec 2018 18:23:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:28:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:28:50 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:28:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:28:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:28:51 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:28:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c1af42a2126d2c7086d23c31787ae5b0829e4ded2653f2a4932b36c9d97f8`  
		Last Modified: Mon, 31 Dec 2018 18:04:43 GMT  
		Size: 11.0 MB (10965635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a38dca6b5e520625b43621012d0051754501d0dccd543da7ca400a07adcbf03`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6fe0b4a427834bc56cec01898911aacd5a15024a0a082bd58a7d154a22b08d`  
		Last Modified: Mon, 31 Dec 2018 18:04:44 GMT  
		Size: 21.5 MB (21503735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0373ff4f502b420c7e5a859a16d684c7bb10636bca3f0705e9035fd2fe57ee2`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cbde2a65722a31f9bca4bf38d332bb1aa38ccedcfe55b89249d797cb93bed`  
		Last Modified: Mon, 31 Dec 2018 18:41:56 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd3677ce4651bc62c40b7b56cb066dfc201220d862ff2e74021a31750d7da10`  
		Last Modified: Mon, 31 Dec 2018 18:42:22 GMT  
		Size: 81.8 MB (81781836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d40dd441f2ace39032e43d059d03073103ce36725b937b29f13a959ddece9`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 1.3 MB (1254584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d28ddaa1a93fb3ebc7c986b7d38585c74101400a206070adfc8a4d23f12ad`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d1f30552f8129db61810f9f586fa5c8d43032276330d2c1405e18e6b4ba609`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34cf8a4ac8e8f7717d45283e736819e54cc184b2eeb3742ad88970762fb95dc`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 2.5 MB (2525391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9bf98b83986499b87e8b1125b426daf73056fe34fe12917db3b868da1e3fe4`  
		Last Modified: Mon, 31 Dec 2018 18:42:24 GMT  
		Size: 110.8 MB (110806857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404ba70cd5285f25097779ea4f67db687bab1af734cb91364034d524c5edd80`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:644f7a2e758bb8979fa7c1015716636612f653daef5cbbdd6baa928284a53045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276364912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19923ae98616c70e27037ae60da3ab52259777a8db3b1cfb22038625651236ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:37:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 23:51:38 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 23:51:39 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 23:51:40 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:00:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:00:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:00:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:00:58 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:35:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:37:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:37:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:37:48 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:37:48 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:37:49 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:37:51 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:37:52 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 05:37:53 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 05:37:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:50:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:50:37 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:50:38 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:50:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:50:40 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:50:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a79252ba57d5ab11d990e3ea541ba295171cb39dbc89303ed471ea63162f03`  
		Last Modified: Sun, 30 Dec 2018 00:43:21 GMT  
		Size: 11.7 MB (11700955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c477982f06a4815361be67e18ed66bbc8664ffadfd7356e85227b9872ae2a1`  
		Last Modified: Sun, 30 Dec 2018 00:43:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d499b2edd2a98e11bef56eee46bca581c3769b8fb21013694f323d6f24abd4`  
		Last Modified: Sun, 30 Dec 2018 00:44:09 GMT  
		Size: 21.9 MB (21923926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5053873716aa21089c5a1d57b250da319c0894d93582bd6206e86aecad1e1c`  
		Last Modified: Sun, 30 Dec 2018 00:44:02 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3674297ea03b27a9d254bf2e58b7dfd139049358216805a9b0626568cdd2be`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88de55ae827b6abb2dd1747b5167385057a0ff17b7101441da68c713b5a55cfb`  
		Last Modified: Sun, 30 Dec 2018 06:26:14 GMT  
		Size: 83.9 MB (83924017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c588f2956bcf758b1d3ca4b510edd28e00191103fd6f1147b36222114a1288db`  
		Last Modified: Sun, 30 Dec 2018 06:25:44 GMT  
		Size: 1.2 MB (1239903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bac2d7ff238edebaa1c5c53955ae716a47f62ffa72859a051c94150dacb047d`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050de8a97c2107dcf1dedb5bc6ea7abaca5942047af21855699012d5e56320b2`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fbeacbd01bf21b87b16af98036fc4652bc1f1dad95343801964dd4e03734b3`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 2.5 MB (2524894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f596a52f804eb2da4e568a9d286cc4d45c7511460ff5e5125f39fc30ddb84ffa`  
		Last Modified: Sun, 30 Dec 2018 06:26:16 GMT  
		Size: 111.9 MB (111930414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aea619a23436c796dd2ad698f5d18f8a3191df9854c298db56c71503ce3108`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; 386

```console
$ docker pull redmine@sha256:3cd20bafb43222338c7c6508e0218be54063a1f9c86d03c23c460d06f568257b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (293993731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f822e5138fd693e6b7b18da225159d6fc65cfd9d63cdabab38a2f6dc7bb1074`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:03:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:03:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:09:41 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:09:42 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:12:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:12:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:12:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:12:41 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 04:58:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 04:58:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:58:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 04:58:57 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 04:58:57 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 04:58:57 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 04:58:58 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 04:59:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:02:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:02:28 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:02:28 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:02:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:02:29 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:02:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe2e2439d98a682ab58f2b93a3b7a3398da79f7a394e5b779b2d54f8f9aa36e`  
		Last Modified: Sat, 29 Dec 2018 19:03:07 GMT  
		Size: 16.3 MB (16334516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167bf4d165c9e79aa252cf87ede7ed1a4b0e9f5ca48dddd741d329159a86f73`  
		Last Modified: Sat, 29 Dec 2018 19:03:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3f41712b18be9d6c9e9f887cabe0274a2a86b61b37e9538113411628f42b76`  
		Last Modified: Sat, 29 Dec 2018 19:03:31 GMT  
		Size: 21.7 MB (21738877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848858c7e398284a10bf2a709d69b36a8aeb40ead4c92f9ba3ab7b252d618329`  
		Last Modified: Sat, 29 Dec 2018 19:03:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9d8019cb52b8edb40f6e2601693cf583e2db2e39210e3d08e8f3839f728df7`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561801a283ecd9642516a89855d84b98a52174f557aa7e6653859b58e6695b3f`  
		Last Modified: Sun, 30 Dec 2018 05:11:27 GMT  
		Size: 90.0 MB (89988398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d8278abf049043540aeb3bed0c62ec681a2de7c2bd60a6cbeadab6f1fc730`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.3 MB (1271723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf605b6d971d1afe74e2e1ab61148d4a4c32a1228f55ae0820417ea3efba19d7`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f6dbaaa9b241ce0c0fa525a658a0ef5ae2cfb759fae04aeff7f79b1837caf4`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bebe12ac7a2721427d3de2178241f0a72e83c9695c452326861f43f365ae4f7`  
		Last Modified: Sun, 30 Dec 2018 05:11:03 GMT  
		Size: 2.5 MB (2524918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86118d17cfd6afd48c430c7a2e3833ababd1f309f410ab35a4e8157806f5d709`  
		Last Modified: Sun, 30 Dec 2018 05:11:29 GMT  
		Size: 116.1 MB (116073696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3084fcf26cf461b6646b47b40e98e05689fa5f79ab3eed23172ce43fb137c2`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; ppc64le

```console
$ docker pull redmine@sha256:a50cf47f7b409f39e1805989aa9d68a2591507354aaa04250aa1252d61dcf3a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285659843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be30863aad1873f42f0584ed7a2f689cea6bc176dc0c60bb970eb4fc24af22e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:53:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:53:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:03:46 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:03:50 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:03:53 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:03:57 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:03:59 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:08:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:08:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:09:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:09:02 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 20:52:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 20:54:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:55:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 20:55:47 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 20:55:50 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 20:55:51 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 20:55:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 20:55:59 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 20:56:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 20:56:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:03:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:04:02 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:04:04 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:04:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:04:11 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:04:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcd0d5da45458d86abc5bed20cdd7b8dc9814b34eb844bb0e941546507cb85`  
		Last Modified: Sat, 29 Dec 2018 15:35:30 GMT  
		Size: 12.3 MB (12283468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3f7680937dd6058acb2d73f6fd2c6156150096802b79e73ac21d495ec8113c`  
		Last Modified: Sat, 29 Dec 2018 15:35:24 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b9833fd712de3c4df7741e9d168242c336bf04451d88e2516f2c55a2566c6`  
		Last Modified: Sat, 29 Dec 2018 15:36:24 GMT  
		Size: 22.4 MB (22396059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4cb9f03a9fc8a032181071c7ef960751f5e85c4f275f3544cbf50c794cec09`  
		Last Modified: Sat, 29 Dec 2018 15:36:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b3011a1b1aa29d0b7622529660a7bb38cc0dd6d2a9ddd80f15eecfb6a4ca01`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb4abda30b688153efa47d6e8925298feb14af7b23cf86ae4b32a58b784cf`  
		Last Modified: Sat, 29 Dec 2018 21:22:29 GMT  
		Size: 87.2 MB (87240815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e548fbd603fb7980a00027f3a8c80c60053a0758932fae68ca96230c6bae6`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.2 MB (1228138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542749e627547d5db6bea3cac99a3daad031f3137eeb5b0d877dd7cdf865d1e3`  
		Last Modified: Sat, 29 Dec 2018 21:22:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5233de5806bd0b9d3d8349b43c625d0ce96f9879c4e8a53b389b1c5d9d1ed1`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14293a07550fee33e8ecd41414ea2692babb6ca8991e312b62b082aecc389aa6`  
		Last Modified: Sat, 29 Dec 2018 21:22:09 GMT  
		Size: 2.5 MB (2525379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdbda60a1d41be883958a8b41bc4d2d2d06c3a78c8e4c2c03e33ec157e0db97`  
		Last Modified: Sat, 29 Dec 2018 21:22:28 GMT  
		Size: 114.4 MB (114375869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867948c0c531d403797c67c2a32a9d6eeb99a40764dceb4b1b18f3e876bea220`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; s390x

```console
$ docker pull redmine@sha256:945a1d6131db43218f85e14c119d1f0a88fef8b7fbab46c4363db57e603edf9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286141643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b647cb710c4b31784769d289fdc116804a48d0e3b913490378a3f1500150dd28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:49:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:49:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:54:28 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:54:28 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:56:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:56:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:56:34 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:56:34 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:39:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:40:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:40:01 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:40:02 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:40:02 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 18:40:03 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 18:40:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:42:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:42:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:42:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:42:37 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:42:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662841ebe4a1deb1e3f8cb13b2a42afd6aa374e5f3e22406610ff5e010175c83`  
		Last Modified: Sat, 29 Dec 2018 16:08:51 GMT  
		Size: 13.3 MB (13292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05810924bf036f5873e63e5db8c1723d567d01164fb34ddb27908cd0fa04e69f`  
		Last Modified: Sat, 29 Dec 2018 16:08:48 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b04863dc938af894222b8f9728421b608b04aeb95c2b7a3df521e0c2a99c51`  
		Last Modified: Sat, 29 Dec 2018 16:09:16 GMT  
		Size: 22.5 MB (22549006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fe16254cc4e2027733ca8cf4a5c1c2326d511ecb88fae4c6b256a4540311b5`  
		Last Modified: Sat, 29 Dec 2018 16:09:12 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8c916015963459669325eb3e72456e90062d90dda355af7ceefd81e60deca7`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94d797175566be9926b1c110d9b2a499230af511710b157707d29c7b700544f`  
		Last Modified: Sat, 29 Dec 2018 18:49:51 GMT  
		Size: 87.9 MB (87868099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8f76b4fcece9e89008e0bd190bb7860d8c7f61c9a54d27c96a67aedeca62b5`  
		Last Modified: Sat, 29 Dec 2018 18:49:36 GMT  
		Size: 1.3 MB (1293888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdfeed228f8965cfe4534e5c2fb34450eb6af1fb5ec799490ba96f68a04c3c0`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb07325ba88b10dd79bb9b4686e0ac114a5bf6bfbe4802813cc299386a4af689`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e776038b8317e9bb1fec0ca296828516b8d3a7c046bd91d67eac378e73ba3641`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 2.5 MB (2524913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9811e0640a4e818fca38c2dc115ac39f4033f5a31b633229e649faf85c7fa193`  
		Last Modified: Sat, 29 Dec 2018 18:49:50 GMT  
		Size: 113.4 MB (113402714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45132d0cbeca5bf57772289b546d739fa7430ab307db783a27eae776c950639f`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0`

```console
$ docker pull redmine@sha256:2e3f81eaf88e58ef7072a7d355b4849304f764b558730b19fd3209d270b4f514
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
$ docker pull redmine@sha256:4afbbc88a758e5462c057c019cf7eb277a5e1d0327e99b52f4dd66d2f0fe4508
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289246387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247580afd1a5742d21a0c8fe3395355f13abe2a1943fac2991163bd564fb0869`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96e82751f419a7a24e9c3620c463f9438c70ff588de338181719472b996c0b24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280065962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4b58963357f63033a7a2b6bd88bb6cabf6e444342c9e9018e8abbc9ef7ca5e`
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
# Wed, 26 Dec 2018 10:18:30 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 09:57:47 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:00:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:00:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:00:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:01:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:01:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:01:01 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:07:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:08:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:08:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:08:57 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:08:57 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:08:58 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:08:59 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:08:59 GMT
ENV REDMINE_VERSION=4.0.0
# Fri, 28 Dec 2018 11:09:00 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Fri, 28 Dec 2018 11:09:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:14:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:14:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:14:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:14:51 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:14:51 GMT
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
	-	`sha256:17c5a705e88cabe55b62c8be0fd1ca669ceb38d6a084afcd144c90ba741ebe15`  
		Last Modified: Fri, 28 Dec 2018 10:49:51 GMT  
		Size: 23.6 MB (23554516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0b66b6949ce9361f91daf62693194edae9eea349f86edc19d89e550788fd4d`  
		Last Modified: Fri, 28 Dec 2018 10:49:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ce5edeaeafbfe80c7926904774ced2ccc3096ccf6c76f3620b475aaebf56d4`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbac9cb495cb5d34670e7fe4a3f8a1c26a04375850c19589aaf03dc89ce4d3a`  
		Last Modified: Fri, 28 Dec 2018 11:30:03 GMT  
		Size: 85.0 MB (84975552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a83ab9270c1345f3f7f6a5a3a8be46370e94ab85f2b5b286ca5fcf595ffa`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.3 MB (1262325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f540f053c8a450c470c1b60829ec688784d4f093e04cfd68ed488d3220df3216`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4850d7dd716a9fa2248bf5c397c2b088201febe198fb8dbd1a8123631aafe8`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8140e14521d5d590145c656ad0634cb078ffe6dbcc3b8a13dba5d3801bf2436`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 2.5 MB (2525392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd96b409493a2e84be0eee69ed86ae6d695c871a9f9f52315e52fccebdd1b55`  
		Last Modified: Fri, 28 Dec 2018 11:30:07 GMT  
		Size: 112.3 MB (112311670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5db8600c4a2a2717c30c7e186eaa4c600e519625e945a95510c27567e414e`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm variant v7

```console
$ docker pull redmine@sha256:b929181a7bba3a5fcef41ef232926124db2d270af1b7f24cb8b79f8ab4421ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270917030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8426d6621c534497c1f449470966d6e38fd2ec600b3558c3da7b82b783e72c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:10:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:10:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 17:58:35 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:01:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:01:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:01:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:01:31 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:22:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:23:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:23:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:23:25 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:23:25 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:23:26 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:23:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 31 Dec 2018 18:23:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:28:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:28:50 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:28:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:28:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:28:51 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:28:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c1af42a2126d2c7086d23c31787ae5b0829e4ded2653f2a4932b36c9d97f8`  
		Last Modified: Mon, 31 Dec 2018 18:04:43 GMT  
		Size: 11.0 MB (10965635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a38dca6b5e520625b43621012d0051754501d0dccd543da7ca400a07adcbf03`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6fe0b4a427834bc56cec01898911aacd5a15024a0a082bd58a7d154a22b08d`  
		Last Modified: Mon, 31 Dec 2018 18:04:44 GMT  
		Size: 21.5 MB (21503735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0373ff4f502b420c7e5a859a16d684c7bb10636bca3f0705e9035fd2fe57ee2`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cbde2a65722a31f9bca4bf38d332bb1aa38ccedcfe55b89249d797cb93bed`  
		Last Modified: Mon, 31 Dec 2018 18:41:56 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd3677ce4651bc62c40b7b56cb066dfc201220d862ff2e74021a31750d7da10`  
		Last Modified: Mon, 31 Dec 2018 18:42:22 GMT  
		Size: 81.8 MB (81781836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d40dd441f2ace39032e43d059d03073103ce36725b937b29f13a959ddece9`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 1.3 MB (1254584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d28ddaa1a93fb3ebc7c986b7d38585c74101400a206070adfc8a4d23f12ad`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d1f30552f8129db61810f9f586fa5c8d43032276330d2c1405e18e6b4ba609`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34cf8a4ac8e8f7717d45283e736819e54cc184b2eeb3742ad88970762fb95dc`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 2.5 MB (2525391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9bf98b83986499b87e8b1125b426daf73056fe34fe12917db3b868da1e3fe4`  
		Last Modified: Mon, 31 Dec 2018 18:42:24 GMT  
		Size: 110.8 MB (110806857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404ba70cd5285f25097779ea4f67db687bab1af734cb91364034d524c5edd80`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:644f7a2e758bb8979fa7c1015716636612f653daef5cbbdd6baa928284a53045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276364912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19923ae98616c70e27037ae60da3ab52259777a8db3b1cfb22038625651236ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:37:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 23:51:38 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 23:51:39 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 23:51:40 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:00:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:00:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:00:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:00:58 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:35:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:37:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:37:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:37:48 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:37:48 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:37:49 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:37:51 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:37:52 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 05:37:53 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 05:37:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:50:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:50:37 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:50:38 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:50:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:50:40 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:50:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a79252ba57d5ab11d990e3ea541ba295171cb39dbc89303ed471ea63162f03`  
		Last Modified: Sun, 30 Dec 2018 00:43:21 GMT  
		Size: 11.7 MB (11700955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c477982f06a4815361be67e18ed66bbc8664ffadfd7356e85227b9872ae2a1`  
		Last Modified: Sun, 30 Dec 2018 00:43:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d499b2edd2a98e11bef56eee46bca581c3769b8fb21013694f323d6f24abd4`  
		Last Modified: Sun, 30 Dec 2018 00:44:09 GMT  
		Size: 21.9 MB (21923926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5053873716aa21089c5a1d57b250da319c0894d93582bd6206e86aecad1e1c`  
		Last Modified: Sun, 30 Dec 2018 00:44:02 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3674297ea03b27a9d254bf2e58b7dfd139049358216805a9b0626568cdd2be`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88de55ae827b6abb2dd1747b5167385057a0ff17b7101441da68c713b5a55cfb`  
		Last Modified: Sun, 30 Dec 2018 06:26:14 GMT  
		Size: 83.9 MB (83924017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c588f2956bcf758b1d3ca4b510edd28e00191103fd6f1147b36222114a1288db`  
		Last Modified: Sun, 30 Dec 2018 06:25:44 GMT  
		Size: 1.2 MB (1239903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bac2d7ff238edebaa1c5c53955ae716a47f62ffa72859a051c94150dacb047d`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050de8a97c2107dcf1dedb5bc6ea7abaca5942047af21855699012d5e56320b2`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fbeacbd01bf21b87b16af98036fc4652bc1f1dad95343801964dd4e03734b3`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 2.5 MB (2524894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f596a52f804eb2da4e568a9d286cc4d45c7511460ff5e5125f39fc30ddb84ffa`  
		Last Modified: Sun, 30 Dec 2018 06:26:16 GMT  
		Size: 111.9 MB (111930414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aea619a23436c796dd2ad698f5d18f8a3191df9854c298db56c71503ce3108`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; 386

```console
$ docker pull redmine@sha256:3cd20bafb43222338c7c6508e0218be54063a1f9c86d03c23c460d06f568257b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (293993731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f822e5138fd693e6b7b18da225159d6fc65cfd9d63cdabab38a2f6dc7bb1074`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:03:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:03:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:09:41 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:09:42 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:12:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:12:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:12:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:12:41 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 04:58:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 04:58:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:58:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 04:58:57 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 04:58:57 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 04:58:57 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 04:58:58 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 04:59:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:02:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:02:28 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:02:28 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:02:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:02:29 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:02:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe2e2439d98a682ab58f2b93a3b7a3398da79f7a394e5b779b2d54f8f9aa36e`  
		Last Modified: Sat, 29 Dec 2018 19:03:07 GMT  
		Size: 16.3 MB (16334516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167bf4d165c9e79aa252cf87ede7ed1a4b0e9f5ca48dddd741d329159a86f73`  
		Last Modified: Sat, 29 Dec 2018 19:03:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3f41712b18be9d6c9e9f887cabe0274a2a86b61b37e9538113411628f42b76`  
		Last Modified: Sat, 29 Dec 2018 19:03:31 GMT  
		Size: 21.7 MB (21738877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848858c7e398284a10bf2a709d69b36a8aeb40ead4c92f9ba3ab7b252d618329`  
		Last Modified: Sat, 29 Dec 2018 19:03:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9d8019cb52b8edb40f6e2601693cf583e2db2e39210e3d08e8f3839f728df7`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561801a283ecd9642516a89855d84b98a52174f557aa7e6653859b58e6695b3f`  
		Last Modified: Sun, 30 Dec 2018 05:11:27 GMT  
		Size: 90.0 MB (89988398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d8278abf049043540aeb3bed0c62ec681a2de7c2bd60a6cbeadab6f1fc730`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.3 MB (1271723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf605b6d971d1afe74e2e1ab61148d4a4c32a1228f55ae0820417ea3efba19d7`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f6dbaaa9b241ce0c0fa525a658a0ef5ae2cfb759fae04aeff7f79b1837caf4`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bebe12ac7a2721427d3de2178241f0a72e83c9695c452326861f43f365ae4f7`  
		Last Modified: Sun, 30 Dec 2018 05:11:03 GMT  
		Size: 2.5 MB (2524918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86118d17cfd6afd48c430c7a2e3833ababd1f309f410ab35a4e8157806f5d709`  
		Last Modified: Sun, 30 Dec 2018 05:11:29 GMT  
		Size: 116.1 MB (116073696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3084fcf26cf461b6646b47b40e98e05689fa5f79ab3eed23172ce43fb137c2`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; ppc64le

```console
$ docker pull redmine@sha256:a50cf47f7b409f39e1805989aa9d68a2591507354aaa04250aa1252d61dcf3a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285659843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be30863aad1873f42f0584ed7a2f689cea6bc176dc0c60bb970eb4fc24af22e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:53:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:53:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:03:46 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:03:50 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:03:53 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:03:57 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:03:59 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:08:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:08:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:09:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:09:02 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 20:52:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 20:54:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:55:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 20:55:47 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 20:55:50 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 20:55:51 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 20:55:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 20:55:59 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 20:56:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 20:56:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:03:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:04:02 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:04:04 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:04:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:04:11 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:04:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcd0d5da45458d86abc5bed20cdd7b8dc9814b34eb844bb0e941546507cb85`  
		Last Modified: Sat, 29 Dec 2018 15:35:30 GMT  
		Size: 12.3 MB (12283468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3f7680937dd6058acb2d73f6fd2c6156150096802b79e73ac21d495ec8113c`  
		Last Modified: Sat, 29 Dec 2018 15:35:24 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b9833fd712de3c4df7741e9d168242c336bf04451d88e2516f2c55a2566c6`  
		Last Modified: Sat, 29 Dec 2018 15:36:24 GMT  
		Size: 22.4 MB (22396059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4cb9f03a9fc8a032181071c7ef960751f5e85c4f275f3544cbf50c794cec09`  
		Last Modified: Sat, 29 Dec 2018 15:36:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b3011a1b1aa29d0b7622529660a7bb38cc0dd6d2a9ddd80f15eecfb6a4ca01`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb4abda30b688153efa47d6e8925298feb14af7b23cf86ae4b32a58b784cf`  
		Last Modified: Sat, 29 Dec 2018 21:22:29 GMT  
		Size: 87.2 MB (87240815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e548fbd603fb7980a00027f3a8c80c60053a0758932fae68ca96230c6bae6`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.2 MB (1228138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542749e627547d5db6bea3cac99a3daad031f3137eeb5b0d877dd7cdf865d1e3`  
		Last Modified: Sat, 29 Dec 2018 21:22:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5233de5806bd0b9d3d8349b43c625d0ce96f9879c4e8a53b389b1c5d9d1ed1`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14293a07550fee33e8ecd41414ea2692babb6ca8991e312b62b082aecc389aa6`  
		Last Modified: Sat, 29 Dec 2018 21:22:09 GMT  
		Size: 2.5 MB (2525379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdbda60a1d41be883958a8b41bc4d2d2d06c3a78c8e4c2c03e33ec157e0db97`  
		Last Modified: Sat, 29 Dec 2018 21:22:28 GMT  
		Size: 114.4 MB (114375869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867948c0c531d403797c67c2a32a9d6eeb99a40764dceb4b1b18f3e876bea220`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; s390x

```console
$ docker pull redmine@sha256:945a1d6131db43218f85e14c119d1f0a88fef8b7fbab46c4363db57e603edf9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286141643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b647cb710c4b31784769d289fdc116804a48d0e3b913490378a3f1500150dd28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:49:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:49:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:54:28 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:54:28 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:56:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:56:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:56:34 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:56:34 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:39:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:40:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:40:01 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:40:02 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:40:02 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 18:40:03 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 18:40:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:42:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:42:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:42:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:42:37 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:42:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662841ebe4a1deb1e3f8cb13b2a42afd6aa374e5f3e22406610ff5e010175c83`  
		Last Modified: Sat, 29 Dec 2018 16:08:51 GMT  
		Size: 13.3 MB (13292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05810924bf036f5873e63e5db8c1723d567d01164fb34ddb27908cd0fa04e69f`  
		Last Modified: Sat, 29 Dec 2018 16:08:48 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b04863dc938af894222b8f9728421b608b04aeb95c2b7a3df521e0c2a99c51`  
		Last Modified: Sat, 29 Dec 2018 16:09:16 GMT  
		Size: 22.5 MB (22549006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fe16254cc4e2027733ca8cf4a5c1c2326d511ecb88fae4c6b256a4540311b5`  
		Last Modified: Sat, 29 Dec 2018 16:09:12 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8c916015963459669325eb3e72456e90062d90dda355af7ceefd81e60deca7`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94d797175566be9926b1c110d9b2a499230af511710b157707d29c7b700544f`  
		Last Modified: Sat, 29 Dec 2018 18:49:51 GMT  
		Size: 87.9 MB (87868099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8f76b4fcece9e89008e0bd190bb7860d8c7f61c9a54d27c96a67aedeca62b5`  
		Last Modified: Sat, 29 Dec 2018 18:49:36 GMT  
		Size: 1.3 MB (1293888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdfeed228f8965cfe4534e5c2fb34450eb6af1fb5ec799490ba96f68a04c3c0`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb07325ba88b10dd79bb9b4686e0ac114a5bf6bfbe4802813cc299386a4af689`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e776038b8317e9bb1fec0ca296828516b8d3a7c046bd91d67eac378e73ba3641`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 2.5 MB (2524913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9811e0640a4e818fca38c2dc115ac39f4033f5a31b633229e649faf85c7fa193`  
		Last Modified: Sat, 29 Dec 2018 18:49:50 GMT  
		Size: 113.4 MB (113402714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45132d0cbeca5bf57772289b546d739fa7430ab307db783a27eae776c950639f`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.0`

```console
$ docker pull redmine@sha256:2e3f81eaf88e58ef7072a7d355b4849304f764b558730b19fd3209d270b4f514
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
$ docker pull redmine@sha256:4afbbc88a758e5462c057c019cf7eb277a5e1d0327e99b52f4dd66d2f0fe4508
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289246387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247580afd1a5742d21a0c8fe3395355f13abe2a1943fac2991163bd564fb0869`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96e82751f419a7a24e9c3620c463f9438c70ff588de338181719472b996c0b24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280065962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4b58963357f63033a7a2b6bd88bb6cabf6e444342c9e9018e8abbc9ef7ca5e`
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
# Wed, 26 Dec 2018 10:18:30 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 09:57:47 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:00:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:00:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:00:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:01:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:01:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:01:01 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:07:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:08:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:08:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:08:57 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:08:57 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:08:58 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:08:59 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:08:59 GMT
ENV REDMINE_VERSION=4.0.0
# Fri, 28 Dec 2018 11:09:00 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Fri, 28 Dec 2018 11:09:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:14:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:14:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:14:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:14:51 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:14:51 GMT
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
	-	`sha256:17c5a705e88cabe55b62c8be0fd1ca669ceb38d6a084afcd144c90ba741ebe15`  
		Last Modified: Fri, 28 Dec 2018 10:49:51 GMT  
		Size: 23.6 MB (23554516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0b66b6949ce9361f91daf62693194edae9eea349f86edc19d89e550788fd4d`  
		Last Modified: Fri, 28 Dec 2018 10:49:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ce5edeaeafbfe80c7926904774ced2ccc3096ccf6c76f3620b475aaebf56d4`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbac9cb495cb5d34670e7fe4a3f8a1c26a04375850c19589aaf03dc89ce4d3a`  
		Last Modified: Fri, 28 Dec 2018 11:30:03 GMT  
		Size: 85.0 MB (84975552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a83ab9270c1345f3f7f6a5a3a8be46370e94ab85f2b5b286ca5fcf595ffa`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.3 MB (1262325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f540f053c8a450c470c1b60829ec688784d4f093e04cfd68ed488d3220df3216`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4850d7dd716a9fa2248bf5c397c2b088201febe198fb8dbd1a8123631aafe8`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8140e14521d5d590145c656ad0634cb078ffe6dbcc3b8a13dba5d3801bf2436`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 2.5 MB (2525392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd96b409493a2e84be0eee69ed86ae6d695c871a9f9f52315e52fccebdd1b55`  
		Last Modified: Fri, 28 Dec 2018 11:30:07 GMT  
		Size: 112.3 MB (112311670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5db8600c4a2a2717c30c7e186eaa4c600e519625e945a95510c27567e414e`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; arm variant v7

```console
$ docker pull redmine@sha256:b929181a7bba3a5fcef41ef232926124db2d270af1b7f24cb8b79f8ab4421ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270917030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8426d6621c534497c1f449470966d6e38fd2ec600b3558c3da7b82b783e72c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:10:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:10:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 17:58:35 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:01:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:01:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:01:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:01:31 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:22:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:23:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:23:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:23:25 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:23:25 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:23:26 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:23:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 31 Dec 2018 18:23:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:28:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:28:50 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:28:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:28:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:28:51 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:28:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c1af42a2126d2c7086d23c31787ae5b0829e4ded2653f2a4932b36c9d97f8`  
		Last Modified: Mon, 31 Dec 2018 18:04:43 GMT  
		Size: 11.0 MB (10965635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a38dca6b5e520625b43621012d0051754501d0dccd543da7ca400a07adcbf03`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6fe0b4a427834bc56cec01898911aacd5a15024a0a082bd58a7d154a22b08d`  
		Last Modified: Mon, 31 Dec 2018 18:04:44 GMT  
		Size: 21.5 MB (21503735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0373ff4f502b420c7e5a859a16d684c7bb10636bca3f0705e9035fd2fe57ee2`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cbde2a65722a31f9bca4bf38d332bb1aa38ccedcfe55b89249d797cb93bed`  
		Last Modified: Mon, 31 Dec 2018 18:41:56 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd3677ce4651bc62c40b7b56cb066dfc201220d862ff2e74021a31750d7da10`  
		Last Modified: Mon, 31 Dec 2018 18:42:22 GMT  
		Size: 81.8 MB (81781836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d40dd441f2ace39032e43d059d03073103ce36725b937b29f13a959ddece9`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 1.3 MB (1254584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d28ddaa1a93fb3ebc7c986b7d38585c74101400a206070adfc8a4d23f12ad`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d1f30552f8129db61810f9f586fa5c8d43032276330d2c1405e18e6b4ba609`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34cf8a4ac8e8f7717d45283e736819e54cc184b2eeb3742ad88970762fb95dc`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 2.5 MB (2525391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9bf98b83986499b87e8b1125b426daf73056fe34fe12917db3b868da1e3fe4`  
		Last Modified: Mon, 31 Dec 2018 18:42:24 GMT  
		Size: 110.8 MB (110806857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404ba70cd5285f25097779ea4f67db687bab1af734cb91364034d524c5edd80`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:644f7a2e758bb8979fa7c1015716636612f653daef5cbbdd6baa928284a53045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276364912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19923ae98616c70e27037ae60da3ab52259777a8db3b1cfb22038625651236ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:37:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 23:51:38 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 23:51:39 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 23:51:40 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:00:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:00:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:00:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:00:58 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:35:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:37:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:37:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:37:48 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:37:48 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:37:49 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:37:51 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:37:52 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 05:37:53 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 05:37:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:50:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:50:37 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:50:38 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:50:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:50:40 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:50:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a79252ba57d5ab11d990e3ea541ba295171cb39dbc89303ed471ea63162f03`  
		Last Modified: Sun, 30 Dec 2018 00:43:21 GMT  
		Size: 11.7 MB (11700955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c477982f06a4815361be67e18ed66bbc8664ffadfd7356e85227b9872ae2a1`  
		Last Modified: Sun, 30 Dec 2018 00:43:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d499b2edd2a98e11bef56eee46bca581c3769b8fb21013694f323d6f24abd4`  
		Last Modified: Sun, 30 Dec 2018 00:44:09 GMT  
		Size: 21.9 MB (21923926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5053873716aa21089c5a1d57b250da319c0894d93582bd6206e86aecad1e1c`  
		Last Modified: Sun, 30 Dec 2018 00:44:02 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3674297ea03b27a9d254bf2e58b7dfd139049358216805a9b0626568cdd2be`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88de55ae827b6abb2dd1747b5167385057a0ff17b7101441da68c713b5a55cfb`  
		Last Modified: Sun, 30 Dec 2018 06:26:14 GMT  
		Size: 83.9 MB (83924017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c588f2956bcf758b1d3ca4b510edd28e00191103fd6f1147b36222114a1288db`  
		Last Modified: Sun, 30 Dec 2018 06:25:44 GMT  
		Size: 1.2 MB (1239903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bac2d7ff238edebaa1c5c53955ae716a47f62ffa72859a051c94150dacb047d`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050de8a97c2107dcf1dedb5bc6ea7abaca5942047af21855699012d5e56320b2`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fbeacbd01bf21b87b16af98036fc4652bc1f1dad95343801964dd4e03734b3`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 2.5 MB (2524894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f596a52f804eb2da4e568a9d286cc4d45c7511460ff5e5125f39fc30ddb84ffa`  
		Last Modified: Sun, 30 Dec 2018 06:26:16 GMT  
		Size: 111.9 MB (111930414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aea619a23436c796dd2ad698f5d18f8a3191df9854c298db56c71503ce3108`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; 386

```console
$ docker pull redmine@sha256:3cd20bafb43222338c7c6508e0218be54063a1f9c86d03c23c460d06f568257b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (293993731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f822e5138fd693e6b7b18da225159d6fc65cfd9d63cdabab38a2f6dc7bb1074`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:03:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:03:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:09:41 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:09:42 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:12:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:12:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:12:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:12:41 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 04:58:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 04:58:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:58:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 04:58:57 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 04:58:57 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 04:58:57 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 04:58:58 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 04:59:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:02:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:02:28 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:02:28 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:02:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:02:29 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:02:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe2e2439d98a682ab58f2b93a3b7a3398da79f7a394e5b779b2d54f8f9aa36e`  
		Last Modified: Sat, 29 Dec 2018 19:03:07 GMT  
		Size: 16.3 MB (16334516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167bf4d165c9e79aa252cf87ede7ed1a4b0e9f5ca48dddd741d329159a86f73`  
		Last Modified: Sat, 29 Dec 2018 19:03:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3f41712b18be9d6c9e9f887cabe0274a2a86b61b37e9538113411628f42b76`  
		Last Modified: Sat, 29 Dec 2018 19:03:31 GMT  
		Size: 21.7 MB (21738877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848858c7e398284a10bf2a709d69b36a8aeb40ead4c92f9ba3ab7b252d618329`  
		Last Modified: Sat, 29 Dec 2018 19:03:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9d8019cb52b8edb40f6e2601693cf583e2db2e39210e3d08e8f3839f728df7`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561801a283ecd9642516a89855d84b98a52174f557aa7e6653859b58e6695b3f`  
		Last Modified: Sun, 30 Dec 2018 05:11:27 GMT  
		Size: 90.0 MB (89988398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d8278abf049043540aeb3bed0c62ec681a2de7c2bd60a6cbeadab6f1fc730`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.3 MB (1271723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf605b6d971d1afe74e2e1ab61148d4a4c32a1228f55ae0820417ea3efba19d7`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f6dbaaa9b241ce0c0fa525a658a0ef5ae2cfb759fae04aeff7f79b1837caf4`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bebe12ac7a2721427d3de2178241f0a72e83c9695c452326861f43f365ae4f7`  
		Last Modified: Sun, 30 Dec 2018 05:11:03 GMT  
		Size: 2.5 MB (2524918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86118d17cfd6afd48c430c7a2e3833ababd1f309f410ab35a4e8157806f5d709`  
		Last Modified: Sun, 30 Dec 2018 05:11:29 GMT  
		Size: 116.1 MB (116073696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3084fcf26cf461b6646b47b40e98e05689fa5f79ab3eed23172ce43fb137c2`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; ppc64le

```console
$ docker pull redmine@sha256:a50cf47f7b409f39e1805989aa9d68a2591507354aaa04250aa1252d61dcf3a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285659843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be30863aad1873f42f0584ed7a2f689cea6bc176dc0c60bb970eb4fc24af22e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:53:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:53:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:03:46 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:03:50 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:03:53 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:03:57 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:03:59 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:08:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:08:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:09:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:09:02 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 20:52:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 20:54:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:55:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 20:55:47 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 20:55:50 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 20:55:51 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 20:55:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 20:55:59 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 20:56:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 20:56:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:03:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:04:02 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:04:04 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:04:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:04:11 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:04:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcd0d5da45458d86abc5bed20cdd7b8dc9814b34eb844bb0e941546507cb85`  
		Last Modified: Sat, 29 Dec 2018 15:35:30 GMT  
		Size: 12.3 MB (12283468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3f7680937dd6058acb2d73f6fd2c6156150096802b79e73ac21d495ec8113c`  
		Last Modified: Sat, 29 Dec 2018 15:35:24 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b9833fd712de3c4df7741e9d168242c336bf04451d88e2516f2c55a2566c6`  
		Last Modified: Sat, 29 Dec 2018 15:36:24 GMT  
		Size: 22.4 MB (22396059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4cb9f03a9fc8a032181071c7ef960751f5e85c4f275f3544cbf50c794cec09`  
		Last Modified: Sat, 29 Dec 2018 15:36:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b3011a1b1aa29d0b7622529660a7bb38cc0dd6d2a9ddd80f15eecfb6a4ca01`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb4abda30b688153efa47d6e8925298feb14af7b23cf86ae4b32a58b784cf`  
		Last Modified: Sat, 29 Dec 2018 21:22:29 GMT  
		Size: 87.2 MB (87240815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e548fbd603fb7980a00027f3a8c80c60053a0758932fae68ca96230c6bae6`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.2 MB (1228138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542749e627547d5db6bea3cac99a3daad031f3137eeb5b0d877dd7cdf865d1e3`  
		Last Modified: Sat, 29 Dec 2018 21:22:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5233de5806bd0b9d3d8349b43c625d0ce96f9879c4e8a53b389b1c5d9d1ed1`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14293a07550fee33e8ecd41414ea2692babb6ca8991e312b62b082aecc389aa6`  
		Last Modified: Sat, 29 Dec 2018 21:22:09 GMT  
		Size: 2.5 MB (2525379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdbda60a1d41be883958a8b41bc4d2d2d06c3a78c8e4c2c03e33ec157e0db97`  
		Last Modified: Sat, 29 Dec 2018 21:22:28 GMT  
		Size: 114.4 MB (114375869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867948c0c531d403797c67c2a32a9d6eeb99a40764dceb4b1b18f3e876bea220`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.0` - linux; s390x

```console
$ docker pull redmine@sha256:945a1d6131db43218f85e14c119d1f0a88fef8b7fbab46c4363db57e603edf9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286141643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b647cb710c4b31784769d289fdc116804a48d0e3b913490378a3f1500150dd28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:49:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:49:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:54:28 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:54:28 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:56:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:56:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:56:34 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:56:34 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:39:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:40:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:40:01 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:40:02 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:40:02 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 18:40:03 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 18:40:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:42:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:42:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:42:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:42:37 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:42:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662841ebe4a1deb1e3f8cb13b2a42afd6aa374e5f3e22406610ff5e010175c83`  
		Last Modified: Sat, 29 Dec 2018 16:08:51 GMT  
		Size: 13.3 MB (13292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05810924bf036f5873e63e5db8c1723d567d01164fb34ddb27908cd0fa04e69f`  
		Last Modified: Sat, 29 Dec 2018 16:08:48 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b04863dc938af894222b8f9728421b608b04aeb95c2b7a3df521e0c2a99c51`  
		Last Modified: Sat, 29 Dec 2018 16:09:16 GMT  
		Size: 22.5 MB (22549006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fe16254cc4e2027733ca8cf4a5c1c2326d511ecb88fae4c6b256a4540311b5`  
		Last Modified: Sat, 29 Dec 2018 16:09:12 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8c916015963459669325eb3e72456e90062d90dda355af7ceefd81e60deca7`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94d797175566be9926b1c110d9b2a499230af511710b157707d29c7b700544f`  
		Last Modified: Sat, 29 Dec 2018 18:49:51 GMT  
		Size: 87.9 MB (87868099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8f76b4fcece9e89008e0bd190bb7860d8c7f61c9a54d27c96a67aedeca62b5`  
		Last Modified: Sat, 29 Dec 2018 18:49:36 GMT  
		Size: 1.3 MB (1293888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdfeed228f8965cfe4534e5c2fb34450eb6af1fb5ec799490ba96f68a04c3c0`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb07325ba88b10dd79bb9b4686e0ac114a5bf6bfbe4802813cc299386a4af689`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e776038b8317e9bb1fec0ca296828516b8d3a7c046bd91d67eac378e73ba3641`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 2.5 MB (2524913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9811e0640a4e818fca38c2dc115ac39f4033f5a31b633229e649faf85c7fa193`  
		Last Modified: Sat, 29 Dec 2018 18:49:50 GMT  
		Size: 113.4 MB (113402714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45132d0cbeca5bf57772289b546d739fa7430ab307db783a27eae776c950639f`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.0-passenger`

```console
$ docker pull redmine@sha256:8901a0560027adb2bdea6f8ebfb7174d2e5bb74b7d2ea4beffb64f8c52e3e3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0.0-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:01a5a8961dab66bb92304fd7f9688359b0c03173c5a8e12cc4358ec6f96f3477
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.0 MB (312977319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6aa94895708b947c52ae18d87e841372c3fa79a4790ae772b0e3f1e77ecd8b`
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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:09:20 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:09:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:35 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:09:35 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:09:35 GMT
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90a6131cd387a46574f5496a46d1cc227934b94ed2f814cdd8c62e68a03662`  
		Last Modified: Mon, 07 Jan 2019 23:18:20 GMT  
		Size: 19.3 MB (19251812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0e1ae630ff7bbcc773cfa9c9a7988d73927092f1a2d81c60b0bd7a8ee3f0f6`  
		Last Modified: Mon, 07 Jan 2019 23:18:18 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0-passenger`

```console
$ docker pull redmine@sha256:8901a0560027adb2bdea6f8ebfb7174d2e5bb74b7d2ea4beffb64f8c52e3e3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:01a5a8961dab66bb92304fd7f9688359b0c03173c5a8e12cc4358ec6f96f3477
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.0 MB (312977319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6aa94895708b947c52ae18d87e841372c3fa79a4790ae772b0e3f1e77ecd8b`
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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:09:20 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:09:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:35 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:09:35 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:09:35 GMT
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90a6131cd387a46574f5496a46d1cc227934b94ed2f814cdd8c62e68a03662`  
		Last Modified: Mon, 07 Jan 2019 23:18:20 GMT  
		Size: 19.3 MB (19251812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0e1ae630ff7bbcc773cfa9c9a7988d73927092f1a2d81c60b0bd7a8ee3f0f6`  
		Last Modified: Mon, 07 Jan 2019 23:18:18 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4-passenger`

```console
$ docker pull redmine@sha256:8901a0560027adb2bdea6f8ebfb7174d2e5bb74b7d2ea4beffb64f8c52e3e3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:01a5a8961dab66bb92304fd7f9688359b0c03173c5a8e12cc4358ec6f96f3477
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.0 MB (312977319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6aa94895708b947c52ae18d87e841372c3fa79a4790ae772b0e3f1e77ecd8b`
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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:09:20 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:09:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:35 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:09:35 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:09:35 GMT
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90a6131cd387a46574f5496a46d1cc227934b94ed2f814cdd8c62e68a03662`  
		Last Modified: Mon, 07 Jan 2019 23:18:20 GMT  
		Size: 19.3 MB (19251812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0e1ae630ff7bbcc773cfa9c9a7988d73927092f1a2d81c60b0bd7a8ee3f0f6`  
		Last Modified: Mon, 07 Jan 2019 23:18:18 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:2e3f81eaf88e58ef7072a7d355b4849304f764b558730b19fd3209d270b4f514
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
$ docker pull redmine@sha256:4afbbc88a758e5462c057c019cf7eb277a5e1d0327e99b52f4dd66d2f0fe4508
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289246387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247580afd1a5742d21a0c8fe3395355f13abe2a1943fac2991163bd564fb0869`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:96e82751f419a7a24e9c3620c463f9438c70ff588de338181719472b996c0b24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280065962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4b58963357f63033a7a2b6bd88bb6cabf6e444342c9e9018e8abbc9ef7ca5e`
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
# Wed, 26 Dec 2018 10:18:30 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Fri, 28 Dec 2018 09:57:47 GMT
ENV BUNDLER_VERSION=1.17.3
# Fri, 28 Dec 2018 10:00:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 28 Dec 2018 10:00:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 28 Dec 2018 10:00:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 28 Dec 2018 10:01:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 10:01:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 28 Dec 2018 10:01:01 GMT
CMD ["irb"]
# Fri, 28 Dec 2018 11:07:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 28 Dec 2018 11:08:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:08:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:08:57 GMT
ENV RAILS_ENV=production
# Fri, 28 Dec 2018 11:08:57 GMT
WORKDIR /usr/src/redmine
# Fri, 28 Dec 2018 11:08:58 GMT
ENV HOME=/home/redmine
# Fri, 28 Dec 2018 11:08:59 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Fri, 28 Dec 2018 11:08:59 GMT
ENV REDMINE_VERSION=4.0.0
# Fri, 28 Dec 2018 11:09:00 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Fri, 28 Dec 2018 11:09:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 28 Dec 2018 11:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 28 Dec 2018 11:14:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 28 Dec 2018 11:14:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Fri, 28 Dec 2018 11:14:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:14:51 GMT
EXPOSE 3000
# Fri, 28 Dec 2018 11:14:51 GMT
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
	-	`sha256:17c5a705e88cabe55b62c8be0fd1ca669ceb38d6a084afcd144c90ba741ebe15`  
		Last Modified: Fri, 28 Dec 2018 10:49:51 GMT  
		Size: 23.6 MB (23554516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0b66b6949ce9361f91daf62693194edae9eea349f86edc19d89e550788fd4d`  
		Last Modified: Fri, 28 Dec 2018 10:49:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ce5edeaeafbfe80c7926904774ced2ccc3096ccf6c76f3620b475aaebf56d4`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbac9cb495cb5d34670e7fe4a3f8a1c26a04375850c19589aaf03dc89ce4d3a`  
		Last Modified: Fri, 28 Dec 2018 11:30:03 GMT  
		Size: 85.0 MB (84975552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a83ab9270c1345f3f7f6a5a3a8be46370e94ab85f2b5b286ca5fcf595ffa`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 1.3 MB (1262325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f540f053c8a450c470c1b60829ec688784d4f093e04cfd68ed488d3220df3216`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4850d7dd716a9fa2248bf5c397c2b088201febe198fb8dbd1a8123631aafe8`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8140e14521d5d590145c656ad0634cb078ffe6dbcc3b8a13dba5d3801bf2436`  
		Last Modified: Fri, 28 Dec 2018 11:29:36 GMT  
		Size: 2.5 MB (2525392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd96b409493a2e84be0eee69ed86ae6d695c871a9f9f52315e52fccebdd1b55`  
		Last Modified: Fri, 28 Dec 2018 11:30:07 GMT  
		Size: 112.3 MB (112311670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5db8600c4a2a2717c30c7e186eaa4c600e519625e945a95510c27567e414e`  
		Last Modified: Fri, 28 Dec 2018 11:29:34 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:b929181a7bba3a5fcef41ef232926124db2d270af1b7f24cb8b79f8ab4421ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270917030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8426d6621c534497c1f449470966d6e38fd2ec600b3558c3da7b82b783e72c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:10:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:10:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 17:58:33 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 17:58:34 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 17:58:35 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:01:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:01:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:01:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:01:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:01:31 GMT
CMD ["irb"]
# Mon, 31 Dec 2018 18:22:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 31 Dec 2018 18:23:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 31 Dec 2018 18:23:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:23:25 GMT
ENV RAILS_ENV=production
# Mon, 31 Dec 2018 18:23:25 GMT
WORKDIR /usr/src/redmine
# Mon, 31 Dec 2018 18:23:26 GMT
ENV HOME=/home/redmine
# Mon, 31 Dec 2018 18:23:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 31 Dec 2018 18:23:28 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 31 Dec 2018 18:23:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 31 Dec 2018 18:28:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 31 Dec 2018 18:28:50 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 31 Dec 2018 18:28:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 31 Dec 2018 18:28:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Dec 2018 18:28:51 GMT
EXPOSE 3000
# Mon, 31 Dec 2018 18:28:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c1af42a2126d2c7086d23c31787ae5b0829e4ded2653f2a4932b36c9d97f8`  
		Last Modified: Mon, 31 Dec 2018 18:04:43 GMT  
		Size: 11.0 MB (10965635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a38dca6b5e520625b43621012d0051754501d0dccd543da7ca400a07adcbf03`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6fe0b4a427834bc56cec01898911aacd5a15024a0a082bd58a7d154a22b08d`  
		Last Modified: Mon, 31 Dec 2018 18:04:44 GMT  
		Size: 21.5 MB (21503735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0373ff4f502b420c7e5a859a16d684c7bb10636bca3f0705e9035fd2fe57ee2`  
		Last Modified: Mon, 31 Dec 2018 18:04:39 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cbde2a65722a31f9bca4bf38d332bb1aa38ccedcfe55b89249d797cb93bed`  
		Last Modified: Mon, 31 Dec 2018 18:41:56 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd3677ce4651bc62c40b7b56cb066dfc201220d862ff2e74021a31750d7da10`  
		Last Modified: Mon, 31 Dec 2018 18:42:22 GMT  
		Size: 81.8 MB (81781836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d40dd441f2ace39032e43d059d03073103ce36725b937b29f13a959ddece9`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 1.3 MB (1254584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d28ddaa1a93fb3ebc7c986b7d38585c74101400a206070adfc8a4d23f12ad`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d1f30552f8129db61810f9f586fa5c8d43032276330d2c1405e18e6b4ba609`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34cf8a4ac8e8f7717d45283e736819e54cc184b2eeb3742ad88970762fb95dc`  
		Last Modified: Mon, 31 Dec 2018 18:41:57 GMT  
		Size: 2.5 MB (2525391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9bf98b83986499b87e8b1125b426daf73056fe34fe12917db3b868da1e3fe4`  
		Last Modified: Mon, 31 Dec 2018 18:42:24 GMT  
		Size: 110.8 MB (110806857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404ba70cd5285f25097779ea4f67db687bab1af734cb91364034d524c5edd80`  
		Last Modified: Mon, 31 Dec 2018 18:41:55 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:644f7a2e758bb8979fa7c1015716636612f653daef5cbbdd6baa928284a53045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276364912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19923ae98616c70e27037ae60da3ab52259777a8db3b1cfb22038625651236ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:37:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 23:51:37 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 23:51:38 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 23:51:39 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 23:51:40 GMT
ENV BUNDLER_VERSION=1.17.3
# Sun, 30 Dec 2018 00:00:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 30 Dec 2018 00:00:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 00:00:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 00:00:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sun, 30 Dec 2018 00:00:58 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 05:35:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 05:37:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:37:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:37:48 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 05:37:48 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 05:37:49 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 05:37:51 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 05:37:52 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 05:37:53 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 05:37:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:50:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:50:37 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:50:38 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:50:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:50:40 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:50:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a79252ba57d5ab11d990e3ea541ba295171cb39dbc89303ed471ea63162f03`  
		Last Modified: Sun, 30 Dec 2018 00:43:21 GMT  
		Size: 11.7 MB (11700955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c477982f06a4815361be67e18ed66bbc8664ffadfd7356e85227b9872ae2a1`  
		Last Modified: Sun, 30 Dec 2018 00:43:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d499b2edd2a98e11bef56eee46bca581c3769b8fb21013694f323d6f24abd4`  
		Last Modified: Sun, 30 Dec 2018 00:44:09 GMT  
		Size: 21.9 MB (21923926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5053873716aa21089c5a1d57b250da319c0894d93582bd6206e86aecad1e1c`  
		Last Modified: Sun, 30 Dec 2018 00:44:02 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3674297ea03b27a9d254bf2e58b7dfd139049358216805a9b0626568cdd2be`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88de55ae827b6abb2dd1747b5167385057a0ff17b7101441da68c713b5a55cfb`  
		Last Modified: Sun, 30 Dec 2018 06:26:14 GMT  
		Size: 83.9 MB (83924017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c588f2956bcf758b1d3ca4b510edd28e00191103fd6f1147b36222114a1288db`  
		Last Modified: Sun, 30 Dec 2018 06:25:44 GMT  
		Size: 1.2 MB (1239903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bac2d7ff238edebaa1c5c53955ae716a47f62ffa72859a051c94150dacb047d`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050de8a97c2107dcf1dedb5bc6ea7abaca5942047af21855699012d5e56320b2`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fbeacbd01bf21b87b16af98036fc4652bc1f1dad95343801964dd4e03734b3`  
		Last Modified: Sun, 30 Dec 2018 06:25:43 GMT  
		Size: 2.5 MB (2524894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f596a52f804eb2da4e568a9d286cc4d45c7511460ff5e5125f39fc30ddb84ffa`  
		Last Modified: Sun, 30 Dec 2018 06:26:16 GMT  
		Size: 111.9 MB (111930414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aea619a23436c796dd2ad698f5d18f8a3191df9854c298db56c71503ce3108`  
		Last Modified: Sun, 30 Dec 2018 06:25:41 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:3cd20bafb43222338c7c6508e0218be54063a1f9c86d03c23c460d06f568257b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (293993731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f822e5138fd693e6b7b18da225159d6fc65cfd9d63cdabab38a2f6dc7bb1074`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:03:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:03:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 18:09:41 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 18:09:42 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 18:09:42 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 18:12:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 18:12:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 18:12:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:12:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 18:12:41 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 04:58:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 30 Dec 2018 04:58:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:58:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 04:58:57 GMT
ENV RAILS_ENV=production
# Sun, 30 Dec 2018 04:58:57 GMT
WORKDIR /usr/src/redmine
# Sun, 30 Dec 2018 04:58:57 GMT
ENV HOME=/home/redmine
# Sun, 30 Dec 2018 04:58:58 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_VERSION=4.0.0
# Sun, 30 Dec 2018 04:58:58 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sun, 30 Dec 2018 04:59:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sun, 30 Dec 2018 05:02:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sun, 30 Dec 2018 05:02:28 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Dec 2018 05:02:28 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sun, 30 Dec 2018 05:02:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Dec 2018 05:02:29 GMT
EXPOSE 3000
# Sun, 30 Dec 2018 05:02:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe2e2439d98a682ab58f2b93a3b7a3398da79f7a394e5b779b2d54f8f9aa36e`  
		Last Modified: Sat, 29 Dec 2018 19:03:07 GMT  
		Size: 16.3 MB (16334516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167bf4d165c9e79aa252cf87ede7ed1a4b0e9f5ca48dddd741d329159a86f73`  
		Last Modified: Sat, 29 Dec 2018 19:03:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3f41712b18be9d6c9e9f887cabe0274a2a86b61b37e9538113411628f42b76`  
		Last Modified: Sat, 29 Dec 2018 19:03:31 GMT  
		Size: 21.7 MB (21738877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848858c7e398284a10bf2a709d69b36a8aeb40ead4c92f9ba3ab7b252d618329`  
		Last Modified: Sat, 29 Dec 2018 19:03:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9d8019cb52b8edb40f6e2601693cf583e2db2e39210e3d08e8f3839f728df7`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561801a283ecd9642516a89855d84b98a52174f557aa7e6653859b58e6695b3f`  
		Last Modified: Sun, 30 Dec 2018 05:11:27 GMT  
		Size: 90.0 MB (89988398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d8278abf049043540aeb3bed0c62ec681a2de7c2bd60a6cbeadab6f1fc730`  
		Last Modified: Sun, 30 Dec 2018 05:11:04 GMT  
		Size: 1.3 MB (1271723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf605b6d971d1afe74e2e1ab61148d4a4c32a1228f55ae0820417ea3efba19d7`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f6dbaaa9b241ce0c0fa525a658a0ef5ae2cfb759fae04aeff7f79b1837caf4`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bebe12ac7a2721427d3de2178241f0a72e83c9695c452326861f43f365ae4f7`  
		Last Modified: Sun, 30 Dec 2018 05:11:03 GMT  
		Size: 2.5 MB (2524918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86118d17cfd6afd48c430c7a2e3833ababd1f309f410ab35a4e8157806f5d709`  
		Last Modified: Sun, 30 Dec 2018 05:11:29 GMT  
		Size: 116.1 MB (116073696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3084fcf26cf461b6646b47b40e98e05689fa5f79ab3eed23172ce43fb137c2`  
		Last Modified: Sun, 30 Dec 2018 05:11:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:a50cf47f7b409f39e1805989aa9d68a2591507354aaa04250aa1252d61dcf3a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285659843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be30863aad1873f42f0584ed7a2f689cea6bc176dc0c60bb970eb4fc24af22e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:53:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:53:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:03:46 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:03:50 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:03:53 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:03:57 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:03:59 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:08:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:08:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:08:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:09:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:09:02 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 20:52:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 20:54:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:55:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 20:55:47 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 20:55:50 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 20:55:51 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 20:55:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 20:55:59 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 20:56:02 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 20:56:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 21:03:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 21:04:02 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 21:04:04 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 21:04:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 21:04:11 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 21:04:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcd0d5da45458d86abc5bed20cdd7b8dc9814b34eb844bb0e941546507cb85`  
		Last Modified: Sat, 29 Dec 2018 15:35:30 GMT  
		Size: 12.3 MB (12283468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3f7680937dd6058acb2d73f6fd2c6156150096802b79e73ac21d495ec8113c`  
		Last Modified: Sat, 29 Dec 2018 15:35:24 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b9833fd712de3c4df7741e9d168242c336bf04451d88e2516f2c55a2566c6`  
		Last Modified: Sat, 29 Dec 2018 15:36:24 GMT  
		Size: 22.4 MB (22396059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4cb9f03a9fc8a032181071c7ef960751f5e85c4f275f3544cbf50c794cec09`  
		Last Modified: Sat, 29 Dec 2018 15:36:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b3011a1b1aa29d0b7622529660a7bb38cc0dd6d2a9ddd80f15eecfb6a4ca01`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb4abda30b688153efa47d6e8925298feb14af7b23cf86ae4b32a58b784cf`  
		Last Modified: Sat, 29 Dec 2018 21:22:29 GMT  
		Size: 87.2 MB (87240815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e548fbd603fb7980a00027f3a8c80c60053a0758932fae68ca96230c6bae6`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 1.2 MB (1228138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542749e627547d5db6bea3cac99a3daad031f3137eeb5b0d877dd7cdf865d1e3`  
		Last Modified: Sat, 29 Dec 2018 21:22:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5233de5806bd0b9d3d8349b43c625d0ce96f9879c4e8a53b389b1c5d9d1ed1`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14293a07550fee33e8ecd41414ea2692babb6ca8991e312b62b082aecc389aa6`  
		Last Modified: Sat, 29 Dec 2018 21:22:09 GMT  
		Size: 2.5 MB (2525379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdbda60a1d41be883958a8b41bc4d2d2d06c3a78c8e4c2c03e33ec157e0db97`  
		Last Modified: Sat, 29 Dec 2018 21:22:28 GMT  
		Size: 114.4 MB (114375869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867948c0c531d403797c67c2a32a9d6eeb99a40764dceb4b1b18f3e876bea220`  
		Last Modified: Sat, 29 Dec 2018 21:22:08 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:945a1d6131db43218f85e14c119d1f0a88fef8b7fbab46c4363db57e603edf9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286141643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b647cb710c4b31784769d289fdc116804a48d0e3b913490378a3f1500150dd28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:49:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:49:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 15:54:27 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 15:54:28 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 15:54:28 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 15:56:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 15:56:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 15:56:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:56:34 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 15:56:34 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 18:39:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 18:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:40:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:40:01 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 18:40:02 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 18:40:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 18:40:02 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 18:40:03 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 18:40:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 18:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 18:42:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 18:42:37 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 18:42:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:42:37 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 18:42:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662841ebe4a1deb1e3f8cb13b2a42afd6aa374e5f3e22406610ff5e010175c83`  
		Last Modified: Sat, 29 Dec 2018 16:08:51 GMT  
		Size: 13.3 MB (13292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05810924bf036f5873e63e5db8c1723d567d01164fb34ddb27908cd0fa04e69f`  
		Last Modified: Sat, 29 Dec 2018 16:08:48 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b04863dc938af894222b8f9728421b608b04aeb95c2b7a3df521e0c2a99c51`  
		Last Modified: Sat, 29 Dec 2018 16:09:16 GMT  
		Size: 22.5 MB (22549006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fe16254cc4e2027733ca8cf4a5c1c2326d511ecb88fae4c6b256a4540311b5`  
		Last Modified: Sat, 29 Dec 2018 16:09:12 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8c916015963459669325eb3e72456e90062d90dda355af7ceefd81e60deca7`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94d797175566be9926b1c110d9b2a499230af511710b157707d29c7b700544f`  
		Last Modified: Sat, 29 Dec 2018 18:49:51 GMT  
		Size: 87.9 MB (87868099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8f76b4fcece9e89008e0bd190bb7860d8c7f61c9a54d27c96a67aedeca62b5`  
		Last Modified: Sat, 29 Dec 2018 18:49:36 GMT  
		Size: 1.3 MB (1293888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdfeed228f8965cfe4534e5c2fb34450eb6af1fb5ec799490ba96f68a04c3c0`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb07325ba88b10dd79bb9b4686e0ac114a5bf6bfbe4802813cc299386a4af689`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e776038b8317e9bb1fec0ca296828516b8d3a7c046bd91d67eac378e73ba3641`  
		Last Modified: Sat, 29 Dec 2018 18:49:35 GMT  
		Size: 2.5 MB (2524913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9811e0640a4e818fca38c2dc115ac39f4033f5a31b633229e649faf85c7fa193`  
		Last Modified: Sat, 29 Dec 2018 18:49:50 GMT  
		Size: 113.4 MB (113402714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45132d0cbeca5bf57772289b546d739fa7430ab307db783a27eae776c950639f`  
		Last Modified: Sat, 29 Dec 2018 18:49:34 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:8901a0560027adb2bdea6f8ebfb7174d2e5bb74b7d2ea4beffb64f8c52e3e3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:01a5a8961dab66bb92304fd7f9688359b0c03173c5a8e12cc4358ec6f96f3477
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.0 MB (312977319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6aa94895708b947c52ae18d87e841372c3fa79a4790ae772b0e3f1e77ecd8b`
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
# Mon, 07 Jan 2019 21:51:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Mon, 07 Jan 2019 21:51:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 07 Jan 2019 21:51:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:51:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Mon, 07 Jan 2019 21:51:45 GMT
CMD ["irb"]
# Mon, 07 Jan 2019 23:05:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 07 Jan 2019 23:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 07 Jan 2019 23:06:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:06:04 GMT
ENV RAILS_ENV=production
# Mon, 07 Jan 2019 23:06:04 GMT
WORKDIR /usr/src/redmine
# Mon, 07 Jan 2019 23:06:04 GMT
ENV HOME=/home/redmine
# Mon, 07 Jan 2019 23:06:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_VERSION=4.0.0
# Mon, 07 Jan 2019 23:06:05 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Mon, 07 Jan 2019 23:06:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 07 Jan 2019 23:09:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 07 Jan 2019 23:09:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 07 Jan 2019 23:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 23:09:12 GMT
EXPOSE 3000
# Mon, 07 Jan 2019 23:09:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 07 Jan 2019 23:09:20 GMT
ENV PASSENGER_VERSION=6.0.0
# Mon, 07 Jan 2019 23:09:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 07 Jan 2019 23:09:35 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 07 Jan 2019 23:09:35 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 07 Jan 2019 23:09:35 GMT
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
	-	`sha256:341a7006da2bd232169ae04b660c85df672393ba31a78cc62c3a8dba6a5dedce`  
		Last Modified: Mon, 07 Jan 2019 22:47:50 GMT  
		Size: 21.4 MB (21430142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3792ebe0a3a2c682828e2cef2132667d27d83bad5b83958462ba00f95479febc`  
		Last Modified: Mon, 07 Jan 2019 22:47:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cfe8a775c87895c0d36f7661ff15b0cdf2a278467839d122f90631bb9830e`  
		Last Modified: Mon, 07 Jan 2019 23:17:53 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cae5a823ac45c9dbfb2820d6ff0f1685992a3d509502e05a103f523834175b4`  
		Last Modified: Mon, 07 Jan 2019 23:18:09 GMT  
		Size: 88.1 MB (88050251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a518cbfc5328f183492c40f0a03be735e6417255e561d1ad8f875404cdee2a`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 1.3 MB (1304166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7cb32570178b6c59491d4d45e64a7fe51335da14c9a24e3134edd310f1ec2`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251ba9eee6e51d7cece78ad3e88de042868b735dda331930596363c833d35799`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be1782a4e519c201dde73da6dd8273f5743f74976aa11ebc123106259e1338`  
		Last Modified: Mon, 07 Jan 2019 23:17:52 GMT  
		Size: 2.5 MB (2524914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b3750f0178e3389ed787ed88c2d72968615ef5c5816807926f4550b62f795`  
		Last Modified: Mon, 07 Jan 2019 23:18:10 GMT  
		Size: 117.7 MB (117720442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908b831436e883ea6612887a1c75ecb2b65e49e4caa779c1ba93e3c84d418c30`  
		Last Modified: Mon, 07 Jan 2019 23:17:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90a6131cd387a46574f5496a46d1cc227934b94ed2f814cdd8c62e68a03662`  
		Last Modified: Mon, 07 Jan 2019 23:18:20 GMT  
		Size: 19.3 MB (19251812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0e1ae630ff7bbcc773cfa9c9a7988d73927092f1a2d81c60b0bd7a8ee3f0f6`  
		Last Modified: Mon, 07 Jan 2019 23:18:18 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
