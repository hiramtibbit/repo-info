## `ruby:2-slim`

```console
$ docker pull ruby@sha256:0e520e4d36ba4a1cf59747459985d8cae7f63860e48becc5fd71f7cd57415589
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

### `ruby:2-slim` - linux; amd64

```console
$ docker pull ruby@sha256:47311be2a7a14ca5f33620c97add71ca684b15d27eb0a566dbb00d0df9f9a508
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53567630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e2c7d06818f3ed9ad42d0163c1b0ec0dcce91f899f93d52cd3e5e451edb153`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:32:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:32:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 10:32:21 GMT
ENV RUBY_MAJOR=2.6
# Wed, 27 Mar 2019 10:32:22 GMT
ENV RUBY_VERSION=2.6.2
# Wed, 27 Mar 2019 10:32:22 GMT
ENV RUBY_DOWNLOAD_SHA256=91fcde77eea8e6206d775a48ac58450afe4883af1a42e5b358320beb33a445fa
# Wed, 27 Mar 2019 10:39:37 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 27 Mar 2019 10:39:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Mar 2019 10:39:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Mar 2019 10:39:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 10:39:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Mar 2019 10:39:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b0f1e21cda3d97cc441fdf11e7f99ec7b60e2014369b721ee5c87c4f7dc5d`  
		Last Modified: Wed, 27 Mar 2019 11:45:11 GMT  
		Size: 11.2 MB (11172380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c865bf2b94447e89b17356ad091d6a1419cc7b9c2bb80128638ed321b90545ba`  
		Last Modified: Wed, 27 Mar 2019 11:45:08 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77523f332654bae31529ab6da0762f2fabd9c2a9d8237edbfa814cf6110ba507`  
		Last Modified: Wed, 27 Mar 2019 11:45:11 GMT  
		Size: 19.9 MB (19898849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a65338d68dff1f7a7e3612e4459838c81e294fa64718ddb1319f7f42703831a`  
		Last Modified: Wed, 27 Mar 2019 11:45:08 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:f17eefdffc4c6a0585e9e496a3c4edfd96c5e97b12dd71b4fcdf372265a78846
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50222897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec96470a28e16a09f3489ecc17a14d3cc8b1bb5972c410a7cd71fc1684ec9c2a`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:28:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:28:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:28:30 GMT
ENV RUBY_MAJOR=2.6
# Wed, 27 Mar 2019 12:28:30 GMT
ENV RUBY_VERSION=2.6.2
# Wed, 27 Mar 2019 12:28:30 GMT
ENV RUBY_DOWNLOAD_SHA256=91fcde77eea8e6206d775a48ac58450afe4883af1a42e5b358320beb33a445fa
# Wed, 27 Mar 2019 12:31:37 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 27 Mar 2019 12:31:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Mar 2019 12:31:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Mar 2019 12:31:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 12:31:40 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Mar 2019 12:31:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2540bbb15025b94717408aae8e14383a9e0ac42948adbc9cb1cd3c692660b39`  
		Last Modified: Wed, 27 Mar 2019 13:31:28 GMT  
		Size: 9.6 MB (9602530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b477cfb3d6d378f0fc6f95748a1825076bf55cd19490b6bfefdc91508742bdb`  
		Last Modified: Wed, 27 Mar 2019 13:31:22 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb31232d42bcbdc32b8bd063ca06ae86430e5a4c2bedc429983fb79d79c41829`  
		Last Modified: Wed, 27 Mar 2019 13:31:31 GMT  
		Size: 19.5 MB (19459319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023be060e20a82fe2914679ff7108f18b2fd81e3161f3dfde5defe1b5ef3d074`  
		Last Modified: Wed, 27 Mar 2019 13:31:22 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:a040f63ebe08f545d9927421877e75f3ed0afad93cc0d66e97732a086755c61c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47652811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82c4cb960cbd708fa56f80b1bb963cd310db21d00d645edaa5cf85e23df4578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:21:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:21:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 05 Mar 2019 13:21:20 GMT
ENV RUBY_MAJOR=2.6
# Fri, 15 Mar 2019 12:34:33 GMT
ENV RUBY_VERSION=2.6.2
# Fri, 15 Mar 2019 12:34:34 GMT
ENV RUBY_DOWNLOAD_SHA256=91fcde77eea8e6206d775a48ac58450afe4883af1a42e5b358320beb33a445fa
# Fri, 15 Mar 2019 12:37:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Fri, 15 Mar 2019 12:37:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Mar 2019 12:37:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Mar 2019 12:37:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Mar 2019 12:37:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 15 Mar 2019 12:37:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb3848a07e4fec7442899cd22e5b296ed3058709737626d8c62cceabdd7d23`  
		Last Modified: Tue, 05 Mar 2019 13:59:16 GMT  
		Size: 9.1 MB (9079075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f32891a5221bbb784d9ce45b900056eb0055287462ac9bc34daab9ced62d460`  
		Last Modified: Tue, 05 Mar 2019 13:59:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f48c119c5b58ac0cbb41acb415e645bca9fc2eca8390aa78b4c5868630b5469`  
		Last Modified: Fri, 15 Mar 2019 12:50:00 GMT  
		Size: 19.3 MB (19290854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594bf1a709cae4c605bd2ae2ebece9926c1b7e5db134aa2c864c50d992fe664`  
		Last Modified: Fri, 15 Mar 2019 12:49:55 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:257514cf516be7e22e9fdf4eacd528d595bab50a953fbc57bbcfcca3cc6830d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54024477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11dbad2c2d7fdaaecfd9694da05bd8dd812b0aa5473ca6a5406239b75858351c`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:09:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:10:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 05 Mar 2019 10:10:02 GMT
ENV RUBY_MAJOR=2.6
# Fri, 15 Mar 2019 10:29:06 GMT
ENV RUBY_VERSION=2.6.2
# Fri, 15 Mar 2019 10:29:07 GMT
ENV RUBY_DOWNLOAD_SHA256=91fcde77eea8e6206d775a48ac58450afe4883af1a42e5b358320beb33a445fa
# Fri, 15 Mar 2019 10:37:55 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Fri, 15 Mar 2019 10:37:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Mar 2019 10:37:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Mar 2019 10:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Mar 2019 10:38:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 15 Mar 2019 10:38:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7385775adab3ad48aded098b530cd23ff71a827ff9c646c97a1315ec2a253c`  
		Last Modified: Tue, 05 Mar 2019 11:45:05 GMT  
		Size: 14.0 MB (14014506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f36b3306bf9378e0888b0ebc1f9ddd2cbf242c6c8381da36b5abf920db935`  
		Last Modified: Tue, 05 Mar 2019 11:44:58 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025f55ed84ba2f5120df123d46e1c049bd5d4e9761f794faef12389ce3cf8607`  
		Last Modified: Fri, 15 Mar 2019 11:18:10 GMT  
		Size: 19.7 MB (19659459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edef4c105df124dd4dc1a7bed1d9e40a0c32a30cdb85879d37e4c14134ee1538`  
		Last Modified: Fri, 15 Mar 2019 11:18:03 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; 386

```console
$ docker pull ruby@sha256:5bfa6cd6c2d8ff73e8a20385ca5110ffadec8eae729850713f6fa207cdb447e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.2 MB (57212855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722ae259ddb9c8452945c8df43edb424b276c5ccbc8c4a679f93ced14d2282c8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:38:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 05 Mar 2019 14:38:26 GMT
ENV RUBY_MAJOR=2.6
# Fri, 15 Mar 2019 12:06:03 GMT
ENV RUBY_VERSION=2.6.2
# Fri, 15 Mar 2019 12:06:03 GMT
ENV RUBY_DOWNLOAD_SHA256=91fcde77eea8e6206d775a48ac58450afe4883af1a42e5b358320beb33a445fa
# Fri, 15 Mar 2019 12:09:11 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Fri, 15 Mar 2019 12:09:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Mar 2019 12:09:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Mar 2019 12:09:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Mar 2019 12:09:12 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 15 Mar 2019 12:09:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d13237455cab57cfcdf0a0aefb84f00de07c307353aa2758e8655d25075cc3`  
		Last Modified: Tue, 05 Mar 2019 15:48:27 GMT  
		Size: 14.7 MB (14650441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e40065ad9e788bdc5d003b77f48d38ed9026b9cbb93d77f964fdfbfea867d0`  
		Last Modified: Tue, 05 Mar 2019 15:48:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811adc576604f7761bf7137a773a102290f19ea6633d3047bf21177e5426b643`  
		Last Modified: Fri, 15 Mar 2019 12:28:46 GMT  
		Size: 19.4 MB (19436381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8822c062a633f58b728fd5801ae419202c53ff3485eb6227db739582b2637020`  
		Last Modified: Fri, 15 Mar 2019 12:28:43 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:1681b1a8d15c96381f95cd9b6b974339c1548bf4c52553f0b2ef8f18837d0672
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53428360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227dc2fcbe862d4dee5589ea51174569b249c10c2d42e8919f72b51949ac6242`
-	Default Command: `["irb"]`

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
# Wed, 27 Mar 2019 12:40:10 GMT
ENV RUBY_VERSION=2.6.2
# Wed, 27 Mar 2019 12:40:15 GMT
ENV RUBY_DOWNLOAD_SHA256=91fcde77eea8e6206d775a48ac58450afe4883af1a42e5b358320beb33a445fa
# Wed, 27 Mar 2019 12:47:18 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 27 Mar 2019 12:47:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Mar 2019 12:47:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Mar 2019 12:47:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 12:47:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Mar 2019 12:47:33 GMT
CMD ["irb"]
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
	-	`sha256:35f0c013f148a8ca9f9b37e27f6eec43972ce9d39744c82f5891b141ae10c887`  
		Last Modified: Wed, 27 Mar 2019 13:27:44 GMT  
		Size: 20.1 MB (20097228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09874ffb9138905a7c898bb681203d7d02ff369ee40a2e971b099c9eb0f5936c`  
		Last Modified: Wed, 27 Mar 2019 13:27:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; s390x

```console
$ docker pull ruby@sha256:bebe6d40268e4cb0adeae370d2d0f6cc8909c30d6e5fceaa9486ef368c958844
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54188569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1180be75c912d547da49a720db6478e96fde355a95d5b998a8faf49c4bbdd257`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:05:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:05:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 05 Mar 2019 13:05:46 GMT
ENV RUBY_MAJOR=2.6
# Fri, 15 Mar 2019 12:09:45 GMT
ENV RUBY_VERSION=2.6.2
# Fri, 15 Mar 2019 12:09:45 GMT
ENV RUBY_DOWNLOAD_SHA256=91fcde77eea8e6206d775a48ac58450afe4883af1a42e5b358320beb33a445fa
# Fri, 15 Mar 2019 12:12:07 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Fri, 15 Mar 2019 12:12:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Mar 2019 12:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Mar 2019 12:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Mar 2019 12:12:09 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 15 Mar 2019 12:12:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5358306fbe1b2961b60853fc44514aa3f06b7b8734614671c0b8fa5312f43`  
		Last Modified: Tue, 05 Mar 2019 13:39:28 GMT  
		Size: 11.6 MB (11577576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c4922b7193715c25d2e87df6dcb86681f1ac5b987842277f19bb0d7bc7fcb5`  
		Last Modified: Tue, 05 Mar 2019 13:39:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36db2e9bff66bb614afc4b966b0bab725d53cc810520c7d19cd24f1bc333149`  
		Last Modified: Fri, 15 Mar 2019 12:26:14 GMT  
		Size: 20.3 MB (20265257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd3f5e04d0a77afb02406eb7aba1c3cc43a912f2cd80dca039f3a861195760e`  
		Last Modified: Fri, 15 Mar 2019 12:26:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
