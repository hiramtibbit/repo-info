## `redmine:passenger`

```console
$ docker pull redmine@sha256:29804dcca722163f64b548cb8ef2829a18e1a33306240f4e1858ccc47176e197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:0c88f2d0c2a8a2bec8a76d1996d53e9f730b5e476d7bbb0ee6ab60ee0ac3dfa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270650702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732c17d340a02a227532bf3f240fc7a17cbaebbb174cbe6e8dca1eac5bf4aac2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 01:25:52 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 01:25:52 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 01:29:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 01:29:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 24 May 2018 21:08:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 24 May 2018 21:08:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 May 2018 21:08:02 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 24 May 2018 21:08:03 GMT
CMD ["irb"]
# Fri, 25 May 2018 22:37:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 25 May 2018 22:38:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 22:38:14 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 22:38:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 22:38:18 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 May 2018 22:38:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 May 2018 22:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 22:38:55 GMT
ENV RAILS_ENV=production
# Fri, 25 May 2018 22:38:56 GMT
WORKDIR /usr/src/redmine
# Fri, 25 May 2018 22:38:56 GMT
ENV REDMINE_VERSION=3.4.5
# Fri, 25 May 2018 22:38:56 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Fri, 25 May 2018 22:39:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 May 2018 22:42:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 25 May 2018 22:42:33 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 May 2018 22:42:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 25 May 2018 22:42:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 May 2018 22:42:34 GMT
EXPOSE 3000/tcp
# Fri, 25 May 2018 22:42:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 May 2018 22:47:57 GMT
ENV PASSENGER_VERSION=5.3.1
# Fri, 25 May 2018 22:48:24 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 May 2018 22:48:25 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 May 2018 22:48:25 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af7e9644f308307bcbf19ad9eea243ce5dd469c0211039f47b3120cabdfc99c`  
		Last Modified: Thu, 24 May 2018 02:02:57 GMT  
		Size: 21.3 MB (21305911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2741f1d4c75227c788ea0d4f97b9d842c26908b326b7341255dc08df8c2ff0`  
		Last Modified: Thu, 24 May 2018 21:16:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085bf055e4f7fca4100b86db549ca65dbd113d5633f293b7d60c64580e40fc9c`  
		Last Modified: Fri, 25 May 2018 22:53:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02757c5b4f758477ace554b047238004f1ba80dd0253f13e4afde2cff60c8fe2`  
		Last Modified: Fri, 25 May 2018 22:53:02 GMT  
		Size: 13.0 MB (12967769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b812d52f0b76913f780e051066b0aec46d9f1a2bc758a19b4872c304bf83525`  
		Last Modified: Fri, 25 May 2018 22:52:57 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ee2b52aad93348e461129e48f8cb4e4cbc9418e7363ce6ed71b679ed0da25e`  
		Last Modified: Fri, 25 May 2018 22:52:58 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19b2c23072bf21ac50bb6de4bc9b7f4da1ea29a653a5afe5cfd3f162beef0a2`  
		Last Modified: Fri, 25 May 2018 22:53:10 GMT  
		Size: 44.7 MB (44693075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e59159e2a6739be3fd06e37349b2d1e8d923428d177c2222704b4e9747a9bb`  
		Last Modified: Fri, 25 May 2018 22:52:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98a64efb545256fdf3c53c52b77442ba38528b0efe12ab584283efca94f5b93`  
		Last Modified: Fri, 25 May 2018 22:52:57 GMT  
		Size: 2.5 MB (2455512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9534eb68cbf0f603ce25e221f37244ca04b1bf62e5c307054df0f1ed5fbc1ae`  
		Last Modified: Fri, 25 May 2018 22:53:18 GMT  
		Size: 101.1 MB (101098189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1a66a435de68d0752a22d4f765a7b57114d1d162ce3422198dc5dbeb8076a`  
		Last Modified: Fri, 25 May 2018 22:52:55 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e0855d207e5293aa8ce2172bc4188d71af9f55eb2fd5fb46587639a5b9b551`  
		Last Modified: Fri, 25 May 2018 22:53:59 GMT  
		Size: 18.7 MB (18726740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb08bc413a5c1fcbdc95504905d65b4c94366e63199a6efc3811c46cbf25ca03`  
		Last Modified: Fri, 25 May 2018 22:53:57 GMT  
		Size: 4.5 MB (4458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
