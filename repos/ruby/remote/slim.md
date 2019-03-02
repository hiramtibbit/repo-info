## `ruby:slim`

```console
$ docker pull ruby@sha256:4b16d49c0d222634180da2c3fb93592f038a62d03a0ca84b1cbea65c6cff9487
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

### `ruby:slim` - linux; amd64

```console
$ docker pull ruby@sha256:79d03b2c9b2d7485a4f4ddf62c75cf506c83e82a5fdd3a0270220a45da0817c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53156898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dd4d3c99da2a30ae3263745f3851e65d2fe3c705af104cfc230f306e2f0783`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:40:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:40:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Feb 2019 03:40:27 GMT
ENV RUBY_MAJOR=2.6
# Wed, 06 Feb 2019 03:40:27 GMT
ENV RUBY_VERSION=2.6.1
# Wed, 06 Feb 2019 03:40:27 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Mar 2019 01:40:40 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Mar 2019 01:40:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Mar 2019 01:40:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Mar 2019 01:40:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 01:40:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Mar 2019 01:40:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f9a541d4b353b1db6b48a0b30fcc769b551d85d2832e74176309f01907a94`  
		Last Modified: Wed, 06 Feb 2019 04:12:12 GMT  
		Size: 10.5 MB (10470623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb810789a178b6e26d50b978b021f25053d54a2b811ab94ebd5e5e284dc6382`  
		Last Modified: Wed, 06 Feb 2019 04:12:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfbbd45eb84a827972605fe60868e60ea02ea95027c94174b7b6223ce68ecd7`  
		Last Modified: Sat, 02 Mar 2019 02:51:35 GMT  
		Size: 20.2 MB (20185635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d5272733284cfbcd3283dfd0c70ca6ebf5691c52b994318313a84b58bc4786`  
		Last Modified: Sat, 02 Mar 2019 02:51:32 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:0be2451c0ebfba4b4d120c46b0779417909804a2f7a40be61baea33e86a1b960
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49903008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c171a90f44bfba8638daed3ea041d5ed9c0a81a1a890214d57addf4ca1e9ee9`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 10:06:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:06:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 07 Feb 2019 10:06:49 GMT
ENV RUBY_MAJOR=2.6
# Thu, 07 Feb 2019 10:06:49 GMT
ENV RUBY_VERSION=2.6.1
# Thu, 07 Feb 2019 10:06:49 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Mar 2019 10:00:04 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Mar 2019 10:00:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Mar 2019 10:00:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Mar 2019 10:00:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 10:00:06 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Mar 2019 10:00:07 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc4a01432c9f5ec03dd113006dfd12b7df960ab01e96997e340852594857915`  
		Last Modified: Thu, 07 Feb 2019 10:25:56 GMT  
		Size: 9.0 MB (9032819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c95e57565e634464ad336f6dc244fa499f8f372a75212189d5ccf6ca530171`  
		Last Modified: Thu, 07 Feb 2019 10:25:52 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087530f71a6e26b3f797bf82ea1eb55188e967a9d437fe89f72d716018f529`  
		Last Modified: Sat, 02 Mar 2019 10:39:53 GMT  
		Size: 19.7 MB (19688463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4911ff298a26beacdcdadf265853dd39b0b144ee2a0ed120ec0db885b65de8fa`  
		Last Modified: Sat, 02 Mar 2019 10:39:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:898796a29f1b6266a93787063a566e9fbfd491260cf0526136fb80612f99aa13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47333124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8c58d9155ab07a8a330f358a313784f4fcff727393abd5743bce2bba5bfb59`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:40:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:40:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 07 Feb 2019 14:40:44 GMT
ENV RUBY_MAJOR=2.6
# Thu, 07 Feb 2019 14:40:44 GMT
ENV RUBY_VERSION=2.6.1
# Thu, 07 Feb 2019 14:40:45 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Mar 2019 13:09:36 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Mar 2019 13:09:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Mar 2019 13:09:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Mar 2019 13:09:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 13:09:40 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Mar 2019 13:09:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed87eb4c5ab8db962e2cd2003e8cb335ccb594604d115349e9601e7b283b67fc`  
		Last Modified: Thu, 07 Feb 2019 15:11:37 GMT  
		Size: 8.5 MB (8547300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f6333f1e16e30d39000a00f73d8899fbd43b51b3022d242a0bf20b785871ac`  
		Last Modified: Thu, 07 Feb 2019 15:11:34 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463bf9c5b865acad2633b0dd922e4eb3b0ce2304de7abb9191820f28ca26ecb2`  
		Last Modified: Sat, 02 Mar 2019 13:53:13 GMT  
		Size: 19.5 MB (19495239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e451d6d516913d1d25477bf4dc9eeb6e68f9552c449474a1ab5426af08de9c7`  
		Last Modified: Sat, 02 Mar 2019 13:53:09 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:930dffd5e7fc13f118fa5f997d227f314346aec41063c2b82e15d67e7ca97a5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49551797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64316902c98707ded71e288f8cfec08e619aa36bf84984c3aa480ed505a49bb4`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Feb 2019 18:32:32 GMT
ENV RUBY_MAJOR=2.6
# Wed, 06 Feb 2019 18:32:33 GMT
ENV RUBY_VERSION=2.6.1
# Wed, 06 Feb 2019 18:32:33 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Mar 2019 11:48:03 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Mar 2019 11:48:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Mar 2019 11:48:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Mar 2019 11:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 11:48:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Mar 2019 11:48:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b980896db1e77a2b16fcd229fae3190a60d9d406f2798f8700a40704c8f5446d`  
		Last Modified: Wed, 06 Feb 2019 19:38:51 GMT  
		Size: 9.3 MB (9281397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2106a92605b63237d03edde1559b90672baa625c36b8612f5f27e38187a91043`  
		Last Modified: Wed, 06 Feb 2019 19:38:46 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fd8df916c63ed9d4308557d11ac42c41cc82a3dbb10d8d5a2aed3542bfbdf3`  
		Last Modified: Sat, 02 Mar 2019 13:45:19 GMT  
		Size: 19.9 MB (19919886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007473f9c181aeaf3478ecf7d5bb1dce9f5ba191adcf67cd7346742f3e9d04c7`  
		Last Modified: Sat, 02 Mar 2019 13:45:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; 386

```console
$ docker pull ruby@sha256:9919e046a2bb53706efb2a4269b95e9c7a55bf4c04fb302555e9dc495a1479e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56795262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92aa061b633d0ef416680e2f9b3fd15227c0f686851099bbf2b5d1792644fd0`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:45:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:45:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Feb 2019 23:45:35 GMT
ENV RUBY_MAJOR=2.6
# Wed, 06 Feb 2019 23:45:35 GMT
ENV RUBY_VERSION=2.6.1
# Wed, 06 Feb 2019 23:45:35 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Mar 2019 12:54:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Mar 2019 12:54:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Mar 2019 12:54:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Mar 2019 12:54:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 12:54:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Mar 2019 12:54:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3094483029a8f1461c4e336914c371fd5d2f4380f14b477317eca50942672a99`  
		Last Modified: Thu, 07 Feb 2019 00:20:16 GMT  
		Size: 13.9 MB (13916703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbbbeab4ef36ca39dec0f40319eb0791632f2daa36634c22377aef65bfa63e9`  
		Last Modified: Thu, 07 Feb 2019 00:20:12 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7eee42e03e97393482596ed5b8e1d893f1ff9d82dbf5ded94ea1e41f11e668`  
		Last Modified: Sat, 02 Mar 2019 14:15:19 GMT  
		Size: 19.7 MB (19731232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e1982be2579e4d9fe876a4da47f53546d4b36ef78bf509a8de33c5d036662e`  
		Last Modified: Sat, 02 Mar 2019 14:15:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:80d93c7998303050ea6a70417bfbcdbe11b81b00050ef67d9dbb6679aa843f4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53005341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be63d2ce199870adda8dc178fbd1171b3a7997203fb1e7d2f7ef21936a5537f2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:37:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 14:37:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Feb 2019 14:37:35 GMT
ENV RUBY_MAJOR=2.6
# Wed, 06 Feb 2019 14:37:38 GMT
ENV RUBY_VERSION=2.6.1
# Wed, 06 Feb 2019 14:37:40 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Mar 2019 10:29:01 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Mar 2019 10:29:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Mar 2019 10:29:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Mar 2019 10:29:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 10:29:19 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Mar 2019 10:29:24 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668a4d7bc818767a0c58b3a4b0bec5bbbc305a8e1bf3d1cbd86de603d1cd4743`  
		Last Modified: Wed, 06 Feb 2019 15:32:29 GMT  
		Size: 9.9 MB (9864722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d560dd64ebdabbbf605932a06261ddb3366575bf4dbdf55a351ad67c71f026e`  
		Last Modified: Wed, 06 Feb 2019 15:32:25 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcc81f1529f9afe622e77b4b339ea887552f72387fe01e7dec341cb8f6eb078`  
		Last Modified: Sat, 02 Mar 2019 11:20:45 GMT  
		Size: 20.4 MB (20384842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d653dc455830c17c7a3974647da2e786a3e5e25abbdbc488b2d806c9f17898d`  
		Last Modified: Sat, 02 Mar 2019 11:20:34 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; s390x

```console
$ docker pull ruby@sha256:f5a830b541dad1fb676c41b9d48277c5b19b7a5ae80e934671b7fd7ba6bdf2d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53779722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2bfd37131a5d4899562c95235252747114a82872a2e5cbc3cc4d8e7a75a290d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:51:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 14:51:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Feb 2019 14:51:09 GMT
ENV RUBY_MAJOR=2.6
# Wed, 06 Feb 2019 14:51:09 GMT
ENV RUBY_VERSION=2.6.1
# Wed, 06 Feb 2019 14:51:09 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Mar 2019 13:10:50 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Mar 2019 13:10:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Mar 2019 13:10:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Mar 2019 13:10:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 13:10:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Mar 2019 13:10:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948c30045588cdbfb5d5b1d55d12936ae88d65815278b27d47333dacbdfe6755`  
		Last Modified: Wed, 06 Feb 2019 15:02:26 GMT  
		Size: 10.9 MB (10873522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d37d75aff63d2ac3fe1bf6cd3e6a6e2057cd2978cdf000b28c54aebe95420`  
		Last Modified: Wed, 06 Feb 2019 15:02:24 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee826ae465e381499b59868a3ff6a3ca738b78f2145a1cd81ad2ab4c4be12af6`  
		Last Modified: Sat, 02 Mar 2019 13:59:13 GMT  
		Size: 20.6 MB (20552514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd78ca9e3d16944978fcd256d0e756ff1c02f6a6b19b2310e0f7f6dd0538344b`  
		Last Modified: Sat, 02 Mar 2019 13:59:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
