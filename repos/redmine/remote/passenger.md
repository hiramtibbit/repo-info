## `redmine:passenger`

```console
$ docker pull redmine@sha256:bb8eaf8672af2f4db6579a91df0c0c4a2f2bac81cb27af7f49829a6cc245079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:159134617ea9fd1fb451c2de7cc9bf093b2d7d9d95f1836f0d4073978b8ecd1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272306541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb251a349b386733c22801dd80a4cf7399593ed171af12962ab9c6e41d3ee39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 10:28:23 GMT
ENV PASSENGER_VERSION=5.3.2
# Wed, 27 Jun 2018 10:29:11 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:29:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 10:29:13 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bc355edb105303af49619ad2e1281809e8a137719338ba7de3d25a550b2f8b`  
		Last Modified: Wed, 27 Jun 2018 10:40:05 GMT  
		Size: 18.8 MB (18769271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe73f61944daae1827013900f96cc9d69f90f9ed75a284fa9edf5317b1dcbd0`  
		Last Modified: Wed, 27 Jun 2018 10:40:02 GMT  
		Size: 4.5 MB (4484747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
