## `ruby:rc`

```console
$ docker pull ruby@sha256:3e055967414086bcb722f8b3fe00138890b85244a1c5d5e0eb1205251fc34a90
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

### `ruby:rc` - linux; amd64

```console
$ docker pull ruby@sha256:1941354b9e30e9ba838ab8b7f2fea338f88e30397f47a03d3c9e5a1ed8c035bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345527884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec34419dc3983fa55a87483f1d389355a1d07820fc91be432bef8856e3c2fe7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:31:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 05:31:14 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 05 Sep 2018 05:31:14 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 05 Sep 2018 05:31:14 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Wed, 05 Sep 2018 05:31:14 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 05 Sep 2018 05:31:15 GMT
ENV BUNDLER_VERSION=1.16.4
# Wed, 05 Sep 2018 05:34:10 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 05 Sep 2018 05:34:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Sep 2018 05:34:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Sep 2018 05:34:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:34:11 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 05 Sep 2018 05:34:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb28e714e446fec87977bc8955caf3a44a3457075e94cfef9491ca45dc053a`  
		Last Modified: Wed, 05 Sep 2018 06:49:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7262b8bb40c54fa923c2bb7e3be8ac0924207c0d3535e52a4e06d5c763a8484`  
		Last Modified: Wed, 05 Sep 2018 06:49:29 GMT  
		Size: 21.9 MB (21866707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099e0357bb082b3f360e9b0a7bf955addd589ef059130a02bdf121e6fba15159`  
		Last Modified: Wed, 05 Sep 2018 06:49:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc` - linux; arm variant v5

```console
$ docker pull ruby@sha256:fc8eeace09b5bc9ce2701f709b3ef36b37f225ea50cbb9e5c00d5b0023607525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329164889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa7448c8dcd7fd3e81586214a63766560a3348f28521648b4f134f69928aacc`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 05 Sep 2018 08:54:58 GMT
ADD file:2301eb998a2cf644d62951808894ec7ace20df38ed4e82f7ab477d8a9043b67b in / 
# Wed, 05 Sep 2018 08:54:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:58:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:58:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:59:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:48:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 12:48:46 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 05 Sep 2018 12:48:46 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 05 Sep 2018 12:48:47 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Wed, 05 Sep 2018 12:48:47 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 05 Sep 2018 12:48:47 GMT
ENV BUNDLER_VERSION=1.16.4
# Wed, 05 Sep 2018 12:51:20 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 05 Sep 2018 12:51:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Sep 2018 12:51:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Sep 2018 12:51:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 12:51:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 05 Sep 2018 12:51:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9cb1890a5e52c7c05eedad090ff39b863a62697e36cd9b3ff608dc0f832d5687`  
		Last Modified: Wed, 05 Sep 2018 09:03:55 GMT  
		Size: 44.0 MB (44033002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41b212ad18ceb0a81a3f52fa8c618a0bbe47fd82200767851c667ef25f51d8`  
		Last Modified: Wed, 05 Sep 2018 10:11:48 GMT  
		Size: 9.8 MB (9810215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836b37f3f7096f6d14a8f575975e8e27092177c0480bbe64d2f9afd752d48fab`  
		Last Modified: Wed, 05 Sep 2018 10:11:45 GMT  
		Size: 4.2 MB (4153723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9281c2501a2fd245093ac2f65225acfff895211ffbe23340d97114cc79d02cde`  
		Last Modified: Wed, 05 Sep 2018 10:12:24 GMT  
		Size: 48.3 MB (48264038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56f6292b0021a98a7008d74c61d9f336480628ea0ddb230960c249ca917d747`  
		Last Modified: Wed, 05 Sep 2018 10:13:40 GMT  
		Size: 201.5 MB (201455628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7d74c0fd94e50a98866ad43dd214737c31299d59e721fda78781fdc241c518`  
		Last Modified: Wed, 05 Sep 2018 13:46:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5468d60fbad9b76f4b6cb36c7bb263d81df99e57f437ff0009d68f76bbe9`  
		Last Modified: Wed, 05 Sep 2018 13:46:52 GMT  
		Size: 21.4 MB (21447895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d28515287c185633f5db20e1467208c723f52fb5ef35b866372e9b5c4b9e0d`  
		Last Modified: Wed, 05 Sep 2018 13:46:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc` - linux; arm variant v7

```console
$ docker pull ruby@sha256:c64eb09c545212f03ff2d679e87704887c989cde7bec53b71c3f281af5194093
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.1 MB (317105616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af7a71d206c046a6532251f9bd7670fde827238b726e2127010c41b14a87337`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:54:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 15:54:01 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 05 Sep 2018 15:54:01 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 05 Sep 2018 15:54:02 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Wed, 05 Sep 2018 15:54:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 05 Sep 2018 15:54:03 GMT
ENV BUNDLER_VERSION=1.16.4
# Wed, 05 Sep 2018 15:56:19 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 05 Sep 2018 15:56:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Sep 2018 15:56:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Sep 2018 15:56:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:56:21 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 05 Sep 2018 15:56:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff82380733c3ae98b66fdc5f0955cb052345ef14950181dc8d7e00dbeb9ed543`  
		Last Modified: Wed, 05 Sep 2018 16:49:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260c327565ddcc6ac5b4a0ca823a1f941a7da2d26d84a33a6f543dfad8666631`  
		Last Modified: Wed, 05 Sep 2018 16:49:44 GMT  
		Size: 21.3 MB (21306930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242482d1f3cf1b02ca4f56e79b23f441862355041c4c5c20c4c6a2d331807f7f`  
		Last Modified: Wed, 05 Sep 2018 16:49:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:6f2dba50683aa218e79a946f8f0207da4f4b410e4ecc0a8330be0fd17f0cded2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327182434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c69e014d8c5ddaf3527b2ba5da1120bbbafd81c91e58a39fe97663c453df927`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:56:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 17:56:09 GMT
ENV RUBY_MAJOR=2.6-rc
# Tue, 17 Jul 2018 17:56:10 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Tue, 17 Jul 2018 17:56:12 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Tue, 17 Jul 2018 17:56:13 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 23 Aug 2018 16:36:56 GMT
ENV BUNDLER_VERSION=1.16.4
# Thu, 23 Aug 2018 16:43:04 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 23 Aug 2018 16:43:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 23 Aug 2018 16:43:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 23 Aug 2018 16:43:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Aug 2018 16:43:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 23 Aug 2018 16:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed075d58fff4f9897e8a3191ca7e66c3f9ac907c59cc4ab05312f240370617`  
		Last Modified: Tue, 17 Jul 2018 15:13:30 GMT  
		Size: 200.6 MB (200617675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5338690551deecea1a41761e514fb3a49c52f0b22d3b83ccc69aee99fba4537b`  
		Last Modified: Tue, 17 Jul 2018 19:12:02 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d5bdb2d8381348c1b9a30dabe669060014bc741992a8ef58a03f1007a6d248`  
		Last Modified: Thu, 23 Aug 2018 18:26:33 GMT  
		Size: 21.7 MB (21658748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6203861a5f1999e6350f9da7b106216985f0b8b3c0e2ce7ee546bf7f3e63674b`  
		Last Modified: Thu, 23 Aug 2018 18:26:27 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc` - linux; 386

```console
$ docker pull ruby@sha256:a631e97b5ec884677622f92337383fadcb8fc1c6b0535ba4c98970759327fed6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.6 MB (352607050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7af6c7ea4771f243d04de6cfb7196d4aa44ebb8fa9e2a72694fa56e6e872db`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:50:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:50:57 GMT
ENV RUBY_MAJOR=2.6-rc
# Tue, 17 Jul 2018 15:50:58 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Tue, 17 Jul 2018 15:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Tue, 17 Jul 2018 15:50:59 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 23 Aug 2018 13:10:19 GMT
ENV BUNDLER_VERSION=1.16.4
# Thu, 23 Aug 2018 13:12:56 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 23 Aug 2018 13:12:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 23 Aug 2018 13:12:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 23 Aug 2018 13:12:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Aug 2018 13:12:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 23 Aug 2018 13:12:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a5fc7010e565c73a64f55c363342fa770b510809f449b3e719b7032490662c`  
		Last Modified: Tue, 17 Jul 2018 16:51:34 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f205f8e76e4c147613996d213bc2dc1fb0381e4f5b25286e5fff4e2b9205c9`  
		Last Modified: Thu, 23 Aug 2018 14:34:06 GMT  
		Size: 21.4 MB (21410766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b98cd096ce2beb0c5826755bc68e72f7fe111c2c709e2445ce598279008b299`  
		Last Modified: Thu, 23 Aug 2018 14:33:58 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc` - linux; ppc64le

```console
$ docker pull ruby@sha256:65d2187f38d0232a169400f4953e9c98f42e14087eb6659bd3420cd714f6e67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.8 MB (340844896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b37c7e66ff13edc6e09d31c6363bc35f95665eacb13d4430126edf5a42d738`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:49 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 12:57:50 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 05 Sep 2018 12:57:51 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 05 Sep 2018 12:57:53 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Wed, 05 Sep 2018 12:57:55 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 05 Sep 2018 12:57:57 GMT
ENV BUNDLER_VERSION=1.16.4
# Wed, 05 Sep 2018 13:01:12 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 05 Sep 2018 13:01:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Sep 2018 13:01:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Sep 2018 13:01:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:01:18 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 05 Sep 2018 13:01:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99cae6f597f8e7d4e1ea988c3ac831c9a4b78943ee15e6c1d08fcd01b645d98`  
		Last Modified: Wed, 05 Sep 2018 13:46:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f4e4dc7ddc28e5cecfa533253d4f60bfa90c1dab6592b6dfbeff5d074b00fb`  
		Last Modified: Wed, 05 Sep 2018 13:47:01 GMT  
		Size: 22.1 MB (22094283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce4e524fa0bc87222bee5c2f127b4899be91d1489186ff1db13cfa6cc507a06`  
		Last Modified: Wed, 05 Sep 2018 13:46:55 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc` - linux; s390x

```console
$ docker pull ruby@sha256:50ac4b355956fadc906cf07e11d240ea873ae2708de523c5680143c89f64d0ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337765319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917b62b93d01e6b55f915585adb32733fad8272870d04d9c469d8e7fcfd987ad`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:16:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 05 Sep 2018 14:16:15 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 05 Sep 2018 14:16:15 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 05 Sep 2018 14:16:15 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Wed, 05 Sep 2018 14:16:15 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 05 Sep 2018 14:16:16 GMT
ENV BUNDLER_VERSION=1.16.4
# Wed, 05 Sep 2018 14:19:20 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 05 Sep 2018 14:19:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Sep 2018 14:19:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Sep 2018 14:19:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 14:19:21 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 05 Sep 2018 14:19:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da25a8774d36df4686b0b65a4bdcda2a40b513ee617dd0510b94d31dfcefe344`  
		Last Modified: Wed, 05 Sep 2018 14:45:11 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bef85fa012bdfb200e28ded7b571bfa061e1e813285f8a841d07e2617d37d7`  
		Last Modified: Wed, 05 Sep 2018 14:45:16 GMT  
		Size: 22.2 MB (22227094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22e6b519ee965f7b07e358d78ffbd2cf58edf10d09763327a240dff2a54b0bb`  
		Last Modified: Wed, 05 Sep 2018 14:45:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
