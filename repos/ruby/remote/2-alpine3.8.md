## `ruby:2-alpine3.8`

```console
$ docker pull ruby@sha256:3e3e25d53934c6e9fc2401738d1ddd3b1edbdb13d5509bbbd061b2b1f3c30f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:2-alpine3.8` - linux; amd64

```console
$ docker pull ruby@sha256:ec7d28b0d140d6c397f85442ab0cd075a793e48c5485d1ba7c976386b78d5f75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21704283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a129682918f272ef7535d5727b432c6ec115c115845b763a7e65a771e49019`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:08:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 31 Jan 2019 02:08:30 GMT
ENV RUBY_MAJOR=2.6
# Thu, 31 Jan 2019 02:08:31 GMT
ENV RUBY_VERSION=2.6.0
# Thu, 31 Jan 2019 02:08:31 GMT
ENV RUBY_DOWNLOAD_SHA256=acb00f04374899ba8ee74bbbcb9b35c5c6b1fd229f1876554ee76f0f1710ff5f
# Thu, 31 Jan 2019 02:11:22 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 31 Jan 2019 02:11:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 31 Jan 2019 02:11:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 31 Jan 2019 02:11:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 02:11:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 31 Jan 2019 02:11:24 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222c39e7aa7aece49122957ac7709f1b5d6846691b8d7e869bff379fd83a13ac`  
		Last Modified: Thu, 31 Jan 2019 02:38:53 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07546bd8601ee4c9fd790fa5a71cd7a509eba72ea5db1bb80a9d984387e2153c`  
		Last Modified: Thu, 31 Jan 2019 02:38:56 GMT  
		Size: 19.5 MB (19496906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7614965d2143317ea8ee05a081b076b5a40778368de6e28fe42632e8916bf401`  
		Last Modified: Thu, 31 Jan 2019 02:38:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-alpine3.8` - linux; arm variant v6

```console
$ docker pull ruby@sha256:6ee54806091abc28ed378e806e4b6a1835700d0cb0e8a8146ffcba984297c5f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21022879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bd2d420566ec6bcf5c6a9a99e01d1e9b566ba654d8aa45525610e547cfd246`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:07:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 28 Dec 2018 08:49:31 GMT
ENV RUBY_MAJOR=2.6
# Fri, 28 Dec 2018 08:49:31 GMT
ENV RUBY_VERSION=2.6.0
# Fri, 28 Dec 2018 08:49:31 GMT
ENV RUBY_DOWNLOAD_SHA256=acb00f04374899ba8ee74bbbcb9b35c5c6b1fd229f1876554ee76f0f1710ff5f
# Tue, 08 Jan 2019 08:53:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Tue, 08 Jan 2019 08:53:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 08 Jan 2019 08:53:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 08 Jan 2019 08:53:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 08:53:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 08 Jan 2019 08:53:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb03b66d34efaa2b8ea0521dfd6ae2632cad63460484ad1312cefeb6849e769`  
		Last Modified: Fri, 21 Dec 2018 10:38:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c4763d7e8e5ce425a8b3891f642058a65135c32e30cfef37878f6bbc375468`  
		Last Modified: Tue, 08 Jan 2019 09:20:45 GMT  
		Size: 18.9 MB (18876525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5b3603553d0e48b079c10f49ea241523568c73f0dcd242c8095c9316bdc2c4`  
		Last Modified: Tue, 08 Jan 2019 09:20:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:82f1c9f1037de8dc66a3d0bd17fbe9628f2b7a7d6a7a12fa47e2ba2618627034
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21329691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7005d22bf5a779cfe83c90f56cad489d8ab3782f765fb0d549f8dab66edea7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:04:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 28 Dec 2018 10:18:14 GMT
ENV RUBY_MAJOR=2.6
# Fri, 28 Dec 2018 10:18:15 GMT
ENV RUBY_VERSION=2.6.0
# Fri, 28 Dec 2018 10:18:15 GMT
ENV RUBY_DOWNLOAD_SHA256=acb00f04374899ba8ee74bbbcb9b35c5c6b1fd229f1876554ee76f0f1710ff5f
# Tue, 08 Jan 2019 10:21:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Tue, 08 Jan 2019 10:21:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 08 Jan 2019 10:21:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 08 Jan 2019 10:21:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 10:21:20 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 08 Jan 2019 10:21:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473ba64d1f0472e7c7cd1d8a451f40c465ba170b30d649783dbcde6d4decd924`  
		Last Modified: Fri, 21 Dec 2018 14:59:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43a67bcdb5275e28afafee3ce09657dbaacd41f98172d558f6a1330b9ee20b9`  
		Last Modified: Tue, 08 Jan 2019 11:43:48 GMT  
		Size: 19.2 MB (19229335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462708d4fb6653cc0d80aa5dfc8e9e9b2fb00c9367c4c9c22dc41fbf0835b9a3`  
		Last Modified: Tue, 08 Jan 2019 11:43:43 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-alpine3.8` - linux; 386

```console
$ docker pull ruby@sha256:748c00bff70f392cf5aa935356aef8ac1237083f8a6e7d7406b8586bf057721e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21224773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f43e04711da73d69a149458e16581d681653b3c5a529952b8ce342d5aea0cd`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:07:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 28 Dec 2018 11:53:50 GMT
ENV RUBY_MAJOR=2.6
# Fri, 28 Dec 2018 11:53:50 GMT
ENV RUBY_VERSION=2.6.0
# Fri, 28 Dec 2018 11:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=acb00f04374899ba8ee74bbbcb9b35c5c6b1fd229f1876554ee76f0f1710ff5f
# Tue, 08 Jan 2019 12:01:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Tue, 08 Jan 2019 12:01:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 08 Jan 2019 12:01:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 08 Jan 2019 12:01:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 12:01:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 08 Jan 2019 12:01:31 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272fae16df78d02a02034f58b543b2344b6bdbdc63baefcafef78eaadc895174`  
		Last Modified: Fri, 21 Dec 2018 14:35:04 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500e0fc04cd6e49716b79e72c731a68bdf6ecb815641562ed35222c7423a8a66`  
		Last Modified: Tue, 08 Jan 2019 13:16:25 GMT  
		Size: 19.0 MB (18952692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c15fb719fbebf4ffa14b62de604b3f2d2a09ab91e2b49dce7bea0063da6ae92`  
		Last Modified: Tue, 08 Jan 2019 13:16:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-alpine3.8` - linux; ppc64le

```console
$ docker pull ruby@sha256:fd88dd98ff56ef823a38c4f79d391c7357ac63fa8dd6cadbef21ed20afba6275
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21874566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b061dfd65c4b6b7b2da6e23c7bf7b839fd1b0a00572fe847a1ec0e15b63d75e`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:49:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 28 Dec 2018 09:26:49 GMT
ENV RUBY_MAJOR=2.6
# Fri, 28 Dec 2018 09:26:50 GMT
ENV RUBY_VERSION=2.6.0
# Fri, 28 Dec 2018 09:26:52 GMT
ENV RUBY_DOWNLOAD_SHA256=acb00f04374899ba8ee74bbbcb9b35c5c6b1fd229f1876554ee76f0f1710ff5f
# Tue, 08 Jan 2019 09:37:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Tue, 08 Jan 2019 09:37:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 08 Jan 2019 09:37:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 08 Jan 2019 09:37:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 09:37:12 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 08 Jan 2019 09:37:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cfcf39978be66d366c2b70d3828ad51248c5b6a27365fdc9dc88f414ec6f5a`  
		Last Modified: Fri, 21 Dec 2018 11:21:53 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aafaf32656c03250396dd6d3c1880b5dadc6c15ff3f72ad57fe1c346bea8dff`  
		Last Modified: Tue, 08 Jan 2019 10:32:55 GMT  
		Size: 19.7 MB (19679216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b020f9e0601adb88f58153b47422a153adc4995b8fbd368bea1380a2a915a02`  
		Last Modified: Tue, 08 Jan 2019 10:32:38 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-alpine3.8` - linux; s390x

```console
$ docker pull ruby@sha256:c92a634315ae1dac293aef7bb025fb9b036bad9dd86c8aae67ddafdb95ff1179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22138215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae010ff5c7edd0facddccf4800928f043701219e05398fca072f51d9b6cebfeb`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:13:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 28 Dec 2018 12:53:40 GMT
ENV RUBY_MAJOR=2.6
# Fri, 28 Dec 2018 12:53:41 GMT
ENV RUBY_VERSION=2.6.0
# Fri, 28 Dec 2018 12:53:41 GMT
ENV RUBY_DOWNLOAD_SHA256=acb00f04374899ba8ee74bbbcb9b35c5c6b1fd229f1876554ee76f0f1710ff5f
# Tue, 08 Jan 2019 13:11:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Tue, 08 Jan 2019 13:11:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 08 Jan 2019 13:11:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 08 Jan 2019 13:11:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 13:11:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 08 Jan 2019 13:11:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40c0272f7aeee644f75efab734345271c60a7820d3b77d57330b69f1fc96c29`  
		Last Modified: Fri, 21 Dec 2018 14:34:20 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e562672169d5a1d0a732aad65dbc6f10c2f62567a09c28bbeb2f0231f89211`  
		Last Modified: Tue, 08 Jan 2019 13:44:27 GMT  
		Size: 19.8 MB (19829851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f583c746daf6a9ca34e0cc92567f31434ebb45da40dd6a643f7190cd1450ca2`  
		Last Modified: Tue, 08 Jan 2019 13:44:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
