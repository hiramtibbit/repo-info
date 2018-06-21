## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:32f3ae3dd873d261d226a4eaa183d87b4d78c8484c0e6e6a239dee4d4f7b18ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:f75b895dbbdb9223f250ad56557e62c670ae26f528fe83c2bc9d6ef6924e7994
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34712171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1942e4e2be5b1f7ac7fd0cdd81036431693324024ccfce75f7d776edc21636bd`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Mon, 18 Jun 2018 23:52:06 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 18 Jun 2018 23:52:06 GMT
ENV PHP_VERSION=7.2.6
# Mon, 18 Jun 2018 23:52:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Mon, 18 Jun 2018 23:52:07 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 20 Jun 2018 21:50:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 20 Jun 2018 21:50:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:53:25 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Jun 2018 21:53:25 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:53:26 GMT
RUN docker-php-ext-enable sodium
# Wed, 20 Jun 2018 21:53:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Jun 2018 21:53:27 GMT
WORKDIR /var/www/html
# Wed, 20 Jun 2018 21:53:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 20 Jun 2018 21:53:28 GMT
EXPOSE 9000/tcp
# Wed, 20 Jun 2018 21:53:28 GMT
CMD ["php-fpm"]
# Thu, 21 Jun 2018 01:14:28 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Thu, 21 Jun 2018 01:14:30 GMT
RUN apk add --no-cache libpq
# Thu, 21 Jun 2018 01:14:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Thu, 21 Jun 2018 01:14:58 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Thu, 21 Jun 2018 01:14:58 GMT
ENV ADMINER_VERSION=4.6.2
# Thu, 21 Jun 2018 01:14:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=2b3e5e87ed1214288378fc272c1ba0497ec2f1128444e3a581eabd435f5575b9
# Thu, 21 Jun 2018 01:14:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Thu, 21 Jun 2018 01:15:01 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Thu, 21 Jun 2018 01:15:02 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Thu, 21 Jun 2018 01:15:02 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 21 Jun 2018 01:15:02 GMT
USER [adminer]
# Thu, 21 Jun 2018 01:15:02 GMT
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
	-	`sha256:3297115ec2394e1b23e974779c315c1db08459100070052d487c4b669a46b139`  
		Last Modified: Thu, 21 Jun 2018 00:22:14 GMT  
		Size: 12.1 MB (12132319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9fef0dc4b5b196892c4afdfcf991e063e3767f07db3bb46f459aae61c03e84`  
		Last Modified: Thu, 21 Jun 2018 00:22:13 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150955d70ce4610f836681685c355368c8d5f2c9dfe6174c8124707dc40bfc8f`  
		Last Modified: Thu, 21 Jun 2018 00:22:17 GMT  
		Size: 17.3 MB (17276099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c28392cdaceb6dec7183cf1b4e01abf286ea438332131d32616b8cd810976b2`  
		Last Modified: Thu, 21 Jun 2018 00:22:10 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f06b93505df55cca4598e755611ea084b70e56e3190daa39af16f1542341dc4`  
		Last Modified: Thu, 21 Jun 2018 00:22:10 GMT  
		Size: 71.0 KB (71017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0808c5c66c5dd8e70409bfd80c3c70d34693137e21b621f8cbc3ee277eb34a`  
		Last Modified: Thu, 21 Jun 2018 00:22:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5694a182d3fc052a22a3f344b9be5c30b8186955770a4f991dc16f6fe7432ec7`  
		Last Modified: Thu, 21 Jun 2018 00:22:10 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f215c6331e24a49a1a6fe4cf68923308fc590f4ec17cc08c0125aa48c95140`  
		Last Modified: Thu, 21 Jun 2018 01:16:43 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da7da9d023a4a36a6bda103f3580f8a17d03e33129d3597c74e3c609b7bb09d`  
		Last Modified: Thu, 21 Jun 2018 01:16:40 GMT  
		Size: 1.3 MB (1257085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c82ee5605f4f52d2db68539829ee9b2338ecbe31707411b334f1ea9f9a13be`  
		Last Modified: Thu, 21 Jun 2018 01:16:40 GMT  
		Size: 123.1 KB (123096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997b5c0fb58456979fcdf9c791ee3f068e06e1d3cfdf6a529e2f389073108309`  
		Last Modified: Thu, 21 Jun 2018 01:16:40 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfd7af7728a875eab5609a9760f101383e58768a184aba68fb942a135b0af28`  
		Last Modified: Thu, 21 Jun 2018 01:16:40 GMT  
		Size: 503.0 KB (502980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ec38f779ab9473a7a81301620f386ef19b85332dfdfb30e3462d05f49c3e32`  
		Last Modified: Thu, 21 Jun 2018 01:16:39 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:529c261d5d9ff84776cbfd1a395287c841e2caa49dd7130e7d8d2f61675d4157
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33453793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201c088f1970f445bcfe984fd2e8dea881c6e7728a028e1cc90a6eb074ed2fd6`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Tue, 19 Jun 2018 09:30:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 19 Jun 2018 09:30:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Jun 2018 09:30:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Jun 2018 09:30:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Jun 2018 09:30:59 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 19 Jun 2018 09:31:00 GMT
ENV PHP_VERSION=7.2.6
# Tue, 19 Jun 2018 09:31:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Tue, 19 Jun 2018 09:31:01 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Tue, 19 Jun 2018 09:31:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 19 Jun 2018 09:31:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Jun 2018 09:39:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Jun 2018 09:39:35 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 19 Jun 2018 09:39:38 GMT
RUN docker-php-ext-enable sodium
# Tue, 19 Jun 2018 09:39:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Jun 2018 09:39:39 GMT
WORKDIR /var/www/html
# Tue, 19 Jun 2018 09:39:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 19 Jun 2018 09:39:42 GMT
EXPOSE 9000/tcp
# Tue, 19 Jun 2018 09:39:43 GMT
CMD ["php-fpm"]
# Tue, 19 Jun 2018 15:25:24 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 19 Jun 2018 15:25:26 GMT
RUN apk add --no-cache libpq
# Tue, 19 Jun 2018 15:25:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 19 Jun 2018 15:26:01 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Tue, 19 Jun 2018 15:26:02 GMT
ENV ADMINER_VERSION=4.6.2
# Tue, 19 Jun 2018 15:26:02 GMT
ENV ADMINER_DOWNLOAD_SHA256=2b3e5e87ed1214288378fc272c1ba0497ec2f1128444e3a581eabd435f5575b9
# Tue, 19 Jun 2018 15:26:03 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Tue, 19 Jun 2018 15:26:07 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 19 Jun 2018 15:26:08 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 19 Jun 2018 15:26:09 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 19 Jun 2018 15:26:10 GMT
USER [adminer]
# Tue, 19 Jun 2018 15:26:11 GMT
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
	-	`sha256:e99741c46a25e411f4d42cd23b43840124ced113fa4d5867d8cf4393a413bb0c`  
		Last Modified: Tue, 19 Jun 2018 14:37:08 GMT  
		Size: 12.1 MB (12132261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e896c24d896af5f817cfca5f3c4d236d404883a879ac9869d1ff4bb5edf654fe`  
		Last Modified: Tue, 19 Jun 2018 14:37:05 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22030ecf2f67a923d4e10be0d084b6cbe48d538d333fe1a9d55e262323a2c44e`  
		Last Modified: Tue, 19 Jun 2018 14:37:09 GMT  
		Size: 16.2 MB (16224943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d806df4a7b134a359521277dc58ed139ddbb7ed232d190976b05c888a7ef198`  
		Last Modified: Tue, 19 Jun 2018 14:37:02 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6310406a8af8f0c0894cee50d823783412087048f1ee9c8ac1d95aa9f070c08e`  
		Last Modified: Tue, 19 Jun 2018 14:37:02 GMT  
		Size: 69.9 KB (69873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d316b4e30cd3312d9d49c42d7b01a4c31d06d83d007abff955e1ac5004ecb5da`  
		Last Modified: Tue, 19 Jun 2018 14:37:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6689b5e5de052d7506db9ee778def5b68d87d6d167c57417022fe21eff252f`  
		Last Modified: Tue, 19 Jun 2018 14:37:02 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899eb61182033f2c12f72b010eb47f855d498ada9a5d7a2b74e8744d954fb177`  
		Last Modified: Tue, 19 Jun 2018 15:27:45 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb5cf02cb2a0190d20324189c8a08840eef6b95ee09a1bc85235868837a288c`  
		Last Modified: Tue, 19 Jun 2018 15:27:44 GMT  
		Size: 1.2 MB (1188238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cb98cd8b659d93614e622007ec7fa66fb529b655ea9db5cb5d3f0e26d2b05a`  
		Last Modified: Tue, 19 Jun 2018 15:27:43 GMT  
		Size: 117.1 KB (117083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca29106c848aa39defa9cf9ed426aa194325510ccc035a0c8da8d347331cd0f3`  
		Last Modified: Tue, 19 Jun 2018 15:27:44 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12efd8e688e51183353ea5d8bcd12525a01d6099006ec183c65ef696255b034f`  
		Last Modified: Tue, 19 Jun 2018 15:27:43 GMT  
		Size: 503.0 KB (502979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc17a98c1cadca0d7e276068e97e66f67c1a1c9bc696217f3d8ce7b61606a52`  
		Last Modified: Tue, 19 Jun 2018 15:27:44 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:119ac8ade1612128ddebf25a6401da58c0ff7cf80c65722a1deed901498480b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35503994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6334022f3ec9f3515ebe7620fc6ab54f4e500c8e973b13143d2524c3e04b7d4`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Tue, 19 Jun 2018 11:07:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 19 Jun 2018 11:07:58 GMT
ENV PHP_VERSION=7.2.6
# Tue, 19 Jun 2018 11:07:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Tue, 19 Jun 2018 11:07:58 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Tue, 19 Jun 2018 11:08:22 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 19 Jun 2018 11:08:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:11:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Jun 2018 11:11:46 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:11:47 GMT
RUN docker-php-ext-enable sodium
# Tue, 19 Jun 2018 11:11:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Jun 2018 11:11:47 GMT
WORKDIR /var/www/html
# Tue, 19 Jun 2018 11:11:48 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 19 Jun 2018 11:11:48 GMT
EXPOSE 9000/tcp
# Tue, 19 Jun 2018 11:11:48 GMT
CMD ["php-fpm"]
# Tue, 19 Jun 2018 15:01:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 19 Jun 2018 15:01:16 GMT
RUN apk add --no-cache libpq
# Tue, 19 Jun 2018 15:01:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 19 Jun 2018 15:01:44 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Tue, 19 Jun 2018 15:01:44 GMT
ENV ADMINER_VERSION=4.6.2
# Tue, 19 Jun 2018 15:01:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=2b3e5e87ed1214288378fc272c1ba0497ec2f1128444e3a581eabd435f5575b9
# Tue, 19 Jun 2018 15:01:44 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Tue, 19 Jun 2018 15:01:48 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 19 Jun 2018 15:01:48 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 19 Jun 2018 15:01:48 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 19 Jun 2018 15:01:49 GMT
USER [adminer]
# Tue, 19 Jun 2018 15:01:49 GMT
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
	-	`sha256:ce31bdf667f7c274adb464a43fdf26ea1d1c75f8cc81f18691569dce0382854f`  
		Last Modified: Tue, 19 Jun 2018 14:07:25 GMT  
		Size: 12.1 MB (12132313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867ae372041efd6b2609e64d659f59d5d6d124468ef57e244cd42a5f25abf6d5`  
		Last Modified: Tue, 19 Jun 2018 14:07:20 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed7e84643eedd7308d4b4f3fac09a4fa6333d4b90875bcc419e3b2fd35ba953`  
		Last Modified: Tue, 19 Jun 2018 14:07:28 GMT  
		Size: 17.8 MB (17783719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea63f25b004c34cec28af48d319cf8df092585481e18a1fe1987d729bc717c`  
		Last Modified: Tue, 19 Jun 2018 14:07:19 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb81bdc91c84633c4573264fe62619c8f7def0b9fd15a48f697b8790d6be2b5`  
		Last Modified: Tue, 19 Jun 2018 14:07:17 GMT  
		Size: 70.1 KB (70095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb45278f1a16d34018ca1f053cad8f808b67bb0783b7ec69fd7146ecd7fd07ee`  
		Last Modified: Tue, 19 Jun 2018 14:07:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc21d165ccabf1cdfc733d09657f254752338939b737a52a13dd46b30146c6a9`  
		Last Modified: Tue, 19 Jun 2018 14:07:18 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb9e8c30943708de8e7d0b0a224a57a8ae7c52cbaaa89823347ce470f063846`  
		Last Modified: Tue, 19 Jun 2018 15:03:34 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0d11e8a477d49e90f4e824adda6be21a95c430c0d4708c3ad11f5ee507912`  
		Last Modified: Tue, 19 Jun 2018 15:03:35 GMT  
		Size: 1.4 MB (1378022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4231987ceab0b8bb865905cbf8b8554848f258383c506755cc2fb87fa95d53a9`  
		Last Modified: Tue, 19 Jun 2018 15:03:32 GMT  
		Size: 126.5 KB (126454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc045877920f2ea7ac275d7f49a02cc68fdbb7241d86d05a68d5c00c0567d9b`  
		Last Modified: Tue, 19 Jun 2018 15:03:32 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4610bf566b46f9421c25f2091710090f2979ca26e92877c6bc717b1f2eabf69`  
		Last Modified: Tue, 19 Jun 2018 15:03:32 GMT  
		Size: 503.0 KB (502973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc989c20569298fbc10c929c68e8cbcac21119ef581e2342251ce09cc22be931`  
		Last Modified: Tue, 19 Jun 2018 15:03:32 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:6e712ac6202ccbc4bdddc98969d70c85189b27b890c2f5f920d3a706416a58b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34543382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9d963dfbb60acc65f253954cfa8e023416a9f7f9d03b9e63b4bcbed89eb1ad`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Tue, 19 Jun 2018 08:55:40 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 19 Jun 2018 08:55:40 GMT
ENV PHP_VERSION=7.2.6
# Tue, 19 Jun 2018 08:55:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Tue, 19 Jun 2018 08:55:41 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Thu, 21 Jun 2018 08:54:24 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 08:54:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 08:58:15 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 08:58:20 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 21 Jun 2018 08:58:28 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Jun 2018 08:58:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 08:58:31 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 08:58:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Jun 2018 08:58:35 GMT
EXPOSE 9000/tcp
# Thu, 21 Jun 2018 08:58:37 GMT
CMD ["php-fpm"]
# Thu, 21 Jun 2018 13:00:48 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Thu, 21 Jun 2018 13:00:51 GMT
RUN apk add --no-cache libpq
# Thu, 21 Jun 2018 13:01:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Thu, 21 Jun 2018 13:01:17 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Thu, 21 Jun 2018 13:01:18 GMT
ENV ADMINER_VERSION=4.6.2
# Thu, 21 Jun 2018 13:01:18 GMT
ENV ADMINER_DOWNLOAD_SHA256=2b3e5e87ed1214288378fc272c1ba0497ec2f1128444e3a581eabd435f5575b9
# Thu, 21 Jun 2018 13:01:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Thu, 21 Jun 2018 13:01:24 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Thu, 21 Jun 2018 13:01:26 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Thu, 21 Jun 2018 13:01:27 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 21 Jun 2018 13:01:29 GMT
USER [adminer]
# Thu, 21 Jun 2018 13:01:30 GMT
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
	-	`sha256:94fdf62d4173f481b9d61b4695eaab79bb7f2ea2337bd60a192b12737e593fa8`  
		Last Modified: Thu, 21 Jun 2018 12:14:54 GMT  
		Size: 12.1 MB (12132318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca76bcf1da603acb2181c91d27f0e8c5bb5578a90a62550412a441c5b4f4cc6`  
		Last Modified: Thu, 21 Jun 2018 12:14:55 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f874da47112dd845217e660d2bc0dd24c5f919d7817f37b5dbfcfec9cc5a7c5`  
		Last Modified: Thu, 21 Jun 2018 12:15:01 GMT  
		Size: 17.1 MB (17110416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a8dcc9af6933e2b61b72372d006967e2965ac9e5006a388b7db30b7ebfa483`  
		Last Modified: Thu, 21 Jun 2018 12:14:49 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28b5e92fa7d8a3c14e7b0db8f1cd65d3e0fe705f59f96a37358b71ec6590c79`  
		Last Modified: Thu, 21 Jun 2018 12:14:51 GMT  
		Size: 70.9 KB (70867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b99a477a5dbaa4e2a75190e13f0e810a582d712ab434f784c1757c01cc4e43e`  
		Last Modified: Thu, 21 Jun 2018 12:14:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6a3e56f415bc7231b2a5fa7a0c788b8f4de126ea64e00c1e198d94065e64ac`  
		Last Modified: Thu, 21 Jun 2018 12:14:50 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd4b241885b7497b4ae0a70ac122dcc201106b32e9dbf756f725e704e3f6c2d`  
		Last Modified: Thu, 21 Jun 2018 13:03:04 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5d470f3ea48a6470ccdcf5462b9d2815ae78a3094587a35ca11b116f87ccf8`  
		Last Modified: Thu, 21 Jun 2018 13:03:02 GMT  
		Size: 1.2 MB (1248773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f158b8bc0efad1be4afe0ec16d6e4002a9aa72a8edc2b1ecc1bc543900e90506`  
		Last Modified: Thu, 21 Jun 2018 13:03:01 GMT  
		Size: 124.4 KB (124388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55422871890f8e93a996ec2ad19c300b133274364e358de0dd5eb662693e0819`  
		Last Modified: Thu, 21 Jun 2018 13:03:01 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e3158b128642639053e938159f773e87ed62f44b83fabfdf8895c9dd37ad2d`  
		Last Modified: Thu, 21 Jun 2018 13:03:02 GMT  
		Size: 503.1 KB (503066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1671dd4476d9a7ef3a25b6daa1aa947fd5da498625472c1b32680886b501be3e`  
		Last Modified: Thu, 21 Jun 2018 13:03:01 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
