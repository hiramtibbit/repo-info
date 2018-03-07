## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:41f2666a537273fa7acea37217b6d4f4f3aa6da9de46abc5bba6a0fa5a1db523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:7ca55570d3b2d0855addb7b9ee8348f55b929d4c7934d951a2d59b64f8031b9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33224718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb93b2ec07fd4719c6ec96879fdc3fefaeeae7cd5a94c09f13e64338e08e286`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Mon, 05 Mar 2018 21:56:44 GMT
ENV PHP_VERSION=7.2.3
# Mon, 05 Mar 2018 21:56:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.3.tar.xz.asc/from/this/mirror
# Mon, 05 Mar 2018 21:56:45 GMT
ENV PHP_SHA256=b3a94f1b562f413c0b96f54bc309706d83b29ac65d9b172bc7ed9fb40a5e651f PHP_MD5=
# Mon, 05 Mar 2018 21:57:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 05 Mar 2018 21:57:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:02:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 05 Mar 2018 22:02:13 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:02:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 05 Mar 2018 22:02:13 GMT
WORKDIR /var/www/html
# Mon, 05 Mar 2018 22:02:14 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 05 Mar 2018 22:02:14 GMT
EXPOSE 9000/tcp
# Mon, 05 Mar 2018 22:02:14 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 07:46:45 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 06 Mar 2018 07:46:48 GMT
RUN apk add --no-cache libpq
# Tue, 06 Mar 2018 07:47:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 06 Mar 2018 07:47:08 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Tue, 06 Mar 2018 07:47:08 GMT
ENV ADMINER_VERSION=4.6.2
# Tue, 06 Mar 2018 07:47:08 GMT
ENV ADMINER_DOWNLOAD_SHA256=4b8e0d184a1f0c5ec2c077fd20a06d3e27877d8a63fd4f75aaf92abb103ff458
# Tue, 06 Mar 2018 07:47:09 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Tue, 06 Mar 2018 07:47:11 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 06 Mar 2018 07:47:12 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 06 Mar 2018 07:47:12 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 06 Mar 2018 07:47:12 GMT
USER [adminer]
# Tue, 06 Mar 2018 07:47:12 GMT
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
	-	`sha256:f978da2891577d6ee5c480c2172c9fbe42bb06ead480f5eabf72f8eb7000eabe`  
		Last Modified: Tue, 06 Mar 2018 00:09:39 GMT  
		Size: 12.1 MB (12117647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975625384bdbc62b6dbabe858ff1ba3329545b047b01460ea9403012f4c2876c`  
		Last Modified: Tue, 06 Mar 2018 00:09:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb94f3f2333ee0abe22af2ba8dcf9d2f280d7bb28f48488fd2117b2b886e3898`  
		Last Modified: Tue, 06 Mar 2018 00:09:41 GMT  
		Size: 16.0 MB (16023849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a21d482931cb62767af36d9927cf6cba3f5dce6821967198e122e88c2c9f1c`  
		Last Modified: Tue, 06 Mar 2018 00:09:36 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0ba9357d87e8855bdd405547ef29103cc85cb078cc95e8488b25ae7c4b9d6`  
		Last Modified: Tue, 06 Mar 2018 00:09:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4cc64f1c301a2ff73d05d11db1f97c2135d2d5a69347ed782e5f3d8a1bfa7`  
		Last Modified: Tue, 06 Mar 2018 00:09:36 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06719dbfb04369e6af2546b4b78892fb0c40f0216bc857d2865aeeffc75812ef`  
		Last Modified: Tue, 06 Mar 2018 07:49:55 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec9b58adfa5c12c4b54e4ec151c7e56e83ab7c26c3d8b47efd765df68f32a8a`  
		Last Modified: Tue, 06 Mar 2018 07:49:53 GMT  
		Size: 1.2 MB (1209137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204784a679040a405b248931b7d3716f345e5943d80a07ed1ed8637c94b636ad`  
		Last Modified: Tue, 06 Mar 2018 07:49:52 GMT  
		Size: 120.5 KB (120457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8ea0c1dbb195ed0542ec73290bd88c69708496b6beb8d6a0ec979bf1ff0c76`  
		Last Modified: Tue, 06 Mar 2018 07:49:52 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e1faa350b46bd0c848b5b6f462a204790e3fed619933081dbf50113cb64d19`  
		Last Modified: Tue, 06 Mar 2018 07:49:52 GMT  
		Size: 360.1 KB (360056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9842bfaf0e11bec70a505e68d302126380fe7bec15df9116865e73148573ac`  
		Last Modified: Tue, 06 Mar 2018 07:49:53 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:11eb267fa5a6dff443a75d47b7caa5d20e943136e89940d252c7f57ee02b47d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32990260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af917598237a853d7ea9b048df248068ac8c6989d1a75576d15598d1c015d5a9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Wed, 07 Feb 2018 03:44:31 GMT
ENV PHP_VERSION=7.2.2
# Wed, 07 Feb 2018 03:44:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.2.tar.xz.asc/from/this/mirror
# Wed, 07 Feb 2018 03:44:33 GMT
ENV PHP_SHA256=47d7607d38a1d565fc43ea942c92229a7cd165f156737f210937e375b243cb11 PHP_MD5=
# Wed, 07 Feb 2018 03:44:45 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 07 Feb 2018 03:44:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 07 Feb 2018 03:51:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 07 Feb 2018 03:52:00 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Wed, 07 Feb 2018 03:52:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 07 Feb 2018 03:52:01 GMT
WORKDIR /var/www/html
# Wed, 07 Feb 2018 03:52:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Feb 2018 03:52:03 GMT
EXPOSE 9000/tcp
# Wed, 07 Feb 2018 03:52:04 GMT
CMD ["php-fpm"]
# Wed, 07 Feb 2018 05:41:21 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 07 Feb 2018 05:41:25 GMT
RUN apk add --no-cache libpq
# Wed, 07 Feb 2018 05:42:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 07 Feb 2018 05:42:04 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Wed, 21 Feb 2018 10:11:28 GMT
ENV ADMINER_VERSION=4.6.2
# Wed, 21 Feb 2018 10:11:28 GMT
ENV ADMINER_DOWNLOAD_SHA256=4b8e0d184a1f0c5ec2c077fd20a06d3e27877d8a63fd4f75aaf92abb103ff458
# Wed, 21 Feb 2018 10:11:29 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Wed, 21 Feb 2018 10:11:32 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 21 Feb 2018 10:11:33 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Wed, 21 Feb 2018 10:11:33 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 21 Feb 2018 10:11:34 GMT
USER [adminer]
# Wed, 21 Feb 2018 10:11:35 GMT
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
	-	`sha256:f2c0a418c2cd24913fb3e1fe7827454782ef7be5065233229e812549211c79e7`  
		Last Modified: Wed, 07 Feb 2018 04:39:09 GMT  
		Size: 12.0 MB (12041972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcded2e3350e78e922dc1ec26adaf325a45324124f81598a390ae9eaaf4644b`  
		Last Modified: Wed, 07 Feb 2018 04:39:05 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2789da37f42f66f36250d9bf12ae8b5ed6f3991406768c347b78ae9b3cd9e909`  
		Last Modified: Wed, 07 Feb 2018 04:39:12 GMT  
		Size: 16.1 MB (16057440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b90a93d2579de08fb98885ade360daf84832da100ff766c87a7ff2113b6155`  
		Last Modified: Wed, 07 Feb 2018 04:39:05 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272e74875a11974dd768792dfadee4fd5f0d8ea7fd5d0a6117df3b207003d830`  
		Last Modified: Wed, 07 Feb 2018 04:39:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d660b570ff11af25209dfbbca5670b532128e69575c1eb097d9db582ecad0d`  
		Last Modified: Wed, 07 Feb 2018 04:39:06 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fdacc85bdec1ddb818bba36194d0afea041da5528b1f28a79bb1eaa72e77d1`  
		Last Modified: Wed, 07 Feb 2018 05:44:29 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420bf01821b8a038806e91594fdf1cfe3480f3b9a70658d09ed3dcbec41f1676`  
		Last Modified: Wed, 07 Feb 2018 05:44:27 GMT  
		Size: 1.1 MB (1144357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6607163228bdea7911d3a5c6f2fd4bc00faa37beb06226468df41e275aeb3060`  
		Last Modified: Wed, 07 Feb 2018 05:44:26 GMT  
		Size: 117.6 KB (117560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbea50061ea96ae50510d8f08f9a33cd5933cd557976ca03d54aed327a75aed`  
		Last Modified: Wed, 07 Feb 2018 05:44:26 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636bb7393d9e50072e0d0680e4b58a82971bc731b504d74ccd0ba05a6ea8f6ce`  
		Last Modified: Wed, 21 Feb 2018 10:13:55 GMT  
		Size: 360.1 KB (360053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a347ac422aa5308f3bf1df105b5ebbe220e946000bf8f65c22adc214b0d509a`  
		Last Modified: Wed, 21 Feb 2018 10:13:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:c562274c5f0969640b651192b59e8acaaf5893ed05977bbddf1d132ee61ddd93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35310325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6dc43d89a9ee060e20f6bd5d329352da4ed945b4880576df06d0289cb4b51fa`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Tue, 06 Mar 2018 12:54:48 GMT
ENV PHP_VERSION=7.2.3
# Tue, 06 Mar 2018 12:54:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.3.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 12:54:48 GMT
ENV PHP_SHA256=b3a94f1b562f413c0b96f54bc309706d83b29ac65d9b172bc7ed9fb40a5e651f PHP_MD5=
# Tue, 06 Mar 2018 13:03:04 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 06 Mar 2018 13:03:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:08:04 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 13:08:06 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:08:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 13:08:06 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 13:08:07 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 13:08:07 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 13:08:08 GMT
CMD ["php-fpm"]
# Wed, 07 Mar 2018 15:13:54 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 07 Mar 2018 15:14:32 GMT
RUN apk add --no-cache libpq
# Wed, 07 Mar 2018 15:15:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 07 Mar 2018 15:15:01 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Wed, 07 Mar 2018 15:15:02 GMT
ENV ADMINER_VERSION=4.6.2
# Wed, 07 Mar 2018 15:15:02 GMT
ENV ADMINER_DOWNLOAD_SHA256=4b8e0d184a1f0c5ec2c077fd20a06d3e27877d8a63fd4f75aaf92abb103ff458
# Wed, 07 Mar 2018 15:15:02 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Wed, 07 Mar 2018 15:15:05 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 07 Mar 2018 15:15:05 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Wed, 07 Mar 2018 15:15:06 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 07 Mar 2018 15:15:06 GMT
USER [adminer]
# Wed, 07 Mar 2018 15:15:06 GMT
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
	-	`sha256:c4ac5e095a102b9663ee095ee0c0c24613e362d71e338bf275955fc40231a100`  
		Last Modified: Tue, 06 Mar 2018 20:10:35 GMT  
		Size: 12.1 MB (12118048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf06dfe9a28cef558518e7062798cb32332298aa887ef668965df1543fec70e`  
		Last Modified: Tue, 06 Mar 2018 20:10:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31db2c7997613dce67b51c61ae3a5d76f6e2fdb97a78d3cae9a81bcb9290616`  
		Last Modified: Tue, 06 Mar 2018 20:10:43 GMT  
		Size: 17.8 MB (17835173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f661244719de376b706e790aa3eed48564f25a4d8d8508c3fb4bc15cf33f9e2`  
		Last Modified: Tue, 06 Mar 2018 20:10:34 GMT  
		Size: 2.2 KB (2164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa5ec3856935eef363c8d8b8a89fa707e580a69446ce70ecfbaaf67d8feb129`  
		Last Modified: Tue, 06 Mar 2018 20:10:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b4acf6803a21cacbd0dd087928823c3e0cbc95542a33c242ec5066a8592b60`  
		Last Modified: Tue, 06 Mar 2018 20:10:34 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64280ea7102a8a14c514380e51d8c285fb68e4ee1c8088740f070a4ddb2ea168`  
		Last Modified: Wed, 07 Mar 2018 16:06:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52985121e913824dbe242c7c24673e67cc07829df2a5d7e159c40495ec48eee6`  
		Last Modified: Wed, 07 Mar 2018 16:06:15 GMT  
		Size: 1.3 MB (1329898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371e181780fd61294edef10258b17502ad8d76a292eb8e53ff56c767055b2eb8`  
		Last Modified: Wed, 07 Mar 2018 16:06:15 GMT  
		Size: 124.4 KB (124355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433823f2469f85bcab50b4a7150bb5bb7e6663e9b8a5116d1b5b9591f5dd4d56`  
		Last Modified: Wed, 07 Mar 2018 16:06:14 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0630c58cbaee5042307946447ccc39b2182bb3532fc61c88cca51416b3fa1`  
		Last Modified: Wed, 07 Mar 2018 16:06:15 GMT  
		Size: 360.1 KB (360050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f08778443fd6441057e9c39ad691aba1a8d573c31a0a0df9622f5a6cb1ae571`  
		Last Modified: Wed, 07 Mar 2018 16:06:15 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:7797518d87433161bd9972e9d1ac69bed484e75f974d6c3070e252400af22f99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34153524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad8b50c9427538c03957a9ea501391b5e7e0aa8d64ed55acc39b576352975905`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Tue, 06 Mar 2018 10:32:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 10:32:35 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 10:32:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 10:32:38 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 10:32:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 10:32:42 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 10:32:43 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 12:38:57 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 06 Mar 2018 12:39:03 GMT
RUN apk add --no-cache libpq
# Tue, 06 Mar 2018 12:39:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 06 Mar 2018 12:39:54 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Tue, 06 Mar 2018 12:39:55 GMT
ENV ADMINER_VERSION=4.6.2
# Tue, 06 Mar 2018 12:39:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=4b8e0d184a1f0c5ec2c077fd20a06d3e27877d8a63fd4f75aaf92abb103ff458
# Tue, 06 Mar 2018 12:39:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=13f26a5aeed2f734d9309a922592f2e2b35ba2ea5c1c2a2c8402ca26a8808682
# Tue, 06 Mar 2018 12:40:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 06 Mar 2018 12:40:08 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 06 Mar 2018 12:40:09 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 06 Mar 2018 12:40:11 GMT
USER [adminer]
# Tue, 06 Mar 2018 12:40:12 GMT
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
	-	`sha256:fb7f13003df32237a97911f170f0ad3be0c836c5464aa7bbb6007a18dc91716e`  
		Last Modified: Tue, 06 Mar 2018 11:47:09 GMT  
		Size: 16.9 MB (16944494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2481d8bcd8a7274558b56b17dc3efe18762c5196f0d4c77724ea5f8d4f72c581`  
		Last Modified: Tue, 06 Mar 2018 11:47:08 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96dab62255db7db7347af24f75e6b27e50cbbc9ddf47ceef3d2d59b94175625`  
		Last Modified: Tue, 06 Mar 2018 11:47:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1850e0238f9081faeca34ffdfab90b0fb57e5227b025375ce132dabde6607a21`  
		Last Modified: Tue, 06 Mar 2018 11:47:04 GMT  
		Size: 7.7 KB (7694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b1bdef14d9d3fb7c4bdc1d14b43bc446edd0a1cb92a0d2f14f31b2eb20db70`  
		Last Modified: Tue, 06 Mar 2018 12:41:25 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb06c8326aa04a0282242f2c8dc8ed8de7f7dc20ef483f6cd69f2f2276028b9`  
		Last Modified: Tue, 06 Mar 2018 12:41:23 GMT  
		Size: 1.2 MB (1201979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a927502b913b602d34d3994e8b707be5d173f751f8f0d75a007e2e1044053090`  
		Last Modified: Tue, 06 Mar 2018 12:41:22 GMT  
		Size: 124.8 KB (124760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41de3796a89fe612980adfd62d51da031b42f04274b7abd566b3ac8a2b8fb31`  
		Last Modified: Tue, 06 Mar 2018 12:41:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fa965c35204d309ebd4db2a3430f305f93168def641d98b27296356915ad53`  
		Last Modified: Tue, 06 Mar 2018 12:41:23 GMT  
		Size: 360.1 KB (360116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54789003dd3feb7d20e463a789442f816b39d8254e2cdeb27835c64608c331b0`  
		Last Modified: Tue, 06 Mar 2018 12:41:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
