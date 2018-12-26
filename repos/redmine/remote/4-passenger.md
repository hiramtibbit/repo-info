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
