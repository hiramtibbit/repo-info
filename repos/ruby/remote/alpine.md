## `ruby:alpine`

```console
$ docker pull ruby@sha256:15ad6db40d878e049d0556b4a938fe4c13312791f655a0d5a4a624a967cda23f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `ruby:alpine` - linux; amd64

```console
$ docker pull ruby@sha256:19baf88093e20941de70ed0ac09761be35f6ec35a11712c9d6517e2f95961185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25881740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acb824ff4cdbea6106843eccfb15f5648295e7075dcc37093e5d9d9b1c6f402`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:16:05 GMT
RUN apk add --no-cache 		gmp-dev
# Wed, 10 Apr 2019 02:16:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 Apr 2019 02:16:07 GMT
ENV RUBY_MAJOR=2.6
# Wed, 17 Apr 2019 23:44:09 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 17 Apr 2019 23:44:10 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 17 Apr 2019 23:48:14 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 17 Apr 2019 23:48:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Apr 2019 23:48:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Apr 2019 23:48:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Apr 2019 23:48:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Apr 2019 23:48:16 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a4a175230f2d326f1f3efa315885742c1da4b2fa3e348a2ad7b70f0e604f2f`  
		Last Modified: Wed, 10 Apr 2019 02:36:34 GMT  
		Size: 1.0 MB (1030416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b688ca58800e6967efbcd1d341be8bc8fe9712db67ba1bb6f8b9dccc2b939f7`  
		Last Modified: Wed, 10 Apr 2019 02:36:34 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ba3c15906967db4cd76102a8cf5f1b4d0ab38082f0ad54db14a29d80e2ba90`  
		Last Modified: Wed, 17 Apr 2019 23:55:04 GMT  
		Size: 22.1 MB (22093980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cb7140deccc88e9282c142a5b37d68d51d5bc72cffa44d1e2862c7f35f0b5c`  
		Last Modified: Wed, 17 Apr 2019 23:54:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:alpine` - linux; arm variant v6

```console
$ docker pull ruby@sha256:258ac81d990a246aac0305f9de54514e7783a8829d214317f890491a5b9a30cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 MB (24712760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facab0c192ae565df25a087faf93eb5d72df2de0d804f478d1214e3e03aaa6ef`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:47:44 GMT
RUN apk add --no-cache 		gmp-dev
# Wed, 10 Apr 2019 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 Apr 2019 08:47:46 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 07:59:41 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 07:59:42 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 08:16:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 08:16:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 08:16:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 08:16:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 08:16:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 08:16:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8eefc5c66843181fcc96441465572e9441526d84d161dd59622a69e70c1d10`  
		Last Modified: Wed, 10 Apr 2019 09:00:55 GMT  
		Size: 888.2 KB (888156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28feaceca7c704afd4afa35be1cbdc7f113d3ffa217709952526a7f4b126d6a4`  
		Last Modified: Wed, 10 Apr 2019 09:00:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f708883e0436697114af545d16a930d49696beb99e182b4b05bd4e03d487c7c4`  
		Last Modified: Thu, 18 Apr 2019 08:29:48 GMT  
		Size: 21.3 MB (21280766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c7b091ea8dfab464f08421a504e7edd8aba4f24f5868bf306dd9b796bae9cf`  
		Last Modified: Thu, 18 Apr 2019 08:29:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
