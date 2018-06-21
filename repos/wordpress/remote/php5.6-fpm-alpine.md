## `wordpress:php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:b9a4e6a19d582aa0d430079b94ff12d30b8912134a2f5f13b7cb227c5900a5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:php5.6-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:750769906b0aafafa801db78463d841cd0e367c46e5cb7d170e716199aee0ad7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37673803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ecee0fba4001c2de830151ddd63c0a2470ecd0c1b0c301eb19439142f5e8ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 19:11:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Jun 2018 19:12:01 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 06 Jun 2018 19:12:01 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Jun 2018 19:12:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Jun 2018 19:12:02 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 18 Jun 2018 23:52:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Mon, 18 Jun 2018 23:52:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 18 Jun 2018 23:52:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 18 Jun 2018 23:52:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Jun 2018 02:13:30 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 19 Jun 2018 02:13:30 GMT
ENV PHP_VERSION=5.6.36
# Tue, 19 Jun 2018 02:13:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Tue, 19 Jun 2018 02:13:30 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Thu, 21 Jun 2018 00:06:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 00:06:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 00:08:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 00:08:44 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 21 Jun 2018 00:08:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 00:08:44 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 00:08:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Jun 2018 00:08:45 GMT
EXPOSE 9000/tcp
# Thu, 21 Jun 2018 00:08:45 GMT
CMD ["php-fpm"]
# Thu, 21 Jun 2018 01:49:30 GMT
RUN apk add --no-cache 		bash 		sed
# Thu, 21 Jun 2018 01:51:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 21 Jun 2018 01:51:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Jun 2018 01:51:13 GMT
VOLUME [/var/www/html]
# Thu, 21 Jun 2018 01:51:14 GMT
ENV WORDPRESS_VERSION=4.9.6
# Thu, 21 Jun 2018 01:51:14 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Thu, 21 Jun 2018 01:51:17 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 21 Jun 2018 01:51:24 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 21 Jun 2018 01:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 01:51:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9833b0afc68f3c69172f198b795184dd481f663e21b948642f06ca8b280eb94`  
		Last Modified: Wed, 06 Jun 2018 22:05:45 GMT  
		Size: 1.3 MB (1268710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253fa17a201519712cf30bc2462187063bb901b076d24fc9c0ad0e2572eb0fc`  
		Last Modified: Wed, 06 Jun 2018 22:05:41 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ce3cad229c1194c8659d8569dfe280c51af2634b43f16c364c54391f2ce009`  
		Last Modified: Wed, 06 Jun 2018 22:05:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692bbf73e4dce767b50f49635716283a8a52e0b268c256e0253dfacbd24781b9`  
		Last Modified: Thu, 21 Jun 2018 00:56:21 GMT  
		Size: 12.5 MB (12486511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fc130c888292363fbc077bb80cf3ae3634196cff48b65fe9b4df15e68f07c6`  
		Last Modified: Thu, 21 Jun 2018 00:56:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e71f28b6017b4aeef1f861192112e42b1543bd371710508178929c190c244a5`  
		Last Modified: Thu, 21 Jun 2018 00:56:21 GMT  
		Size: 11.7 MB (11678187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de90bb6f2cfc7d93fd384aa1e0a6bde92b11ee2619af42ab22a51e44c0cd4e59`  
		Last Modified: Thu, 21 Jun 2018 00:56:16 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f447a2f3f25ed830399b62ab5f09722ec70ca57929f5944c39a7600b0de25b2`  
		Last Modified: Thu, 21 Jun 2018 00:56:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3d673ba1947e2df562720e0af9d55341c3f1a1873dce8977d9bf67d19e9c04`  
		Last Modified: Thu, 21 Jun 2018 00:56:18 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41998b25cf081b3070b1db7b1db98cc455d9925b115ca9a670afad8c57bda4bb`  
		Last Modified: Thu, 21 Jun 2018 02:26:11 GMT  
		Size: 769.9 KB (769948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eff40d0ed7fd86a3190f4b90bfd071a09008211acc463d4a35f71fb611e1a91`  
		Last Modified: Thu, 21 Jun 2018 02:26:12 GMT  
		Size: 788.9 KB (788881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60194a643d73a41a971624c999fd29125aae84dd924c3f9966a25179defc9262`  
		Last Modified: Thu, 21 Jun 2018 02:26:12 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d88e3ea44f2c157ed16cf67d6057fe8cff1dd2b76d18da626b16be1bbe0505`  
		Last Modified: Thu, 21 Jun 2018 02:26:14 GMT  
		Size: 8.6 MB (8600444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0ef6ca224dafc9efb9485b26540f8a6af09338efd6c33e00690df7e5776088`  
		Last Modified: Thu, 21 Jun 2018 02:26:11 GMT  
		Size: 3.3 KB (3346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php5.6-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:2f1546a2eff6b61a581e5cd82a955cb741b94881e078a58d8bbcd79c6f1c0ba0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36842241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9da7d08b0b4641b903a09b7aa127729fcd7e6812ec013609c656cc2355e96e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 14 Dec 2017 03:34:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 14 Dec 2017 03:34:29 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 14 Dec 2017 03:34:31 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 14 Dec 2017 03:34:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Dec 2017 03:34:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 14 Dec 2017 03:43:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 14 Dec 2017 03:43:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 03:43:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 03:43:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 May 2018 12:35:31 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 25 May 2018 12:35:32 GMT
ENV PHP_VERSION=5.6.36
# Fri, 25 May 2018 12:35:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Fri, 25 May 2018 12:35:33 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Thu, 07 Jun 2018 11:45:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 07 Jun 2018 11:45:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 07 Jun 2018 11:52:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 07 Jun 2018 11:52:42 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 07 Jun 2018 11:52:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 07 Jun 2018 11:52:44 GMT
WORKDIR /var/www/html
# Thu, 07 Jun 2018 11:52:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 07 Jun 2018 11:52:46 GMT
EXPOSE 9000/tcp
# Thu, 07 Jun 2018 11:52:48 GMT
CMD ["php-fpm"]
# Thu, 07 Jun 2018 13:01:04 GMT
RUN apk add --no-cache 		bash 		sed
# Thu, 07 Jun 2018 13:03:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 07 Jun 2018 13:03:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 07 Jun 2018 13:03:29 GMT
VOLUME [/var/www/html]
# Thu, 07 Jun 2018 13:03:30 GMT
ENV WORDPRESS_VERSION=4.9.6
# Thu, 07 Jun 2018 13:03:41 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Thu, 07 Jun 2018 13:03:45 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 07 Jun 2018 13:03:46 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 07 Jun 2018 13:03:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 13:03:48 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fd85926acf4e07a36e9605843329449387bbfc1c1550485a341b4f87bfe40c`  
		Last Modified: Sat, 16 Dec 2017 16:37:16 GMT  
		Size: 1.2 MB (1214054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbd52b402d6ede87c727a4c39eca929bb27c7d5873fadd61ad1fc86752cc164`  
		Last Modified: Sat, 16 Dec 2017 16:37:15 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ea5fa010452e4ef78628eebe6459b693eee1ec67ce04afd2ef50a2edee5fb`  
		Last Modified: Sat, 16 Dec 2017 16:37:15 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d6f29a79dfc7f22654026343bcc88dcfef05ea66aa921ae03ea1d627499b22`  
		Last Modified: Thu, 07 Jun 2018 12:25:19 GMT  
		Size: 12.5 MB (12486444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d78a3d2ece478e387653b59939aac7489fdc275404966a5870063340f03adf`  
		Last Modified: Thu, 07 Jun 2018 12:25:15 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce0b837ef69ada6535560628417dfa90ef4137604f91758639cfdcfc96494ba`  
		Last Modified: Thu, 07 Jun 2018 12:25:21 GMT  
		Size: 11.1 MB (11089076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5238ec2ead8c348cad574da6b187ff8539d26f7e1e10a167260c853161232c4a`  
		Last Modified: Thu, 07 Jun 2018 12:25:16 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cbc13fd016bfd9dd168d27ff2ed4a011997a4fbed41bb4d0815407d0154160`  
		Last Modified: Thu, 07 Jun 2018 12:25:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb426c5e57d16c3a97af1c7bfa02962ae8e9922473f996d06910bc8fd238b91b`  
		Last Modified: Thu, 07 Jun 2018 12:25:15 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11764f22e1572cb6f5662791358bb83b218592f0d0af28a03a0aaa5e97bf4882`  
		Last Modified: Thu, 07 Jun 2018 13:26:49 GMT  
		Size: 724.5 KB (724500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac6f65b0212d26ba6840a6c1be03625dc25b2a754a4f35e7f49353c32d0cf89`  
		Last Modified: Thu, 07 Jun 2018 13:26:49 GMT  
		Size: 723.1 KB (723088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e660aca057f9abdb48d7ac0e2dbe8c2cfc74757f9741b3b1c171edc10cd4ee`  
		Last Modified: Thu, 07 Jun 2018 13:26:50 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1bbf3d7a46b1fdd2cb924b17f9cc944e9ec14e8ccd45f63bd01109581085dc`  
		Last Modified: Thu, 07 Jun 2018 13:26:53 GMT  
		Size: 8.6 MB (8600451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ba67bd1422b8af7a7a051f68b6d7d9507600b9635afd98032ca92ec8cfb75d`  
		Last Modified: Thu, 07 Jun 2018 13:26:49 GMT  
		Size: 3.3 KB (3346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php5.6-fpm-alpine` - linux; 386

```console
$ docker pull wordpress@sha256:c801b366dabdb2f467cbebd5e1e539ffa9c0475a888d39c0c5280d91a93c1527
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38420372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0595622f9a1d58ea58b8c2f9f17bac27cdc154febdc7b6792433ca767ee0e5f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:46:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Jun 2018 10:46:29 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Jun 2018 10:46:30 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Jun 2018 10:46:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Jun 2018 10:46:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Jun 2018 11:07:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 19 Jun 2018 11:07:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Jun 2018 11:07:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Jun 2018 11:07:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Jun 2018 13:48:35 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 19 Jun 2018 13:48:35 GMT
ENV PHP_VERSION=5.6.36
# Tue, 19 Jun 2018 13:48:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Tue, 19 Jun 2018 13:48:35 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Tue, 19 Jun 2018 13:48:57 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 19 Jun 2018 13:48:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Jun 2018 13:51:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Jun 2018 13:51:45 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 19 Jun 2018 13:51:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Jun 2018 13:51:45 GMT
WORKDIR /var/www/html
# Tue, 19 Jun 2018 13:51:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 19 Jun 2018 13:51:46 GMT
EXPOSE 9000/tcp
# Tue, 19 Jun 2018 13:51:46 GMT
CMD ["php-fpm"]
# Tue, 19 Jun 2018 15:41:20 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 19 Jun 2018 15:43:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 19 Jun 2018 15:43:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 19 Jun 2018 15:43:12 GMT
VOLUME [/var/www/html]
# Tue, 19 Jun 2018 15:43:12 GMT
ENV WORDPRESS_VERSION=4.9.6
# Tue, 19 Jun 2018 15:43:12 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Tue, 19 Jun 2018 15:43:17 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 19 Jun 2018 15:43:21 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 19 Jun 2018 15:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 15:43:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9362910160aaa343ca8dc990efe62fff5a14089c10259744982d255c0638cb55`  
		Last Modified: Fri, 01 Jun 2018 11:43:26 GMT  
		Size: 1.4 MB (1368704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978adc59089609682b6befe63f957c0e68bd015afa73c26179064798a98bccfd`  
		Last Modified: Fri, 01 Jun 2018 11:43:25 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13520db38890805ee92c3c897f635d68fe93da65b7a2fd8b9d15270589cba60c`  
		Last Modified: Fri, 01 Jun 2018 11:43:25 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f22d9ae8b455d5b2f0430462f1b013d4a9f7e36840d3428a065e4c1d65085d`  
		Last Modified: Tue, 19 Jun 2018 14:42:49 GMT  
		Size: 12.5 MB (12486503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429b1f64f46f4711f97cdf5482f276ebb28435b4260dd08b7e92fa0ac3b54df9`  
		Last Modified: Tue, 19 Jun 2018 14:42:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fce4ec5c53e67ad9d76c31cf6d8c787feef7a6b27f2c7dbd39cc09407bf30`  
		Last Modified: Tue, 19 Jun 2018 14:42:49 GMT  
		Size: 12.2 MB (12166093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e2873fc19663f8118ab5da6d9a6d779af2734acab5ec4339adf3b2ad74e82`  
		Last Modified: Tue, 19 Jun 2018 14:42:42 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aee9f88e845d53d46003995f6b6f188897152096f483bf94faa4405659c0bf`  
		Last Modified: Tue, 19 Jun 2018 14:42:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2bdb0a7c61938396cd1ae8d0ff1fad3fb7afdd0ce164bd91962ba2e93b9835`  
		Last Modified: Tue, 19 Jun 2018 14:42:43 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac02b260835c8c4aed12facb89d2020eee5616bac0324480c56e4021e5ed91f`  
		Last Modified: Tue, 19 Jun 2018 16:18:46 GMT  
		Size: 811.9 KB (811868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8040f4978e13830dae5613da718c047b66f3d6506a774a9081bd2f3f5181ec3e`  
		Last Modified: Tue, 19 Jun 2018 16:18:45 GMT  
		Size: 844.8 KB (844768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a638b7532058cd8be075845794b14965fe5ae699f15520214045fc9d0b932a3`  
		Last Modified: Tue, 19 Jun 2018 16:18:44 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51626c25aab22afc1bb4efd17120a8955e72643c486122c7beb1c7ec9b21ddc9`  
		Last Modified: Tue, 19 Jun 2018 16:18:49 GMT  
		Size: 8.6 MB (8600450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b5351d9004080fbea2839b1d9f6d9d1b7b4c36c2a5d0075c6069d3782229a6`  
		Last Modified: Tue, 19 Jun 2018 16:18:44 GMT  
		Size: 3.3 KB (3346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php5.6-fpm-alpine` - linux; ppc64le

```console
$ docker pull wordpress@sha256:38f47195647330d3a663c8d8e82177eefdedf7cb36213b775879df3269f6fc21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37627355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d153cf18be80077c832f7071fc772bfc3eaceaa35db6f1366806f8ba675fc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Thu, 14 Dec 2017 09:49:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 14 Dec 2017 09:50:02 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 14 Dec 2017 09:50:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 14 Dec 2017 09:50:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Dec 2017 09:50:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Jun 2018 08:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 19 Jun 2018 08:55:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Jun 2018 08:55:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Jun 2018 08:55:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Jun 2018 11:41:44 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 19 Jun 2018 11:41:44 GMT
ENV PHP_VERSION=5.6.36
# Tue, 19 Jun 2018 11:41:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Tue, 19 Jun 2018 11:41:46 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Tue, 19 Jun 2018 11:41:57 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 19 Jun 2018 11:41:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:44:49 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Jun 2018 11:44:50 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:44:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Jun 2018 11:44:56 GMT
WORKDIR /var/www/html
# Tue, 19 Jun 2018 11:45:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 19 Jun 2018 11:45:06 GMT
EXPOSE 9000/tcp
# Tue, 19 Jun 2018 11:45:07 GMT
CMD ["php-fpm"]
# Tue, 19 Jun 2018 13:25:23 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 19 Jun 2018 13:26:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 19 Jun 2018 13:26:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 19 Jun 2018 13:26:55 GMT
VOLUME [/var/www/html]
# Tue, 19 Jun 2018 13:26:56 GMT
ENV WORDPRESS_VERSION=4.9.6
# Tue, 19 Jun 2018 13:26:56 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Tue, 19 Jun 2018 13:27:02 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 19 Jun 2018 13:27:05 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 19 Jun 2018 13:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 13:27:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcb39b8c697dd02c12a952dcc63b609d7c7bf9d66e93e5e4913d2eeeaf894d3`  
		Last Modified: Thu, 14 Dec 2017 10:14:08 GMT  
		Size: 1.3 MB (1256438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a484a708d295b3464c467d2a9bd8343046d4f4905c5776958832b3f6754c2f6`  
		Last Modified: Thu, 14 Dec 2017 10:14:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b360613871987866ea7defe9eb40283e850669f1475e97eb519e25f1f522df28`  
		Last Modified: Thu, 14 Dec 2017 10:14:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2940d5051266605a75cd395b8ba50235f2e0b57b408a632343b9cb88dcc81af`  
		Last Modified: Tue, 19 Jun 2018 12:26:08 GMT  
		Size: 12.5 MB (12486500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c18dd4cdeabfbd804ac5a1e352057c550ac50060f65d75c067940cd7cf16bce`  
		Last Modified: Tue, 19 Jun 2018 12:26:03 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3494bd82fedaf696b70bdfda4ba0d21e6f1aad4a5aaa419bbabb741473924d`  
		Last Modified: Tue, 19 Jun 2018 12:26:08 GMT  
		Size: 11.6 MB (11604021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a6b64845cfc04d3f0e716d2a92f04dee2b2238bb13dd8b07d662b17578cd36`  
		Last Modified: Tue, 19 Jun 2018 12:26:02 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75179630b91261f5ede35b182ff76f3febbf60568ebd5b2ecd8d79f54d914be`  
		Last Modified: Tue, 19 Jun 2018 12:26:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5fb7e045de427673b77c06d2187f2c54e39f2e062bbf83d35ca976f3af0f0e`  
		Last Modified: Tue, 19 Jun 2018 12:26:03 GMT  
		Size: 7.7 KB (7721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb323f913f00448907b20a2ad778db172b36aa70caf048991e4df4caa9bd271`  
		Last Modified: Tue, 19 Jun 2018 13:59:30 GMT  
		Size: 789.4 KB (789423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f8296579c594815b25649dc424c3656f964d5d73c627204f8b01b448937135`  
		Last Modified: Tue, 19 Jun 2018 13:59:30 GMT  
		Size: 793.2 KB (793163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35e1d3cdcd5a7b32e00e4ce65c2faad7a9b3209e7989a93e46740b6e567ae7b`  
		Last Modified: Tue, 19 Jun 2018 13:59:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc44b0fe0dce141ede3c2c3557ff351e68d9d2d8adbac638e5bdac9ecc5bc33`  
		Last Modified: Tue, 19 Jun 2018 13:59:32 GMT  
		Size: 8.6 MB (8600445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb209d9b2a8eb80798f297cebe9d4c45b74267d6ac2490da58f7a6038f4fdfd`  
		Last Modified: Tue, 19 Jun 2018 13:59:29 GMT  
		Size: 3.4 KB (3350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
