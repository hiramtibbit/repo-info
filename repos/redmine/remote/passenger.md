## `redmine:passenger`

```console
$ docker pull redmine@sha256:c2bc3f8f50aeb94dda5a0c3052e5de3245929ddefed0fddd96733f3cc1d9f9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:62cc9d24e8fa95bd2f4e9ebf0acc432a4bf191456afd443bf08af184dcb5e3ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315347765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee927f4822a77d853ff51de9645a4f82f6304962753482350edebf261b954e51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:15:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:15:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:31:02 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:31:02 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:31:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:31:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:31:02 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:36:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:36:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:36:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:36:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:36:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:36:51 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 22:46:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 22:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:47:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 22:47:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 22:47:13 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 22:47:21 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 22:47:21 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 22:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 22:52:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 22:52:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 22:52:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 22:52:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:52:43 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 22:52:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 22:53:01 GMT
ENV PASSENGER_VERSION=5.3.3
# Wed, 27 Jun 2018 22:53:23 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 22:53:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 22:53:32 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5069f49720c685d2022a6f1501862010603bcc1ae7d3ceda0602706ffef74246`  
		Last Modified: Wed, 27 Jun 2018 03:10:02 GMT  
		Size: 12.8 MB (12821723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec32e25b553d147baece5372dd22191b76d7ac43136a0be7bb8ebcc82f24d84e`  
		Last Modified: Wed, 27 Jun 2018 03:09:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51dca5625507dca076d2a70ba5f287ccb8e9870efa03105928799f05ca674fa`  
		Last Modified: Wed, 27 Jun 2018 03:13:37 GMT  
		Size: 21.7 MB (21745657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf04920a2a60e439339c856d248e8d5ea1504046a3d8d5121cb53e44dbd1345`  
		Last Modified: Wed, 27 Jun 2018 03:13:34 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3a0b8baea38d6de121545130aaf775ac9c8596b1d641a4bc6e12b22d042b95`  
		Last Modified: Wed, 27 Jun 2018 23:01:23 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5426ecdbf24bc3e75d02342c47ee44f432889a7e4547e9eafcb5b6bb20baa6`  
		Last Modified: Wed, 27 Jun 2018 23:01:52 GMT  
		Size: 84.6 MB (84638682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ea25f59e414a7bd5fe39a3b4872c7219bca96506e5567172054cf187adc5e6`  
		Last Modified: Wed, 27 Jun 2018 23:01:21 GMT  
		Size: 904.3 KB (904287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187abc2a2a207810407a0afbcf4abdd07b7f11562ab9bed93005b2137e83c501`  
		Last Modified: Wed, 27 Jun 2018 23:01:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0025419bd68434f661a57edb0e4c21b3619876310815a15dc99db4b83b4106bb`  
		Last Modified: Wed, 27 Jun 2018 23:01:22 GMT  
		Size: 2.5 MB (2456911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8533120c4de2d90cddfa34d351c3c21cc96435a1ce1721287e060a8c72d86a01`  
		Last Modified: Wed, 27 Jun 2018 23:01:55 GMT  
		Size: 124.2 MB (124172792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1da244edc1d1f1cea034784c19c0d4e398ad8d133a4e0f8cfe03cfb51a0bdb5`  
		Last Modified: Wed, 27 Jun 2018 23:01:21 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f56bf5089a6e4eedc0e7271ce89ffaa7cbba0d90d64ccf9a4df678a6d0ceea3`  
		Last Modified: Wed, 27 Jun 2018 23:02:52 GMT  
		Size: 18.8 MB (18799721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97341a44de565f04b8930225dd4b4a6d4fc189dc4d0aa8cb9af6a60e13ba7bc2`  
		Last Modified: Wed, 27 Jun 2018 23:02:49 GMT  
		Size: 4.5 MB (4484742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
