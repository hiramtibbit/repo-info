## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:a029b0171bf30345fdc6aa383aed55ecc5869f40da33c8f6de8fe540ed30d504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:6b63e569313c1cb260f994bd04cc1705363194517b4244635bd021274d8ae9d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33560113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c0cb0f81500892eed29c3c8306b2f562f9fb767bcaa2b1c0134970bb35ccc6b`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:27:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 01:27:06 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 01:27:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 01:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 01:27:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 02:14:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 21 Dec 2018 02:14:18 GMT
ENV PHP_VERSION=7.2.13
# Fri, 21 Dec 2018 02:14:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Fri, 21 Dec 2018 02:14:19 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Fri, 21 Dec 2018 02:14:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 21 Dec 2018 02:14:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 21 Dec 2018 02:26:15 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 21 Dec 2018 02:26:16 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 21 Dec 2018 02:26:18 GMT
RUN docker-php-ext-enable sodium
# Fri, 21 Dec 2018 02:26:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 21 Dec 2018 02:26:18 GMT
WORKDIR /var/www/html
# Fri, 21 Dec 2018 02:26:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Dec 2018 02:26:20 GMT
EXPOSE 9000
# Fri, 21 Dec 2018 02:26:20 GMT
CMD ["php-fpm"]
# Fri, 21 Dec 2018 06:20:16 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 21 Dec 2018 06:20:17 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 21 Dec 2018 06:20:18 GMT
RUN apk add --no-cache libpq
# Fri, 21 Dec 2018 06:20:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 21 Dec 2018 06:20:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 21 Dec 2018 06:20:37 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 21 Dec 2018 06:20:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 21 Dec 2018 06:20:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 21 Dec 2018 06:20:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 21 Dec 2018 06:20:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 21 Dec 2018 06:20:39 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 21 Dec 2018 06:20:39 GMT
USER adminer
# Fri, 21 Dec 2018 06:20:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207535cd57f878f70cace5fa6b787bea470b519e83a0ad0d8b65fab8c3c4e6d`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.4 MB (1353714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1167ab95319c6a4c7a06ffb91e63738c89f46e9005296b25e2f2ea414b102a16`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff34bff7f50ba85c4ee1c081add1128c1e00de9eb29733452f99cd0508cd0e0`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39491f92b47ecb1388be27836711c4ae440bfe69e65fd6bbade5430eb326438b`  
		Last Modified: Fri, 21 Dec 2018 03:58:56 GMT  
		Size: 12.1 MB (12136041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc8b2a4aa78cd53bee59fa422284bedf8e81243892f6778d3dea6796495ee00`  
		Last Modified: Fri, 21 Dec 2018 03:58:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf34b9a7120ac2fc85c03eab28a3085f70477fd2fa0ea088100452c87197bb2`  
		Last Modified: Fri, 21 Dec 2018 03:58:59 GMT  
		Size: 15.8 MB (15848812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaf85939116cb79454e4a6a211af989dd253b709bddd0b51c2b7744173b9847`  
		Last Modified: Fri, 21 Dec 2018 03:58:54 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97922d1e5c1393f6ef172cc5424fb6e0fa8573d89f4922b756d9466a0192abbf`  
		Last Modified: Fri, 21 Dec 2018 03:58:54 GMT  
		Size: 71.8 KB (71846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d80873bfa59645f1b95c92c7991acac73a858cc845c997296ff559c947d163c`  
		Last Modified: Fri, 21 Dec 2018 03:58:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55a0c24ee515fbd051efb086707a170efc96cd14b7084777471d0f08e22989c`  
		Last Modified: Fri, 21 Dec 2018 03:58:54 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd0fc8b5b8b871fd0c6e06c18aaf3a93a96a8435d1622f4f7e86442b996111f`  
		Last Modified: Fri, 21 Dec 2018 06:21:07 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8443ba8ff2e9953fdc85fa7ba0862513744706c9f22eb883e0ef8679244660`  
		Last Modified: Fri, 21 Dec 2018 06:21:07 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55de9c38f7dac51b769cce287b613a7ff8ebfe1ad5a7b3c41a75f3b52a6f3de1`  
		Last Modified: Fri, 21 Dec 2018 06:21:06 GMT  
		Size: 1.3 MB (1281848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864e75d3e43775995a09580407fa9f7b65929ac020e683ec07fb1fa792e465eb`  
		Last Modified: Fri, 21 Dec 2018 06:21:06 GMT  
		Size: 124.0 KB (123981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e81713485d449cf04fac9c9b3ea75a009ee996c3f0b929d3a2a04072635300`  
		Last Modified: Fri, 21 Dec 2018 06:21:06 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a62c6cedaa9fefd134660b80230e73102d19d892517b740768be5108167e68`  
		Last Modified: Fri, 21 Dec 2018 06:21:06 GMT  
		Size: 521.2 KB (521219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4649ca2787f6e037baca2a5bb01c6f97ed14ccf70fbf4b9e7b75cde0196de80`  
		Last Modified: Fri, 21 Dec 2018 06:21:06 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:aab84e8a180ecae984a7dd7d7320706495add2dfa1b358e5329bd367b1150ba2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32357788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffe5e4e019e4ea09c24b75e1fe81191f95a80fc661e7991234b1d892365b98`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 09:57:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:16:09 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 21 Dec 2018 10:16:09 GMT
ENV PHP_VERSION=7.2.13
# Fri, 21 Dec 2018 10:16:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Fri, 21 Dec 2018 10:16:10 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Fri, 21 Dec 2018 10:16:15 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 21 Dec 2018 10:16:16 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:20:26 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 21 Dec 2018 10:20:28 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:20:29 GMT
RUN docker-php-ext-enable sodium
# Fri, 21 Dec 2018 10:20:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 21 Dec 2018 10:20:30 GMT
WORKDIR /var/www/html
# Fri, 21 Dec 2018 10:20:31 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Dec 2018 10:20:32 GMT
EXPOSE 9000
# Fri, 21 Dec 2018 10:20:32 GMT
CMD ["php-fpm"]
# Fri, 21 Dec 2018 11:51:49 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 21 Dec 2018 11:51:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 21 Dec 2018 11:51:52 GMT
RUN apk add --no-cache libpq
# Fri, 21 Dec 2018 11:52:17 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 21 Dec 2018 11:52:18 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 21 Dec 2018 11:52:18 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 21 Dec 2018 11:52:18 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 21 Dec 2018 11:52:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 21 Dec 2018 11:52:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 21 Dec 2018 11:52:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:52:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 21 Dec 2018 11:52:21 GMT
USER adminer
# Fri, 21 Dec 2018 11:52:22 GMT
CMD ["php-fpm"]
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
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a2d87e934f6881656d209530a5523fac4c28881bb465188a3ad7a4d3e4ddcf`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0239fb86822f810f2f035de836aa97e9ab4f4ca0fcbd6a27cda1ea8d3feaca`  
		Last Modified: Fri, 21 Dec 2018 11:06:26 GMT  
		Size: 12.1 MB (12136069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1aa355963072d7bc8ef5d84d859a0feacad2829e80325d023bdba65bce0a9`  
		Last Modified: Fri, 21 Dec 2018 11:06:24 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d571e54ef090eb8b6fc883bcd5a452cc82005fa6e6205a52d9acc8c65de61c`  
		Last Modified: Fri, 21 Dec 2018 11:06:29 GMT  
		Size: 14.8 MB (14817708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a51446857a03d541202644eab6e4df37f7c33319eec449769a7d5f517a1cee`  
		Last Modified: Fri, 21 Dec 2018 11:06:23 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316da137431a4f1a7805fb9524f42f26ba49a0046ca0316d9ebf54cff24f0df7`  
		Last Modified: Fri, 21 Dec 2018 11:06:23 GMT  
		Size: 71.4 KB (71382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a130763915f4686c376ae6694197648ce2f14aad2ab2908f21dc9e3c97f9794`  
		Last Modified: Fri, 21 Dec 2018 11:06:23 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff604876005c73228ffcf104fbadb4b4134ab018f32270b779afde9833ae0f5e`  
		Last Modified: Fri, 21 Dec 2018 11:06:23 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcfc6ee6e5c49e702ee66cfc92bc1ba51495acb9b8ec9609f58f43736cbc6a5`  
		Last Modified: Fri, 21 Dec 2018 11:52:56 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b568f40c943529d36c82410acba817fa7f1a05583cb72bca81a93bbbf99446ee`  
		Last Modified: Fri, 21 Dec 2018 11:52:56 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86da2f833d70fbf8220654113da5cc52fcaf72891c5a4e4aaa47c8609aea438d`  
		Last Modified: Fri, 21 Dec 2018 11:52:55 GMT  
		Size: 1.2 MB (1215677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ecbfebab35c8d832d4bd84ac131423203b98a48ecbe052ba5c1755a646df3d3`  
		Last Modified: Fri, 21 Dec 2018 11:52:54 GMT  
		Size: 118.6 KB (118646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d9e0be3edaae58dd5e334b4972b1b953fc547aa1783a1aedecde90a53ef770`  
		Last Modified: Fri, 21 Dec 2018 11:52:54 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05596b15a2e0c767bc5d1d5aa53fa1c33de730cc145b8df50f70e284743798f`  
		Last Modified: Fri, 21 Dec 2018 11:52:55 GMT  
		Size: 521.3 KB (521270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b51a9e8b6d61a94374c0f59fae0c4df6d72dd8d1490d43ba942c297e99bcb8b`  
		Last Modified: Fri, 21 Dec 2018 11:52:54 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:23c26b7ded65a31d141fbae04b2752554f9ac7ae0d59e88b9d8940ba1a0d6d09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32315454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c65333dd0e3837a68cc838763f0c58e1e97c2bce5f272cb6c748a09df6e0a`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 14 Sep 2018 16:18:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 14 Sep 2018 20:08:17 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 14 Sep 2018 20:08:19 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 14 Sep 2018 20:08:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 14 Sep 2018 20:08:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 14 Sep 2018 20:15:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 14 Sep 2018 20:15:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 20:15:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 20:15:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 14 Sep 2018 21:10:35 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Dec 2018 12:21:16 GMT
ENV PHP_VERSION=7.2.13
# Tue, 11 Dec 2018 12:21:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 12:21:17 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Tue, 11 Dec 2018 12:21:28 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 12:21:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:28:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 12:28:04 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:28:06 GMT
RUN docker-php-ext-enable sodium
# Tue, 11 Dec 2018 12:28:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 12:28:07 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 12:28:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 12:28:09 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 12:28:10 GMT
CMD ["php-fpm"]
# Tue, 11 Dec 2018 17:37:31 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Tue, 11 Dec 2018 17:37:32 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 11 Dec 2018 17:37:34 GMT
RUN apk add --no-cache libpq
# Tue, 11 Dec 2018 17:38:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 11 Dec 2018 17:38:06 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Tue, 11 Dec 2018 17:38:07 GMT
ENV ADMINER_VERSION=4.7.0
# Tue, 11 Dec 2018 17:38:07 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Tue, 11 Dec 2018 17:38:08 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Tue, 11 Dec 2018 17:38:11 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 11 Dec 2018 17:38:12 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 11 Dec 2018 17:38:13 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 11 Dec 2018 17:38:13 GMT
USER [adminer]
# Tue, 11 Dec 2018 17:38:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5d5b62245e8bd9b245068e83382734295b3d4cb9ca04771d79c339cdc4e5b8`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 1.3 MB (1273934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c22e7722871e7a01dcb303698a0114f084259f51352de3601bb74ef6b3169`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d847fcef0e6a77d8f66872ce91022501ba8c4b6b7bc8028e7af971ea15298`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661767c830e79eb07e3106622baa22ea1e8e443752789c1ba49282e1dca390fa`  
		Last Modified: Tue, 11 Dec 2018 15:25:23 GMT  
		Size: 12.1 MB (12136074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f34be2b8baf697e1eb2056fb7ee29736f1d83722c0337f4e29687202b62bd8d`  
		Last Modified: Tue, 11 Dec 2018 15:25:20 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9f73ffdf478a152dfbefaedd52b50bf54af13f801e6cad888da962cd43562`  
		Last Modified: Tue, 11 Dec 2018 15:25:24 GMT  
		Size: 14.9 MB (14888675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448c4fcb8ef845f27486468bcf98b728692de4f909c7918a2c3e99890f0078aa`  
		Last Modified: Tue, 11 Dec 2018 15:25:18 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a5c6a716194de709ebb88d7c72cf93e20955d7a107c48c8ed6e3e9a729967c`  
		Last Modified: Tue, 11 Dec 2018 15:25:19 GMT  
		Size: 70.9 KB (70910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af59d5fad9d89f0d74d94867d05d1d1ea684a6bb09c5cd5a37ac79ef8a181d51`  
		Last Modified: Tue, 11 Dec 2018 15:25:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0372b5a24969a0d679683af1098c6eeb4c655ba6fb244aff93d07d6f297fec3`  
		Last Modified: Tue, 11 Dec 2018 15:25:19 GMT  
		Size: 7.8 KB (7785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49272197908c97bac9bca14da2750bae1a0987350c533c9b68ed60c61921541`  
		Last Modified: Tue, 11 Dec 2018 17:40:28 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe27e080bcb8004f9801dec350541c5a62b0d7033617b610a371e36f0b39a31`  
		Last Modified: Tue, 11 Dec 2018 17:40:27 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a945d9e11a8f6be1ff15a2a0aebbdb1b28c3e6efc79dac3beee1012c562087d6`  
		Last Modified: Tue, 11 Dec 2018 17:40:26 GMT  
		Size: 1.2 MB (1190770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d03355736e051f4252e475a775a58e30bff9778d4471ab2b588d01f46976bfc`  
		Last Modified: Tue, 11 Dec 2018 17:40:25 GMT  
		Size: 118.3 KB (118292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b2e4aed265eace52ef7537e87d786c250dba4d96b390fd604e5505fa0da86c`  
		Last Modified: Tue, 11 Dec 2018 17:40:25 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eecb48f87bce126159703e394e520efd740e5bc10283be3f71e9316cf25bc0c1`  
		Last Modified: Tue, 11 Dec 2018 17:40:25 GMT  
		Size: 521.2 KB (521218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c0262452c85d4ad2282c89a03a9fd2f3585ccdf457e94807db01a681d3ddb`  
		Last Modified: Tue, 11 Dec 2018 17:40:25 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:41bdcc9495933c1a872d7dd78d72cbbfc8cadf1948f0a1d14b8101f11c103545
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34546805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c8300866d08738e0b8699f27247f3cfbe8c854d634c72230dcecea9dabe59a`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:37:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 12:37:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 12:37:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 12:37:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 12:37:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 12:44:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 12:44:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:44:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:44:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 13:05:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Dec 2018 12:48:08 GMT
ENV PHP_VERSION=7.2.13
# Tue, 11 Dec 2018 12:48:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 12:48:09 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Tue, 11 Dec 2018 12:48:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 12:48:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:53:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 12:53:46 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:53:47 GMT
RUN docker-php-ext-enable sodium
# Tue, 11 Dec 2018 12:53:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 12:53:48 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 12:53:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 12:53:49 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 12:53:49 GMT
CMD ["php-fpm"]
# Tue, 11 Dec 2018 18:36:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Tue, 11 Dec 2018 18:36:14 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 11 Dec 2018 18:36:15 GMT
RUN apk add --no-cache libpq
# Tue, 11 Dec 2018 18:36:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 11 Dec 2018 18:36:30 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Tue, 11 Dec 2018 18:36:31 GMT
ENV ADMINER_VERSION=4.7.0
# Tue, 11 Dec 2018 18:36:31 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Tue, 11 Dec 2018 18:36:31 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Tue, 11 Dec 2018 18:36:32 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 11 Dec 2018 18:36:33 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 11 Dec 2018 18:36:33 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 11 Dec 2018 18:36:33 GMT
USER [adminer]
# Tue, 11 Dec 2018 18:36:33 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d4abd9cb4c79c6416ce455ee2493d28f7a114950d8f4396d08b79ad55cc24f`  
		Last Modified: Wed, 12 Sep 2018 15:33:01 GMT  
		Size: 1.5 MB (1452991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88d2bb459bda03d7dd027aabfa163a3736e158569f1fffbb07ab53ecf02ec91`  
		Last Modified: Wed, 12 Sep 2018 15:33:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998bc629b0e38631ba000bc16dd2fe77dc82e42852090c93177e58eaf779abd8`  
		Last Modified: Wed, 12 Sep 2018 15:33:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07816afd82b443d2c780bbd39b6fd12a2bc9fb5fff1290e8b899418268f939`  
		Last Modified: Tue, 11 Dec 2018 16:24:40 GMT  
		Size: 12.1 MB (12136067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b793aeb70f242cddf671f92fc26d72d308bb5f09416c20417548ff28fa34f76`  
		Last Modified: Tue, 11 Dec 2018 16:24:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd818d8eaf5269943fae9a54e55438e74555f1b9c2b23f13655f76c69ad86fe3`  
		Last Modified: Tue, 11 Dec 2018 16:24:42 GMT  
		Size: 16.6 MB (16559056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc64e12c8b89047122e1872152708442544b96e23b83f2b6ab1f517df6e6c5f4`  
		Last Modified: Tue, 11 Dec 2018 16:24:37 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c9080b4fa6558842f2fbf5c0736d98ae8773cdd8eb3d73181be5743ca79af`  
		Last Modified: Tue, 11 Dec 2018 16:24:37 GMT  
		Size: 71.0 KB (71027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6994e17ac90481272d4289a3ec1276525369181470aae4c484ca4533ac9692`  
		Last Modified: Tue, 11 Dec 2018 16:24:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905f54634deaf9dffcc593fffc3a29a165f81c5fd2e1bbf2555f874a87357e29`  
		Last Modified: Tue, 11 Dec 2018 16:24:37 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3764ace6144f44c2501e76c82368c846af5243b06c68b9e8c85f4235270bc1dc`  
		Last Modified: Tue, 11 Dec 2018 18:39:12 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afe53d6550fecffb9974654a59c21238932b1a8ec38388519922276316d888c`  
		Last Modified: Tue, 11 Dec 2018 18:39:11 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cd69a3324e1e678fbc10b40f2c6f1a6b045f731880d7af77cd7e04d64810ed`  
		Last Modified: Tue, 11 Dec 2018 18:39:12 GMT  
		Size: 1.4 MB (1391688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c371a4b58639618bcb9cd6289f8bb8c6ba2286168d79925048a51dfaca0766ab`  
		Last Modified: Tue, 11 Dec 2018 18:39:11 GMT  
		Size: 127.5 KB (127480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f4deecfc14c46df910ac2e43e319463786168bda3625b34803745299b04ae8`  
		Last Modified: Tue, 11 Dec 2018 18:39:11 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf2434089151571f0072b64639195882451b9aee0318fd7a320a2bedecc6c3f`  
		Last Modified: Tue, 11 Dec 2018 18:39:11 GMT  
		Size: 521.2 KB (521216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2561d44acc8cbce040c4478fba24aca0bf95a35f7ba7867d27ce4c63af6b06`  
		Last Modified: Tue, 11 Dec 2018 18:39:11 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:cee7ef577944690e296b748153278556e7a755188fae27d7af2e64a095bba7b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33157702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5ab9d9a7cadec1ae316b117f26429a6521e81cee09cf943d9c780672742373`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 10:33:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:39:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:39:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:57:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 21 Dec 2018 10:58:02 GMT
ENV PHP_VERSION=7.2.13
# Fri, 21 Dec 2018 10:58:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Fri, 21 Dec 2018 10:58:19 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Fri, 21 Dec 2018 10:58:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 21 Dec 2018 10:58:45 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:03:41 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 21 Dec 2018 11:03:45 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:03:49 GMT
RUN docker-php-ext-enable sodium
# Fri, 21 Dec 2018 11:03:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 21 Dec 2018 11:03:55 GMT
WORKDIR /var/www/html
# Fri, 21 Dec 2018 11:04:04 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Dec 2018 11:04:06 GMT
EXPOSE 9000
# Fri, 21 Dec 2018 11:04:12 GMT
CMD ["php-fpm"]
# Fri, 21 Dec 2018 14:20:48 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 21 Dec 2018 14:20:53 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 21 Dec 2018 14:21:00 GMT
RUN apk add --no-cache libpq
# Fri, 21 Dec 2018 14:21:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 21 Dec 2018 14:21:34 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 21 Dec 2018 14:21:36 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 21 Dec 2018 14:21:39 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 21 Dec 2018 14:21:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 21 Dec 2018 14:21:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 21 Dec 2018 14:21:48 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:21:52 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 21 Dec 2018 14:21:54 GMT
USER adminer
# Fri, 21 Dec 2018 14:21:56 GMT
CMD ["php-fpm"]
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
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bb9008fe21d12c735aed250535f34b51e732ec5488ca7e1772bca1a0b7028`  
		Last Modified: Fri, 21 Dec 2018 12:04:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee974d844b7cee7299fa4cfa81653a8a86c6d77823ef335459165f42f20fc294`  
		Last Modified: Fri, 21 Dec 2018 12:07:36 GMT  
		Size: 12.1 MB (12136086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdc9f259a2b7013e9ab42a25679c5f2dcb4f73d07ba8af6eb1483508835fcc7`  
		Last Modified: Fri, 21 Dec 2018 12:07:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f166ef23d4d3dbf271f745880484cbb945784278f3eb8e9f458eabde57d8db85`  
		Last Modified: Fri, 21 Dec 2018 12:07:38 GMT  
		Size: 15.5 MB (15517814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aabb638fc263bdf152835abc438cd4eb3656c1915e5dd8cce30e70cea1a028d`  
		Last Modified: Fri, 21 Dec 2018 12:07:31 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831878db122858f8da20a3dd75b08ad8a37ad4fe3c5c84b325ea1a2428a17f63`  
		Last Modified: Fri, 21 Dec 2018 12:07:31 GMT  
		Size: 71.6 KB (71639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571b4747f53c74990950c919ae34937068f1655d8a549aff857cb7fc623eebdb`  
		Last Modified: Fri, 21 Dec 2018 12:07:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e9f887fefdcdf8546f669e15c77d5d356c5ebde99fd7ca7e1e2cd5edfa56e`  
		Last Modified: Fri, 21 Dec 2018 12:07:31 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c37469fb8cf0958ac7036badede5318f2630fc48bfeca8fb1c272d599087ac1`  
		Last Modified: Fri, 21 Dec 2018 14:23:07 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b60592d05f4b25cfdfc52d952a18b63edb58ae047eb9ffd12703174e6db0425`  
		Last Modified: Fri, 21 Dec 2018 14:23:07 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57095a64d02c767c948f2e5d7ef9ee3da20d7d2575ffb3c72c02c66634fecbc`  
		Last Modified: Fri, 21 Dec 2018 14:23:04 GMT  
		Size: 1.3 MB (1252566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6468c71a6840493e5f432faf5ed9ab512f6b1d0f4e81d46e8f7d904c32b2035c`  
		Last Modified: Fri, 21 Dec 2018 14:23:04 GMT  
		Size: 125.3 KB (125282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367842d8f2372df236823b0e7eb44270b50af51e9a5b2a4e9581257f0a7f8be6`  
		Last Modified: Fri, 21 Dec 2018 14:23:03 GMT  
		Size: 1.5 KB (1462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5c60f5fbd90c61d8ef1172cdd1502a47195d2a5188e61bffee259d9dbc6bfd`  
		Last Modified: Fri, 21 Dec 2018 14:23:04 GMT  
		Size: 521.3 KB (521272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27daeb0ebbc6d41183314922e433be6c5d43ede1e7b8887eb40ac373c411f230`  
		Last Modified: Fri, 21 Dec 2018 14:23:03 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
