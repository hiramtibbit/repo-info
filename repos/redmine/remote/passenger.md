## `redmine:passenger`

```console
$ docker pull redmine@sha256:8551a67186d7df85b61f89022029f831eef2989d779f386f9062323f9aaf1621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:20781dcf3e338cb6ef5996ea323aa91796f20f4660cbf418ce9fdb37c5c271ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316320607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801a2721cf817cfec760cd52f10ef3df09cbd3152681c7a85541c7803a28f758`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:34:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:34:49 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 06:00:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 05 Sep 2018 06:00:33 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 05 Sep 2018 06:00:34 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 05 Sep 2018 06:00:34 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 20 Sep 2018 21:01:19 GMT
ENV BUNDLER_VERSION=1.16.5
# Thu, 20 Sep 2018 21:04:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 20 Sep 2018 21:04:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 20 Sep 2018 21:04:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 20 Sep 2018 21:04:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 21:04:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 20 Sep 2018 21:04:46 GMT
CMD ["irb"]
# Thu, 20 Sep 2018 22:32:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 20 Sep 2018 22:33:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:33:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 20 Sep 2018 22:33:24 GMT
ENV RAILS_ENV=production
# Thu, 20 Sep 2018 22:33:25 GMT
WORKDIR /usr/src/redmine
# Thu, 20 Sep 2018 22:33:25 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 20 Sep 2018 22:33:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 20 Sep 2018 22:33:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 20 Sep 2018 22:36:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 20 Sep 2018 22:36:39 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 20 Sep 2018 22:36:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 20 Sep 2018 22:36:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 22:36:39 GMT
EXPOSE 3000/tcp
# Thu, 20 Sep 2018 22:36:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 26 Sep 2018 00:35:11 GMT
ENV PASSENGER_VERSION=5.3.5
# Wed, 26 Sep 2018 00:35:23 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Sep 2018 00:35:25 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 26 Sep 2018 00:35:26 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4b62449fc8aef4ae6b5df70834999a86a052340178e5b9ee2df979c62a17d4`  
		Last Modified: Wed, 05 Sep 2018 06:49:54 GMT  
		Size: 12.8 MB (12811018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8ae4c4adc599f2ab76d6eebe311daeca5cbf71756b6d181771c89b1618e855`  
		Last Modified: Wed, 05 Sep 2018 06:49:50 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b105238583345c92ceb96a0578029edc63b05847d616eb94a4886befcec7cf`  
		Last Modified: Thu, 20 Sep 2018 21:55:34 GMT  
		Size: 21.8 MB (21751531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6d3fc0307ad390ab3c32d8216a93f880690e6ffb99b4ccbc4e1f1a4706773b`  
		Last Modified: Thu, 20 Sep 2018 21:55:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef5cabf421e4a976f2b045611eb36583355b64bf43721794cd0ed1a5bf0c82a`  
		Last Modified: Thu, 20 Sep 2018 22:41:43 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b9222d9b39e4899e5f673da47c4aebdc62dea28815af5e181c36861a772c36`  
		Last Modified: Thu, 20 Sep 2018 22:42:02 GMT  
		Size: 84.6 MB (84638573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2596bb9e7aa4d9feb3a43e0f9a9deaba32fc4b6dd8e7b13646247c2f222efd4`  
		Last Modified: Thu, 20 Sep 2018 22:41:42 GMT  
		Size: 904.1 KB (904053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630719dd3b166936b16d1e7836d7e79356e7c802da3444b392f62cffe6650b96`  
		Last Modified: Thu, 20 Sep 2018 22:41:43 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a416fa4c7e0bd90339e1bac2187b9a2dba578bd7fd2d3e91420074b239424b`  
		Last Modified: Thu, 20 Sep 2018 22:41:45 GMT  
		Size: 2.5 MB (2456914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f115064326b17c25e0cdbb535335b651292ebbd91dd98a0f2a924d6e81599983`  
		Last Modified: Thu, 20 Sep 2018 22:42:03 GMT  
		Size: 124.9 MB (124881280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9b0de7215d762bdcabdcf7a6b35b480663ec4459df3fe34e785fc059631f1f`  
		Last Modified: Thu, 20 Sep 2018 22:41:42 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8956f4c53ecaa327e50c9aca38bc789b38db69bb8f328eeb04ed6b33011d50`  
		Last Modified: Wed, 26 Sep 2018 00:36:08 GMT  
		Size: 19.1 MB (19115684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1ff23cb6ab9d80dee76875406d8884eb07a1ada857c09eab7fb1ca6cc1fabe`  
		Last Modified: Wed, 26 Sep 2018 00:36:04 GMT  
		Size: 4.4 MB (4447460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
