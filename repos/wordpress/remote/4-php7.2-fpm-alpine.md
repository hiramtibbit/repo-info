## `wordpress:4-php7.2-fpm-alpine`

```console
$ docker pull wordpress@sha256:aedd78b757d2d1ecd9ee7a9c175bb34c6304dc4c3b7b08511cd6947a88e374bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:4-php7.2-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:e25e8be46a1d53d2e08efb777d79d54e2098aec871b19c87f73bf9de8d9f3b03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41425410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18703074c5a94982e5bbc7b7f4d5edca37caefd2fd2c8b4bd87f9942c97f4c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Jan 2018 02:16:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 10 Jan 2018 02:16:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Jan 2018 02:16:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Jan 2018 02:16:58 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 Jan 2018 02:29:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 10 Jan 2018 02:29:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 02:29:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 02:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Jan 2018 02:29:54 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 05 Apr 2018 02:34:38 GMT
ENV PHP_VERSION=7.2.4
# Thu, 05 Apr 2018 02:34:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.4.tar.xz.asc/from/this/mirror
# Thu, 05 Apr 2018 02:34:38 GMT
ENV PHP_SHA256=7916b1bd148ddfd46d7f8f9a517d4b09cd8a8ad9248734e7c8dd91ef17057a88 PHP_MD5=
# Thu, 05 Apr 2018 02:35:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 05 Apr 2018 02:35:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 05 Apr 2018 02:40:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 05 Apr 2018 02:40:12 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 05 Apr 2018 02:40:16 GMT
RUN docker-php-ext-enable sodium
# Thu, 05 Apr 2018 02:40:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Apr 2018 02:40:16 GMT
WORKDIR /var/www/html
# Thu, 05 Apr 2018 02:40:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 05 Apr 2018 02:40:17 GMT
EXPOSE 9000/tcp
# Thu, 05 Apr 2018 02:40:18 GMT
CMD ["php-fpm"]
# Fri, 06 Apr 2018 10:38:17 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 06 Apr 2018 10:39:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 06 Apr 2018 10:39:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 06 Apr 2018 10:39:09 GMT
VOLUME [/var/www/html]
# Fri, 06 Apr 2018 10:39:09 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 06 Apr 2018 10:39:09 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 06 Apr 2018 10:39:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 06 Apr 2018 10:39:12 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 06 Apr 2018 10:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Apr 2018 10:39:13 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5aa494661d4ce499e894e1ff4107c24fa7d5ccb23bf1e3c8240f547a9c3993`  
		Last Modified: Wed, 10 Jan 2018 04:31:15 GMT  
		Size: 1.4 MB (1386596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7963c90c835a47aacef9a89e2028103b267818e84b69293ce2045917158a6ba5`  
		Last Modified: Wed, 10 Jan 2018 04:31:15 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f2a1640434671ac201f14d75ba5a18a2869bf2882f9e25afd23767c8ea61b0`  
		Last Modified: Wed, 10 Jan 2018 04:31:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f3a855ae8a1881c11bfc7b244e082e4bb3cc92ec3b657c21602915545b61e1`  
		Last Modified: Thu, 05 Apr 2018 07:46:43 GMT  
		Size: 12.1 MB (12051008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d5865a58b787c5c161dfb58d3d2599c9165bf57c25d745b4e5232e6a27639c`  
		Last Modified: Thu, 05 Apr 2018 07:46:42 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846a5a72f4c6af2cc2be86583728f2c15e543b5a60da6016a3945faa13f02080`  
		Last Modified: Thu, 05 Apr 2018 07:46:46 GMT  
		Size: 16.0 MB (16017362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710810d9ee99d99e1c925a4785d16161a3525205285e840228dc2b21fa72c508`  
		Last Modified: Thu, 05 Apr 2018 07:46:40 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bce1114581f16da1672c344c00a1ee9d3fc0ccb6df55515a1408b2e6625cf8e`  
		Last Modified: Thu, 05 Apr 2018 07:46:40 GMT  
		Size: 71.1 KB (71107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ed1000c26d697a0924ef3df08f53809d23e55bd95611967326ada4a83c0207`  
		Last Modified: Thu, 05 Apr 2018 07:46:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7df266a2f619dfde8078e9deb0b3df4e9836b8c42c8d3faba00b1155bc8cc31`  
		Last Modified: Thu, 05 Apr 2018 07:46:40 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5bd9be6d1979f17f7b65d0e3948ca091678e71e0649f2e68e56351a3d09683`  
		Last Modified: Fri, 06 Apr 2018 13:14:43 GMT  
		Size: 622.0 KB (621969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e2c02614979b52ffc16d29ef31f4afacff59c94499e21b8c80c098360d3ccd`  
		Last Modified: Fri, 06 Apr 2018 13:14:43 GMT  
		Size: 847.6 KB (847644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e41b95c7fadfd3bc1b7cdee9add94df08356ffe3245bc22fe1d54393503192`  
		Last Modified: Fri, 06 Apr 2018 13:14:43 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72283dc125fedde46e4776b4cf1b93c125f1cbc57699d3edec963b5e0e497e5b`  
		Last Modified: Fri, 06 Apr 2018 13:14:46 GMT  
		Size: 8.4 MB (8422293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b475c8ec7fd17784d11335675f12dcb3afae76bf42be1fca0e97f4eb318e75d`  
		Last Modified: Fri, 06 Apr 2018 13:14:44 GMT  
		Size: 3.4 KB (3350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:aeb4bb3647a293f3d6af52e5bcbe46e4aef5d25bdb491dc9fee82379381d3aea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41318184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6144086ac3172c066d19c2cc86cf6ed8fd26fcbbaacc527412048a28fc4563`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 03:26:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 03:26:58 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Dec 2017 03:27:00 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 03:27:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 03:27:02 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 03:36:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 03:36:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:36:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:36:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 03:36:13 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 06 Mar 2018 03:52:00 GMT
ENV PHP_VERSION=7.2.3
# Tue, 06 Mar 2018 03:52:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.3.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 03:52:02 GMT
ENV PHP_SHA256=b3a94f1b562f413c0b96f54bc309706d83b29ac65d9b172bc7ed9fb40a5e651f PHP_MD5=
# Thu, 08 Mar 2018 03:17:05 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 08 Mar 2018 03:17:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:11:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 23 Mar 2018 03:11:08 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:11:12 GMT
RUN docker-php-ext-enable sodium
# Fri, 23 Mar 2018 03:11:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 23 Mar 2018 03:11:13 GMT
WORKDIR /var/www/html
# Fri, 23 Mar 2018 03:11:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Mar 2018 03:11:15 GMT
EXPOSE 9000/tcp
# Fri, 23 Mar 2018 03:11:16 GMT
CMD ["php-fpm"]
# Fri, 23 Mar 2018 04:33:17 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 23 Mar 2018 04:35:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 23 Mar 2018 04:35:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Mar 2018 04:35:22 GMT
VOLUME [/var/www/html]
# Fri, 23 Mar 2018 04:35:23 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 23 Mar 2018 04:35:23 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 23 Mar 2018 04:35:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 23 Mar 2018 04:35:28 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 23 Mar 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 04:35:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7936537e9e8eb421dc1abbe8b7a321784aae49b26ecba40d45684bdae461dc41`  
		Last Modified: Fri, 01 Dec 2017 05:26:21 GMT  
		Size: 1.3 MB (1338713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897b867d90e3e314231763652ab368dda9d0595e8b3827d816840cc676c3d6c5`  
		Last Modified: Fri, 01 Dec 2017 05:26:20 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153f3b68b311cd4ebc798e1e2a26065db5b891e0b2f50e60c3792215927a5853`  
		Last Modified: Fri, 01 Dec 2017 05:26:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8517fa8c0ef9442da8fccdebf22898acf3456ca05a6b9736d4bc6cf6a2883576`  
		Last Modified: Thu, 08 Mar 2018 03:30:06 GMT  
		Size: 12.1 MB (12118026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66c0dfbcfa1bb38673e6083f5ccbf3f523c60265400710a7801479cf27a412`  
		Last Modified: Thu, 08 Mar 2018 03:30:03 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64091afc21fd8a8324bfa4a5ba9f67f2f802ff66f2a82ee50511c1398fac3bf8`  
		Last Modified: Fri, 23 Mar 2018 03:50:19 GMT  
		Size: 16.1 MB (16065242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7252fa18a998cf723fe0d295da399bb4b393d57a28b17ed94f3a6901ec36c25`  
		Last Modified: Fri, 23 Mar 2018 03:50:12 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8babf3ac277b7d623b0997a69348068ec35e842d60102ed4e097b163a80d89`  
		Last Modified: Fri, 23 Mar 2018 03:50:12 GMT  
		Size: 70.1 KB (70089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2827992133773e2d3526e6f43e32f247251041f4e6922b1c1092c1f6308ca8eb`  
		Last Modified: Fri, 23 Mar 2018 03:50:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a722d64bcff566ae20d9e9300abc4eec6e6b20177e68d1616fa24eee78c22d`  
		Last Modified: Fri, 23 Mar 2018 03:50:12 GMT  
		Size: 7.7 KB (7694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8774dc72cf18579640cedfae356e87491aeb2f8f90f70f1b0dd0dff0d6b27549`  
		Last Modified: Fri, 23 Mar 2018 04:47:46 GMT  
		Size: 581.0 KB (581000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ceb95c1cb2ddf97a482d816b9ea058427437f011718c165e471caa2de29adc`  
		Last Modified: Fri, 23 Mar 2018 04:47:45 GMT  
		Size: 792.3 KB (792303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f185bcd6e1983c55fd99740bcb935ef7f651ca91573cf599846e023a8838e5b0`  
		Last Modified: Fri, 23 Mar 2018 04:47:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff483bc31b93ca9505d5054ecc94dcb31d4b03ff7077b08e614fe1676dc50a82`  
		Last Modified: Fri, 23 Mar 2018 04:47:48 GMT  
		Size: 8.4 MB (8422288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e622d7bdd5ea9f787d2f794fec7abedd97d58050b25f4336ad3ad666108845`  
		Last Modified: Fri, 23 Mar 2018 04:47:44 GMT  
		Size: 3.4 KB (3350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm-alpine` - linux; 386

```console
$ docker pull wordpress@sha256:bd929c9c52dc203a3cb68db3143ae79a7eef0b32ac5878d3847c8f3f78fa3990
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43480215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d23961c13838963bac2ae7e17baa3d382380d0679831ffaa2bd149f2569fcd31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 10:15:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 10:15:45 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Dec 2017 10:15:46 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 10:15:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 10:15:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 10:26:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 10:26:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:26:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:26:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 10:26:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 07 Apr 2018 08:04:17 GMT
ENV PHP_VERSION=7.2.4
# Sat, 07 Apr 2018 08:04:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.4.tar.xz.asc/from/this/mirror
# Sat, 07 Apr 2018 08:04:18 GMT
ENV PHP_SHA256=7916b1bd148ddfd46d7f8f9a517d4b09cd8a8ad9248734e7c8dd91ef17057a88 PHP_MD5=
# Sat, 07 Apr 2018 08:04:28 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 07 Apr 2018 08:04:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 07 Apr 2018 08:09:25 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 07 Apr 2018 08:09:26 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Sat, 07 Apr 2018 08:09:29 GMT
RUN docker-php-ext-enable sodium
# Sat, 07 Apr 2018 08:09:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 07 Apr 2018 08:09:30 GMT
WORKDIR /var/www/html
# Sat, 07 Apr 2018 08:09:31 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 07 Apr 2018 08:09:31 GMT
EXPOSE 9000/tcp
# Sat, 07 Apr 2018 08:09:31 GMT
CMD ["php-fpm"]
# Mon, 09 Apr 2018 04:14:57 GMT
RUN apk add --no-cache 		bash 		sed
# Mon, 09 Apr 2018 04:15:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 09 Apr 2018 04:15:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 09 Apr 2018 04:15:49 GMT
VOLUME [/var/www/html]
# Mon, 09 Apr 2018 04:15:50 GMT
ENV WORDPRESS_VERSION=4.9.4
# Mon, 09 Apr 2018 04:15:50 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Mon, 09 Apr 2018 04:15:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Mon, 09 Apr 2018 04:15:53 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Mon, 09 Apr 2018 04:15:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Apr 2018 04:15:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241284dd6990a200e39d5c51505aabf96dae828a1fd3e46ec2abcce395561cc3`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 1.5 MB (1481807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d33d795be3b40c48d6d1c484027a84445adcd89daaa8d7e5c718a8fedfbeb5`  
		Last Modified: Fri, 01 Dec 2017 12:36:28 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834623b83dedeee1c9a45c1fbba1aed0a83e4144b7f4b1f1be2288c87738ceff`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4eaf2aa4a44769f4d75f8a8a4f56241469501cbab78df32a0c05768cc75469`  
		Last Modified: Sat, 07 Apr 2018 20:10:55 GMT  
		Size: 12.1 MB (12051391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d524cee38c2151bea216bbd247901c42be501f719a0c8cd1de337019bc67229`  
		Last Modified: Sat, 07 Apr 2018 20:10:54 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764e02b27b454c81901fb9e3eb10b836383f2620d49a643795e911c7d71a5358`  
		Last Modified: Sat, 07 Apr 2018 20:11:01 GMT  
		Size: 17.8 MB (17836325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabd2b044161249b9f8492d2aa97bec257da3b83747c18867e044197905ec568`  
		Last Modified: Sat, 07 Apr 2018 20:10:54 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf525b86811c13309869ac3fac9ea18b3cf6d1719954b99f846c9c436457fa3`  
		Last Modified: Sat, 07 Apr 2018 20:10:54 GMT  
		Size: 70.3 KB (70328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bad043f56a7f804d5742d729b6474739b86d15cbc4365b05416a5cb4868da5`  
		Last Modified: Sat, 07 Apr 2018 20:10:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aa94d4f448ab47a129baa5846021ec408157ea0020bc2fff1ff7adea8675a5`  
		Last Modified: Sat, 07 Apr 2018 20:10:54 GMT  
		Size: 7.8 KB (7780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff6d7bfa1e8b831ce7c1ce8494c5fc46b51557d87887ebb5b66f02f65803b0`  
		Last Modified: Mon, 09 Apr 2018 11:39:15 GMT  
		Size: 662.8 KB (662805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95a1062466539f0e25963392871d6b1d6417c95fe06e96998d0822c757c61cb`  
		Last Modified: Mon, 09 Apr 2018 11:39:16 GMT  
		Size: 893.8 KB (893836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8574996c94b02ece9513893a03a8d4347eeeb9b428b78d8348a06e9cc5c0db`  
		Last Modified: Mon, 09 Apr 2018 11:39:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc1b35d33cd6e5a48098338fe479f7e19478f29a07f5cafca0ba3048abc51ab`  
		Last Modified: Mon, 09 Apr 2018 11:39:19 GMT  
		Size: 8.4 MB (8422275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa90ac6fb1ff9710af00365dfd1b1ec624a495c6d596175c8d1f416f37861e5`  
		Last Modified: Mon, 09 Apr 2018 11:39:14 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm-alpine` - linux; ppc64le

```console
$ docker pull wordpress@sha256:9d78247a43cfd28c40ab6f84653d47c999d2444c048bdb1a962f0ccdc8dbb034
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42449385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b08ea38e2a6d3aef55d2ee109b4df2ae491675ddc4743976f848bd51ace76f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 10:14:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 10:14:20 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Dec 2017 10:14:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 10:14:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 10:14:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 10:15:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 10:15:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:15:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:15:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 10:15:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 06 Mar 2018 10:28:18 GMT
ENV PHP_VERSION=7.2.3
# Tue, 06 Mar 2018 10:28:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.3.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 10:28:21 GMT
ENV PHP_SHA256=b3a94f1b562f413c0b96f54bc309706d83b29ac65d9b172bc7ed9fb40a5e651f PHP_MD5=
# Tue, 06 Mar 2018 10:28:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 06 Mar 2018 10:28:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Mar 2018 09:34:26 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 23 Mar 2018 09:34:29 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Fri, 23 Mar 2018 09:34:36 GMT
RUN docker-php-ext-enable sodium
# Fri, 23 Mar 2018 09:34:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 23 Mar 2018 09:34:40 GMT
WORKDIR /var/www/html
# Fri, 23 Mar 2018 09:34:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Mar 2018 09:34:45 GMT
EXPOSE 9000/tcp
# Fri, 23 Mar 2018 09:34:46 GMT
CMD ["php-fpm"]
# Fri, 23 Mar 2018 10:17:44 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 23 Mar 2018 10:19:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 23 Mar 2018 10:19:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Mar 2018 10:19:34 GMT
VOLUME [/var/www/html]
# Fri, 23 Mar 2018 10:19:36 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 23 Mar 2018 10:19:37 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 23 Mar 2018 10:19:44 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 23 Mar 2018 10:19:46 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:19:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f84cc6cff0254c78cff642b43cf3648847bcab3fff737bcbe0b27f56cfb6ee6`  
		Last Modified: Fri, 01 Dec 2017 11:26:19 GMT  
		Size: 1.4 MB (1379960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632c20d36eba51c8e0a05660044d86653e4b3b3437a3a66004f52d460a238fa1`  
		Last Modified: Fri, 01 Dec 2017 11:26:19 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780319f82f8282646bd74934ca8189f7db220ff03d2f5e67b9386493464d698`  
		Last Modified: Fri, 01 Dec 2017 11:26:18 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63f4eaa7058b4707c88000572b58727f15b823c1fd1847075d38d281e301173`  
		Last Modified: Tue, 06 Mar 2018 11:47:08 GMT  
		Size: 12.1 MB (12118091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c476a1b6b675a7c1ca1db76027daf36a7691f7cd7590821605e2f0b4fba513`  
		Last Modified: Tue, 06 Mar 2018 11:47:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a561b66c8f4c92db5ccfecbfff6b660cfea0d75215193fcf31da150a3e879064`  
		Last Modified: Fri, 23 Mar 2018 09:53:12 GMT  
		Size: 17.0 MB (16960300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1213937c79c6446589be6f72afcbed243cebe1862489932aaeba21625972eb61`  
		Last Modified: Fri, 23 Mar 2018 09:53:06 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbff589fb1d103c4a45fc542047b253ff9c5597e4236b62ea7ec529c3a09459`  
		Last Modified: Fri, 23 Mar 2018 09:53:06 GMT  
		Size: 71.1 KB (71097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b4b82998b28c4015ce300d09c04e0aded8644ea3faeab4a85a6ec877aea7b`  
		Last Modified: Fri, 23 Mar 2018 09:53:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2feabe2e27060725f4c51bf6b0660160d09d70324a7cb214763b94711bb99eb6`  
		Last Modified: Fri, 23 Mar 2018 09:53:06 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190962ba7cccb829de46bd404683bc8568b308db6222cf296d6c4c8f22861bb8`  
		Last Modified: Fri, 23 Mar 2018 10:27:55 GMT  
		Size: 608.3 KB (608273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffa61649e86f32ca225aae310678510dc6e1ecfc02d6dc1d50753c0112bc5a4`  
		Last Modified: Fri, 23 Mar 2018 10:27:55 GMT  
		Size: 864.9 KB (864927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48f0dc1e099f0619b19fd564a967ee92fddeac97b9b9ab9ea491119a6f9b2f`  
		Last Modified: Fri, 23 Mar 2018 10:27:55 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8440fdb3bc2141f853277832ce09b7e0c14b7a0bf3c3bb187f79dba87af4cb`  
		Last Modified: Fri, 23 Mar 2018 10:27:57 GMT  
		Size: 8.4 MB (8422304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be7020a70049124acc6ecefc1e13e2e4438515c663dc46b7b029704b0cd3f49`  
		Last Modified: Fri, 23 Mar 2018 10:27:55 GMT  
		Size: 3.3 KB (3348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
