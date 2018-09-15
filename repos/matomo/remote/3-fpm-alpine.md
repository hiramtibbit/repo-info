## `matomo:3-fpm-alpine`

```console
$ docker pull matomo@sha256:aac283fc452f38cafa205e688b3c8afa62f437f27876bea262d6177a1d085306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `matomo:3-fpm-alpine` - linux; amd64

```console
$ docker pull matomo@sha256:cd6f53e89978822d468c2e4805e0a7f1758ce06e35e67a95408d5c613dff79d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64641689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a151920aa94ca6fd6f7ac07c8c44f513451539f40b01a8fd5af4669648df595`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:32:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 04:10:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 04:10:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:14:36 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:14:36 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:14:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 04:14:37 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 04:14:37 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:42:27 GMT
LABEL maintainer=pierre@piwik.org
# Sat, 15 Sep 2018 07:44:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.11; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 15 Sep 2018 07:44:03 GMT
ENV MATOMO_VERSION=3.5.1
# Sat, 15 Sep 2018 07:44:11 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Sat, 15 Sep 2018 07:44:11 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Sat, 15 Sep 2018 07:44:13 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Sat, 15 Sep 2018 07:44:13 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Sat, 15 Sep 2018 07:44:13 GMT
VOLUME [/var/www/html]
# Sat, 15 Sep 2018 07:44:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Sep 2018 07:44:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4002f07c481c94480e03d3a8b564dd9cc072e59ab74fce8df12d4903ffebff1b`  
		Last Modified: Sat, 15 Sep 2018 06:44:47 GMT  
		Size: 12.2 MB (12247428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3257f67d20e4ab9acdc9311bf224ded209866222b217484f12bb006cd4e0b56`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8ae8d2673463d6ccd6148ef02455eada56abbd6b7625de33700d255e051aa`  
		Last Modified: Sat, 15 Sep 2018 06:44:49 GMT  
		Size: 14.8 MB (14821726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557b77e5f8eb302b48d92ff070a5699f79eec4ca05ea7f0a0761660ca17bf65c`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0d164256d65f2a1622e36b1e223b807c88d973735d52a76d06b69acf7893a7`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d0a8dec9cd998163229e2185ebe9958160038177ccdbb7b08c03762baed227`  
		Last Modified: Sat, 15 Sep 2018 06:44:46 GMT  
		Size: 7.8 KB (7752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a21efb04bbc8f5b741cf7e1ce002b911026457e77c99c04b9d08d241af89e6`  
		Last Modified: Sat, 15 Sep 2018 07:46:10 GMT  
		Size: 5.1 MB (5060725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d2b862ef7020f4508d740a90153dd6b88c5e3eb04c334137b72d7a10b9944e`  
		Last Modified: Sat, 15 Sep 2018 07:46:15 GMT  
		Size: 15.0 MB (15022936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c596d308ede2353669473fc4bde77b09a36294b977fed52af21ff17719c55cf7`  
		Last Modified: Sat, 15 Sep 2018 07:46:10 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed9765de1c9dd4fa2a17308c81377ef558d5e0fe76cdb714b4c4f7e2ee54f9`  
		Last Modified: Sat, 15 Sep 2018 07:46:11 GMT  
		Size: 13.9 MB (13915780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad12eddde4fe089d60337e9ed092fcfb567a4b849107f61b4043d5f0ec3ec281`  
		Last Modified: Sat, 15 Sep 2018 07:46:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `matomo:3-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull matomo@sha256:71595f9fab68af9845274651aab46495649ddcf8d9bc46efc415920b1a54a884
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63252964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e16fec663d67e504781227690f16a9a20eda187fac6d762bc10ac5d76d60f14`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 14 Sep 2018 22:49:33 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 14 Sep 2018 22:49:34 GMT
ENV PHP_VERSION=7.1.21
# Fri, 14 Sep 2018 22:49:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Fri, 14 Sep 2018 22:49:35 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Fri, 14 Sep 2018 22:49:46 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 14 Sep 2018 22:49:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 14 Sep 2018 22:56:28 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 14 Sep 2018 22:56:29 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Fri, 14 Sep 2018 22:56:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 14 Sep 2018 22:56:31 GMT
WORKDIR /var/www/html
# Fri, 14 Sep 2018 22:56:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 14 Sep 2018 22:56:33 GMT
EXPOSE 9000/tcp
# Fri, 14 Sep 2018 22:56:33 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 03:03:32 GMT
LABEL maintainer=pierre@piwik.org
# Sat, 15 Sep 2018 03:07:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.11; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 15 Sep 2018 03:07:15 GMT
ENV MATOMO_VERSION=3.5.1
# Sat, 15 Sep 2018 03:07:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Sat, 15 Sep 2018 03:07:31 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Sat, 15 Sep 2018 03:07:34 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Sat, 15 Sep 2018 03:07:34 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Sat, 15 Sep 2018 03:07:35 GMT
VOLUME [/var/www/html]
# Sat, 15 Sep 2018 03:07:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Sep 2018 03:07:36 GMT
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
	-	`sha256:f24aa469ccdc087c4e7d3c6482fe9a46b9ec8046443064e5048ce644c3ca6002`  
		Last Modified: Sat, 15 Sep 2018 01:50:45 GMT  
		Size: 12.2 MB (12246922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9166a574a10fe4e8308a66d71aa613989419119286b2073cf133e267f62dd750`  
		Last Modified: Sat, 15 Sep 2018 01:50:41 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ef839b842ba9889ba84094196a23ab367133f4dabcd7d4e6acd20a992195da`  
		Last Modified: Sat, 15 Sep 2018 01:50:47 GMT  
		Size: 13.8 MB (13845868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69c1a63516ba8b0bb6d389a547c9d67aad6322e907c82605e7ee4427e871cef`  
		Last Modified: Sat, 15 Sep 2018 01:50:41 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602518178e00caa1ab79fc8ea4c5457e0d85eacb2b84ab4255fb4336e404938d`  
		Last Modified: Sat, 15 Sep 2018 01:50:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117ad92cd0bf0b23b23fb69a5ef4a30ff5801c614934f8576c5eca31e7cb2e8a`  
		Last Modified: Sat, 15 Sep 2018 01:50:42 GMT  
		Size: 7.8 KB (7753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4361248ebede9928891cee400fa229ec9d1dec89a5009fe66934d7786ac9854`  
		Last Modified: Sat, 15 Sep 2018 03:10:15 GMT  
		Size: 4.8 MB (4835868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257f841a4ba0cce75aa3af2076f789ffd75c0e320393c41db91a39ac7eec5d95`  
		Last Modified: Sat, 15 Sep 2018 03:10:21 GMT  
		Size: 15.0 MB (15022174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fdc5feb34e287ab55d6c84856ff75e4717da0054d0679de9cc4b189306297`  
		Last Modified: Sat, 15 Sep 2018 03:10:13 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef854fe8b9b56328a3967a364dcfe3c4c7eb1ac8b82dab7df800e22c88585ed`  
		Last Modified: Sat, 15 Sep 2018 03:10:17 GMT  
		Size: 13.9 MB (13915768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5643d371088883d416a5607e517d0aee1b4f443bca25713980027772081418`  
		Last Modified: Sat, 15 Sep 2018 03:10:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `matomo:3-fpm-alpine` - linux; 386

```console
$ docker pull matomo@sha256:0a397bc5531667d7363bbcf7261db067a8c4279ac511497fe4240d4f6133fdc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65411995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0156a9f4e341245100bc9067fd380fbb580f92df24613d6a0762423d0e7c9d95`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 12 Sep 2018 14:07:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 12 Sep 2018 14:07:47 GMT
ENV PHP_VERSION=7.1.21
# Wed, 12 Sep 2018 14:07:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 12 Sep 2018 14:07:47 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 12 Sep 2018 14:07:52 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 12 Sep 2018 14:07:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:13:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 12 Sep 2018 14:13:51 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:13:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 12 Sep 2018 14:13:51 GMT
WORKDIR /var/www/html
# Wed, 12 Sep 2018 14:13:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 12 Sep 2018 14:13:52 GMT
EXPOSE 9000/tcp
# Wed, 12 Sep 2018 14:13:52 GMT
CMD ["php-fpm"]
# Wed, 12 Sep 2018 18:34:08 GMT
LABEL maintainer=pierre@piwik.org
# Wed, 12 Sep 2018 18:36:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.11; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Wed, 12 Sep 2018 18:36:23 GMT
ENV MATOMO_VERSION=3.5.1
# Wed, 12 Sep 2018 18:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Wed, 12 Sep 2018 18:36:35 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Wed, 12 Sep 2018 18:36:37 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 12 Sep 2018 18:36:38 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Wed, 12 Sep 2018 18:36:38 GMT
VOLUME [/var/www/html]
# Wed, 12 Sep 2018 18:36:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 18:36:38 GMT
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
	-	`sha256:9dd44de4a95e3de41eb99e4006dcfc9f7a1104fa3df64513e34b3fede80ef478`  
		Last Modified: Wed, 12 Sep 2018 15:42:08 GMT  
		Size: 12.2 MB (12246917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c6cdd6235ff56e6b6bfb6199dc68a9a6a4b78711241ec09f86cb9bfeb4f2c5`  
		Last Modified: Wed, 12 Sep 2018 15:42:05 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f85753aeaaa20c0764a84736caa3ede4e784040b254108636e0ecab66953b6`  
		Last Modified: Wed, 12 Sep 2018 15:42:11 GMT  
		Size: 15.3 MB (15319713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775dd5abb18675a5889031b8affbc533b5dc0c994f4c8b2247e78bf0aeb2820d`  
		Last Modified: Wed, 12 Sep 2018 15:42:05 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7740d52b0fc9d29da4422fd70d71ad38acddc513809e2fd50871c0da1846d14`  
		Last Modified: Wed, 12 Sep 2018 15:42:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb715849486329790382a8c3de8b3d7e38d4b5de7e90f5dc77f93341e367aab2`  
		Last Modified: Wed, 12 Sep 2018 15:42:06 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481665f784d478e7e09dc42acd1c8c0198d57396588f160cb709c6a36c697e4e`  
		Last Modified: Wed, 12 Sep 2018 18:37:13 GMT  
		Size: 5.2 MB (5169972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf134b775fc5764b1fa5b94333dbfd3ccad1e379a5cf2cbfb5c2a635807747ca`  
		Last Modified: Wed, 12 Sep 2018 18:37:19 GMT  
		Size: 15.0 MB (15022486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491e3c1bad2be061c58216f0d0b5e9a157e2e2657022132f88e5d49a075a20b8`  
		Last Modified: Wed, 12 Sep 2018 18:37:08 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d67e903dca87002a46945472035ebad9fc06291f8cf5a80910e8c498b481b1c`  
		Last Modified: Wed, 12 Sep 2018 18:37:14 GMT  
		Size: 13.9 MB (13915780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665be98922b9b4f1b53f50cc23184a102e00f301b1eaa79f81aed01fd2e8ee0d`  
		Last Modified: Wed, 12 Sep 2018 18:37:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `matomo:3-fpm-alpine` - linux; ppc64le

```console
$ docker pull matomo@sha256:711706072405626d38ba229e51129a826d2189e6728d611eee2404caf4cc41cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64250815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfae6249e809d057d11a932f5d19809a6f0d520e45bcc967699ea7ce887f1b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:47:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 10:47:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 10:47:45 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 10:47:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 10:48:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 10:54:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 10:54:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 10:54:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 10:54:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 12:27:01 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 12 Sep 2018 12:27:01 GMT
ENV PHP_VERSION=7.1.21
# Wed, 12 Sep 2018 12:27:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 12 Sep 2018 12:27:03 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 12 Sep 2018 12:27:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 12 Sep 2018 12:27:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:32:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 12 Sep 2018 12:32:50 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:32:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 12 Sep 2018 12:32:52 GMT
WORKDIR /var/www/html
# Wed, 12 Sep 2018 12:32:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 12 Sep 2018 12:32:55 GMT
EXPOSE 9000/tcp
# Wed, 12 Sep 2018 12:32:55 GMT
CMD ["php-fpm"]
# Wed, 12 Sep 2018 15:36:38 GMT
LABEL maintainer=pierre@piwik.org
# Wed, 12 Sep 2018 15:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.11; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Wed, 12 Sep 2018 15:39:15 GMT
ENV MATOMO_VERSION=3.5.1
# Wed, 12 Sep 2018 15:39:42 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Wed, 12 Sep 2018 15:39:44 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Wed, 12 Sep 2018 15:39:48 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 12 Sep 2018 15:39:49 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Wed, 12 Sep 2018 15:39:51 GMT
VOLUME [/var/www/html]
# Wed, 12 Sep 2018 15:39:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 15:39:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2065b998114051b7b227afdf3beaf87ddb601622e26d66a153bda4a465c0dd4d`  
		Last Modified: Wed, 12 Sep 2018 13:55:29 GMT  
		Size: 1.3 MB (1322110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeb3707e07380790bc01a39b06ae1a0d8e055a505ede356982b61829e58312f`  
		Last Modified: Wed, 12 Sep 2018 13:55:28 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1992446f59e7d0ec448fc0276afa9cdc55467e5ce7ae99d4a0567c9b8e7ce3`  
		Last Modified: Wed, 12 Sep 2018 13:55:27 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa16d8718bf54c11bb8a933162e6eb8977b16f6c0a354cc434dc0cc0497ce61a`  
		Last Modified: Wed, 12 Sep 2018 14:18:47 GMT  
		Size: 12.2 MB (12246933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d4a8b87885cb2665400adef41ab12a41780bb7743e8aac5f03a2fb0bde55f3`  
		Last Modified: Wed, 12 Sep 2018 14:18:41 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07125b39d1996f8cc125aba695f77496a0f370919883d3ba9bc2c9b7cffafb13`  
		Last Modified: Wed, 12 Sep 2018 14:18:53 GMT  
		Size: 14.5 MB (14514692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea9cd2a0b8a6954365474133de2ea9eaad502fff0d2cdef1797f461c4ea6dce`  
		Last Modified: Wed, 12 Sep 2018 14:18:42 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c30687c5434c3fd313e5970f82188677855a67a5165d23a96604d5468db65`  
		Last Modified: Wed, 12 Sep 2018 14:18:41 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8136e77a80ea9be0ba4762f739821ca798a28f80d3ccb33d72b03122e00503cc`  
		Last Modified: Wed, 12 Sep 2018 14:18:41 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea92b01125da0069024f2bc548715d4d00b47e512517db7485a03c6dbe49af4`  
		Last Modified: Wed, 12 Sep 2018 15:41:52 GMT  
		Size: 5.0 MB (5020587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166d7fb3cff7f7bc0ee4aae059b87f2bf584e6f7ab1906e4542eb30ccf3a0e4f`  
		Last Modified: Wed, 12 Sep 2018 15:41:56 GMT  
		Size: 15.0 MB (15022723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66776b0700a549269b122e5c3696a5c3969d0cebb5273c4629da2d7c4a791f9a`  
		Last Modified: Wed, 12 Sep 2018 15:41:51 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbca7b8fe05b6da849e8f402c82dbf16671016c94f487963279dc99acb7936f9`  
		Last Modified: Wed, 12 Sep 2018 15:41:54 GMT  
		Size: 13.9 MB (13915782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af797486943fb3e7cd64ae20e7cc828594d9d72ddbb6bb6df9e0d89a2b8e018`  
		Last Modified: Wed, 12 Sep 2018 15:41:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
