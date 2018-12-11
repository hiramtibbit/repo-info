## `wordpress:5-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:26b49e84361944259dd004b4764946cdb39485c1d460563c742956f2ab5bad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:5-php7.0-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:7b79cbbd28a4db99eda5e8e860c7d3176015787763ff4b0bb2599cb7f829e180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43217654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cd0270c73bb032ea2b853e616a14422277692d88a1a3d7f72d99a9fea8c24d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:26:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 01:27:01 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 01:27:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 01:27:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 01:27:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 01:37:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 01:37:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 01:37:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 01:37:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 03:18:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 10 Dec 2018 17:41:27 GMT
ENV PHP_VERSION=7.0.33
# Mon, 10 Dec 2018 17:41:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Mon, 10 Dec 2018 17:41:27 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Mon, 10 Dec 2018 17:41:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 10 Dec 2018 17:41:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Dec 2018 17:45:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Dec 2018 17:45:38 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Mon, 10 Dec 2018 17:45:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Dec 2018 17:45:38 GMT
WORKDIR /var/www/html
# Mon, 10 Dec 2018 17:45:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Dec 2018 17:45:39 GMT
EXPOSE 9000/tcp
# Mon, 10 Dec 2018 17:45:39 GMT
CMD ["php-fpm"]
# Mon, 10 Dec 2018 20:21:16 GMT
RUN apk add --no-cache 		bash 		sed
# Mon, 10 Dec 2018 20:22:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 10 Dec 2018 20:22:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 10 Dec 2018 20:22:14 GMT
VOLUME [/var/www/html]
# Mon, 10 Dec 2018 20:22:14 GMT
ENV WORDPRESS_VERSION=5.0
# Mon, 10 Dec 2018 20:22:15 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Mon, 10 Dec 2018 20:22:17 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Mon, 10 Dec 2018 20:22:18 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Mon, 10 Dec 2018 20:22:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Dec 2018 20:22:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88777455d910410652665cec0149a02db3584d6dc26e306788a3532d480b00ae`  
		Last Modified: Wed, 12 Sep 2018 04:16:24 GMT  
		Size: 1.3 MB (1260901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955e2028dd614ed9f0ea2cdf4f7889015ae0fbf356204733447be3e4e2803bef`  
		Last Modified: Wed, 12 Sep 2018 04:16:23 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d47ce93cc1fdc5f80a27881fa2f937513db13e9600b5e4d93901741529bb9cd`  
		Last Modified: Wed, 12 Sep 2018 04:16:22 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fc8510b6e0334968bfd431261aa6858ff611d5e8a6f11ade6b89dcb194217d`  
		Last Modified: Mon, 10 Dec 2018 19:35:35 GMT  
		Size: 12.1 MB (12052131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37652b979fc3aa02b18570aac2c0292f00e8139a72b14db20a8820d8d6a205ad`  
		Last Modified: Mon, 10 Dec 2018 19:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c921ea24b76bc4cd68752223a89e52d3f6473b9aec1a3eaf73da81b02fceeb`  
		Last Modified: Mon, 10 Dec 2018 19:35:35 GMT  
		Size: 14.6 MB (14608898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d833cafbd12f4f3aaa3ee64996530aa5588d1846092fd656841788308469f3ed`  
		Last Modified: Mon, 10 Dec 2018 19:35:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ea9f0e9df7b07b692277da03df4dfd1219104a3b48156cd0d459ba77b4350b`  
		Last Modified: Mon, 10 Dec 2018 19:35:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eae56c226500ba0eb5035a5ccdad51c2bdfafa3cd3217d5c693807cdfc27cb`  
		Last Modified: Mon, 10 Dec 2018 19:35:29 GMT  
		Size: 7.7 KB (7748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acbe9704a36a0f3f35aec56ae8a040e0e1b42af485338820b0141d9a21a1363`  
		Last Modified: Mon, 10 Dec 2018 20:58:07 GMT  
		Size: 769.9 KB (769850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7a019096b6bbcb60f82a2b6d6b361299414faa8677fa5a9e560e37d75a3a0`  
		Last Modified: Mon, 10 Dec 2018 20:58:07 GMT  
		Size: 2.0 MB (2034698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64357f3490cf79a97db2f941b3be3ba582b76d8903e8bfd76cde29a85dc411e5`  
		Last Modified: Mon, 10 Dec 2018 20:58:06 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641e0c007d1380f81cd775a00d0dc6c5d8eb42f5a952c65c7fde0ab54e64e168`  
		Last Modified: Mon, 10 Dec 2018 20:58:09 GMT  
		Size: 10.4 MB (10367920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea44e80881ac512dd7664289d891adbfb3a032582d50d79268ee1f01ef7623`  
		Last Modified: Mon, 10 Dec 2018 20:58:07 GMT  
		Size: 3.8 KB (3776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.0-fpm-alpine` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:38453492dcb9ca44f8f8c03fee02686bf0c059cdd4f6209e570b38f86de5cc07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42250762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718845f5f33e75c947f25fe82c23ae4d68dcdb2c3efb3a81454ae127e812715e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:06:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 08:06:49 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 08:06:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 08:06:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 08:06:51 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 08:07:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 08:07:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:07:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:07:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:12:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 09:24:28 GMT
ENV PHP_VERSION=7.0.33
# Tue, 11 Dec 2018 09:24:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 09:24:29 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Tue, 11 Dec 2018 09:24:34 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 09:24:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:27:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 09:27:32 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:27:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 09:27:33 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 09:27:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 09:27:34 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 09:27:34 GMT
CMD ["php-fpm"]
# Tue, 11 Dec 2018 10:19:29 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 11 Dec 2018 10:21:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 11 Dec 2018 10:21:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 11 Dec 2018 10:21:26 GMT
VOLUME [/var/www/html]
# Tue, 11 Dec 2018 10:21:26 GMT
ENV WORDPRESS_VERSION=5.0
# Tue, 11 Dec 2018 10:21:27 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Tue, 11 Dec 2018 10:21:33 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 11 Dec 2018 10:21:34 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 10:21:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Dec 2018 10:21:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a0055a6b8be8112d43285ce08b9f314299405cb58cd028caaf2c999a1b78a4`  
		Last Modified: Sat, 15 Sep 2018 10:01:28 GMT  
		Size: 1.2 MB (1236405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15455cc7b1429595f51de5d2fe9073b57b6650b21b4b67f4dc66de6991de63ac`  
		Last Modified: Sat, 15 Sep 2018 10:01:27 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e064bf836bccea8f679212d8a37150fa405251ddcf395ba0966ccac1de42d`  
		Last Modified: Sat, 15 Sep 2018 10:01:27 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554eac4b672242e32f76ec10892979859ab91f9feba02916c708d8863bf747a7`  
		Last Modified: Tue, 11 Dec 2018 09:47:48 GMT  
		Size: 12.1 MB (12052155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f935204215a7f561229ce773b4180480880e52581cf57c1dcc9c8bd0d5edbc`  
		Last Modified: Tue, 11 Dec 2018 09:47:45 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d166df329712e38631585d89c2b615cf52f7ced2d2fdd899b2a175698670e05`  
		Last Modified: Tue, 11 Dec 2018 09:47:52 GMT  
		Size: 13.8 MB (13834216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c12d5d88c56929268086529b41c6e9893f30407e2ed64366d985b684de279f1`  
		Last Modified: Tue, 11 Dec 2018 09:47:45 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63504f7e272b78cd02d358dd226dc15d896e6cde6723303b2bb18dfb4c8bfc71`  
		Last Modified: Tue, 11 Dec 2018 09:47:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4a1239c72e40bb0f76e1e38328f403d797119e62eda73a1eda14a0025868e`  
		Last Modified: Tue, 11 Dec 2018 09:47:45 GMT  
		Size: 7.8 KB (7750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cca3eadd91b922046b1fd3eb5081ca9ebe4b84319ce42443f15ca917c2f191d`  
		Last Modified: Tue, 11 Dec 2018 10:36:48 GMT  
		Size: 742.9 KB (742860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b38ba6b611fa65451f0b875674236263e17afa46bf531c0dfca4678421c1d`  
		Last Modified: Tue, 11 Dec 2018 10:36:48 GMT  
		Size: 1.9 MB (1949737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2719cb4200513198419c58c21005bd85f10f1e8b28de5b05c9eda5dcdae60c`  
		Last Modified: Tue, 11 Dec 2018 10:36:48 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67eb3d1bf30db7ea67daa785dfd7350db54f7547bb840d58f3b80ad381735394`  
		Last Modified: Tue, 11 Dec 2018 10:36:52 GMT  
		Size: 10.4 MB (10367944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d1f32aeb05310d867299b957bdc62864f526235d013a54565d97c347154237`  
		Last Modified: Tue, 11 Dec 2018 10:36:47 GMT  
		Size: 3.8 KB (3776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.0-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:3a7c56ba5e253c0c2ade3dd315d14cf0502e9cb9f887dfdc4e2b470d53a71ff0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41953689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e478d53f6582d462a6d690d82212afc583f2a86da852fe30692ac98e2fc0d7fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Fri, 14 Sep 2018 21:26:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 14 Sep 2018 21:26:25 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 14 Sep 2018 21:26:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 14 Sep 2018 21:26:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 14 Sep 2018 21:26:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 14 Sep 2018 21:34:14 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 14 Sep 2018 21:34:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 21:34:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 21:34:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 15 Sep 2018 00:00:32 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 16:26:54 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 16:26:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 16:26:56 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Fri, 16 Nov 2018 18:06:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 18:06:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:13:02 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 18:13:03 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:13:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 18:13:04 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 18:13:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Nov 2018 18:13:07 GMT
EXPOSE 9000/tcp
# Fri, 16 Nov 2018 18:13:07 GMT
CMD ["php-fpm"]
# Sat, 17 Nov 2018 00:21:29 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 17 Nov 2018 00:23:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 00:24:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 00:24:03 GMT
VOLUME [/var/www/html]
# Sat, 08 Dec 2018 14:22:56 GMT
ENV WORDPRESS_VERSION=5.0
# Sat, 08 Dec 2018 14:22:57 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Sat, 08 Dec 2018 14:23:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 08 Dec 2018 14:23:05 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Sat, 08 Dec 2018 14:23:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 14:23:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177e9b2d5973e82fa764da6515f665b8ecc83702dfdb3491d59b97c2d1538b6a`  
		Last Modified: Sat, 15 Sep 2018 01:41:16 GMT  
		Size: 1.2 MB (1201244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a4bb7af219238a6e664c1d5ef1def4321454ee38795bade28ba20f938051ae`  
		Last Modified: Sat, 15 Sep 2018 01:41:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc759d47a6f74298f9e4b858152c8ae0fe9f4c91429f2b85a48a755a09119ba`  
		Last Modified: Sat, 15 Sep 2018 01:41:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e47e291e5d94843a76c9e4f09c3487ab9f1ec87fe3fc6d09a2055f26c42a1`  
		Last Modified: Fri, 16 Nov 2018 20:14:30 GMT  
		Size: 12.0 MB (12049839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f4c397b448290a1e2b5cec2e791e36a04c35b78b4ab157f8f7e7b54d92a219`  
		Last Modified: Fri, 16 Nov 2018 20:14:26 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b354b701bb94b9dc8ee24752a2a49e7f1b331afb98b61b2bd8d96813851038a7`  
		Last Modified: Fri, 16 Nov 2018 20:14:32 GMT  
		Size: 13.7 MB (13656642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c433bf71e9d40e2a4f0d233571a766ca6757c37e2bc14cad118529ef6e9258`  
		Last Modified: Fri, 16 Nov 2018 20:14:26 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ff222372417a1d307a81cf454b6bde86ab06f36609a4fac89483ed76951d51`  
		Last Modified: Fri, 16 Nov 2018 20:14:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ef96efe5099fd48bf404f39212c78a505f484f0de225f64f5b740e3b995a5`  
		Last Modified: Fri, 16 Nov 2018 20:14:26 GMT  
		Size: 7.7 KB (7748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27246172ea7cc1e5cede9347afb0b64e9fa304d52339d9189b5200edbc24fa47`  
		Last Modified: Sat, 17 Nov 2018 01:12:24 GMT  
		Size: 724.5 KB (724468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e849124affa25130845dcd3d1db00edada179a3d2eccd34e9ec646a1f1d4a036`  
		Last Modified: Sat, 17 Nov 2018 01:12:24 GMT  
		Size: 1.9 MB (1938138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9b453de1c5357c720cf981614948642ee295ab52aa66612097474cf137fec4`  
		Last Modified: Sat, 17 Nov 2018 01:12:24 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41a42d6f9a6f179b19320129b5ff581c95c11c73f387c3a3ed4159cb9f2347a`  
		Last Modified: Sat, 08 Dec 2018 14:33:47 GMT  
		Size: 10.4 MB (10367925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31c72e620355f62e10495910feb91c4270cc2078556d95d208fc08f1d58367f`  
		Last Modified: Sat, 08 Dec 2018 14:33:43 GMT  
		Size: 3.8 KB (3780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.0-fpm-alpine` - linux; 386

```console
$ docker pull wordpress@sha256:aab6f6b4506729fe1168ea67d18fed31abeaeb01da5e6dd719a148ba4976dcf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43990709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba7aac28cc7fa7ff29361d2eb7b43ea9a0dfca7b06494f97da89012993f7bf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 13:19:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 13:19:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 13:19:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 13:19:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 14:45:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 14:57:51 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 14:57:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:57:52 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Fri, 16 Nov 2018 23:45:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 23:45:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:54:20 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 23:54:21 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:54:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 23:54:21 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 23:54:22 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Nov 2018 23:54:23 GMT
EXPOSE 9000/tcp
# Fri, 16 Nov 2018 23:54:23 GMT
CMD ["php-fpm"]
# Sat, 17 Nov 2018 09:49:57 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 17 Nov 2018 09:51:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 09:51:38 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 09:51:38 GMT
VOLUME [/var/www/html]
# Sat, 08 Dec 2018 14:19:23 GMT
ENV WORDPRESS_VERSION=5.0
# Sat, 08 Dec 2018 14:19:24 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Sat, 08 Dec 2018 14:19:26 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 08 Dec 2018 14:19:27 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Sat, 08 Dec 2018 14:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 14:19:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e502b1ee09ccedac85066f7920c16408eb67c985ad3105e35ad62eff89ec1432`  
		Last Modified: Wed, 12 Sep 2018 15:38:25 GMT  
		Size: 1.4 MB (1354598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e82dd4c45e0d9802c4cfce783b30894adae2ec0f73a200c770aa970d0d69db`  
		Last Modified: Wed, 12 Sep 2018 15:38:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6413536fc860ffe5ae2f1ed1a95ec8aab5cb970d8a83014e65e9745b4af7632`  
		Last Modified: Wed, 12 Sep 2018 15:38:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fb2e1f14269f88b0da58d789d45581e59c1549e9a577fcd3d6f0bee240798`  
		Last Modified: Sat, 17 Nov 2018 02:39:53 GMT  
		Size: 12.0 MB (12049850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2e6a16ea6fd3454dc1bdad420a9e9c6e369ab4f740a4d7a95b729e2c570d22`  
		Last Modified: Sat, 17 Nov 2018 02:39:51 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a1addbaa055ff7b41bfaa1eff924b8c72989ee39f4bd19f1e4ca836aabd0ab`  
		Last Modified: Sat, 17 Nov 2018 02:39:57 GMT  
		Size: 15.1 MB (15141684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56931be904b92ef190108f3bd9273e07c80094afa68db27b6eaa7507d669e1bf`  
		Last Modified: Sat, 17 Nov 2018 02:39:50 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c923f35ceface60ba430be5e30fe3f87ac2a168108460cfb8ed7170de96ef77`  
		Last Modified: Sat, 17 Nov 2018 02:39:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0421ae4bf430b447f764f5c796aed8f31e2a21710824a94865a4b7d4ad9d9a`  
		Last Modified: Sat, 17 Nov 2018 02:39:50 GMT  
		Size: 7.7 KB (7748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e725c001c7324b4cfc247df51850c499e53be86e2527ce1f29c1d3c0b231695d`  
		Last Modified: Sat, 17 Nov 2018 10:34:27 GMT  
		Size: 811.7 KB (811749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438b6d4b1b302405c9f2de7a63112fdd6dbb75ac9fc8491f77274cd84eaf9abc`  
		Last Modified: Sat, 17 Nov 2018 10:34:28 GMT  
		Size: 2.1 MB (2079623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f186de9c637659cfda49567a71f516badde34e526efa5237108bf0e8ea3ca74`  
		Last Modified: Sat, 17 Nov 2018 10:34:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1303039339deb8f89121ce9100842ab062e0eb09c4b6b9de6133acf1912cfaa`  
		Last Modified: Sat, 08 Dec 2018 14:29:46 GMT  
		Size: 10.4 MB (10367926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc77ba075275c6a7ce0b53b78b0de2a103a3975de5b80ff15ed854af452ab991`  
		Last Modified: Sat, 08 Dec 2018 14:29:42 GMT  
		Size: 3.8 KB (3784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.0-fpm-alpine` - linux; ppc64le

```console
$ docker pull wordpress@sha256:1bcae1e34ec49b80d77cf91b60b9942664b2cf1c216aba151bf0060fbd949661
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42899723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8bf04aba3788a509e5a131753258bca09446077208591c3e8437bc50674fef1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:35:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 11:35:28 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 11:35:32 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 11:35:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 11:35:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 11:41:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 11:41:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 11:41:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 11:41:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 13:00:11 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 12:29:33 GMT
ENV PHP_VERSION=7.0.33
# Tue, 11 Dec 2018 12:29:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 12:29:35 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Tue, 11 Dec 2018 12:29:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 12:29:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:32:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 12:32:55 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 12:32:58 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 12:32:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 12:33:00 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 12:33:00 GMT
CMD ["php-fpm"]
# Tue, 11 Dec 2018 15:49:04 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 11 Dec 2018 15:50:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 11 Dec 2018 15:50:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 11 Dec 2018 15:50:35 GMT
VOLUME [/var/www/html]
# Tue, 11 Dec 2018 15:50:50 GMT
ENV WORDPRESS_VERSION=5.0
# Tue, 11 Dec 2018 15:50:52 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Tue, 11 Dec 2018 15:51:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 11 Dec 2018 15:51:09 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 15:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Dec 2018 15:51:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09e066bfe300a52383056af81ef9004054170d582c17a0772c5bb5f2c1d7a48`  
		Last Modified: Wed, 12 Sep 2018 14:09:25 GMT  
		Size: 1.2 MB (1243228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e506744f25586913ebc79535d99e234fa1408f95081404721087a6e631adfbd`  
		Last Modified: Wed, 12 Sep 2018 14:09:23 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83f71a595a75db9f5ee4fa90ef7540a9e375a9f0643e708bb7bf5b7e593fecf`  
		Last Modified: Wed, 12 Sep 2018 14:09:23 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b47401b45dbaacb56c990bb056bf07e6dea770e1ad8e9191a95393a2622f69`  
		Last Modified: Tue, 11 Dec 2018 14:03:17 GMT  
		Size: 12.1 MB (12052163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86bca0ec5edf122dbc9f5f3b9cde635a1b5449f4a9d8faae89f0153138afe82`  
		Last Modified: Tue, 11 Dec 2018 14:03:11 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7277aea3463ad558f65d1ed91022d7153cd56e241043e9fe3e28bc7d1501abb`  
		Last Modified: Tue, 11 Dec 2018 14:03:25 GMT  
		Size: 14.3 MB (14319272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91395ae291116987f4359fb1a34eaafa032612863e8dc5db9a8a83c0b7a7003e`  
		Last Modified: Tue, 11 Dec 2018 14:03:11 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da4399145d5bf4af3939540211ca6a49eb58ba0287302fa6df0d74a2fb30893`  
		Last Modified: Tue, 11 Dec 2018 14:03:11 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c82ec95be140cfc171c4352c66af83e9c2247622d0aedf9f407c5587642f990`  
		Last Modified: Tue, 11 Dec 2018 14:03:11 GMT  
		Size: 7.7 KB (7747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a42c1d91b1fc6e7ebb1f952c391591f82ef8b3ce9a09f83bcff66652453b0c`  
		Last Modified: Tue, 11 Dec 2018 16:41:40 GMT  
		Size: 789.2 KB (789241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a9d8964b3bf5fac55029b286a23531c081fa8a14a88621ca316783cb9d5038`  
		Last Modified: Tue, 11 Dec 2018 16:41:40 GMT  
		Size: 2.0 MB (2011728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8695a70027ea0888dae01641d45e2c4df220e2cb2bf9c0097c1be10669c7`  
		Last Modified: Tue, 11 Dec 2018 16:41:39 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880d274319ff2c7e2ce8733f3c13c3451062ba257c1f8812cf02b8f49a94d95`  
		Last Modified: Tue, 11 Dec 2018 16:41:50 GMT  
		Size: 10.4 MB (10367942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f757f9d2c27d6cb094a763f689ce9aa1fabcde4577789e32f7bda485f9a81d0`  
		Last Modified: Tue, 11 Dec 2018 16:41:39 GMT  
		Size: 3.8 KB (3778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
