## `joomla:php7.2-fpm-alpine`

```console
$ docker pull joomla@sha256:3f1e939d1398d0a5c6abece660859771bcecb2372a12a1108cd5814146d206ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `joomla:php7.2-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:c9212e1b318b5d9ebd17157fda24e20587f88c28fe90ac96612ecd49455546ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47592706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730f3c25c20dc635bbecbe6c23c68cf46a5dbfdae0900b5b5b5439dfe4b41377`
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
# Wed, 12 Sep 2018 01:02:08 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 00:09:48 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 00:09:49 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 00:09:49 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 00:09:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 10 Nov 2018 00:09:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 00:16:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 00:16:14 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 10 Nov 2018 00:16:16 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 00:16:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 00:16:16 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 00:16:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 10 Nov 2018 00:16:17 GMT
EXPOSE 9000/tcp
# Sat, 10 Nov 2018 00:16:17 GMT
CMD ["php-fpm"]
# Sat, 10 Nov 2018 02:19:30 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Nov 2018 02:19:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 10 Nov 2018 02:19:31 GMT
RUN apk add --no-cache 	bash
# Sat, 10 Nov 2018 02:21:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install memcached-3.0.4; 	pecl install redis-4.1.1; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 10 Nov 2018 02:21:19 GMT
VOLUME [/var/www/html]
# Sat, 10 Nov 2018 02:21:20 GMT
ENV JOOMLA_VERSION=3.9.0
# Sat, 10 Nov 2018 02:21:20 GMT
ENV JOOMLA_SHA1=db67108d2dd3e65ae05cecbc57958a425f6f340f
# Sat, 10 Nov 2018 02:21:24 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Nov 2018 02:21:25 GMT
COPY file:25b57bf11549456c8a7b3fadac31b0211225c2cd85b3a380a644dcec5f8a605c in /entrypoint.sh 
# Sat, 10 Nov 2018 02:21:25 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Nov 2018 02:21:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:21:26 GMT
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
	-	`sha256:761d0dc93f3cca11238828fbc69899acf7d1fb8df580d2f7ffece5f4ab2dbbdf`  
		Last Modified: Sat, 10 Nov 2018 00:57:47 GMT  
		Size: 12.2 MB (12161081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10537ff3475ce8fedd9e3d62e276a876975369b62c7b0a89e8fa56da7afaea3e`  
		Last Modified: Sat, 10 Nov 2018 00:57:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeb719dbed96396ab980e0f6b95aca123cf64a2715bcca3757ac1ed1e8c5a70`  
		Last Modified: Sat, 10 Nov 2018 00:57:49 GMT  
		Size: 16.1 MB (16074269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14e31054104178a8bc60f9d1528d21cb5d27de1af2a6f3722beb178e9ab9c7e`  
		Last Modified: Sat, 10 Nov 2018 00:57:47 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49624aa5a155f09bad6470686eaa8c35a71861848a6ad18d6ff1edae525d9d3`  
		Last Modified: Sat, 10 Nov 2018 00:57:46 GMT  
		Size: 71.9 KB (71880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47108e9bbf645e05cb10f54b0fbf52b931d95fa424feb07f68811cb063d26a4`  
		Last Modified: Sat, 10 Nov 2018 00:57:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41684d7538c9bde080029be80ddbf642c8ce0dd078075ff69fc5b2a1943e474e`  
		Last Modified: Sat, 10 Nov 2018 00:57:46 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee5bb435e37b37d8a23b2bb934390e3bd70af3292308c019e0b32c1e723e75f`  
		Last Modified: Sat, 10 Nov 2018 02:25:36 GMT  
		Size: 582.9 KB (582949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dea3fdee336de048572a9128efb26944652ecaa9c7e15a7cf27eff4a07698c8`  
		Last Modified: Sat, 10 Nov 2018 02:25:37 GMT  
		Size: 5.6 MB (5571303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd911393c135bb73cd50fed0f5d831490068e333921b464cf01505da6122ed6e`  
		Last Modified: Sat, 10 Nov 2018 02:25:39 GMT  
		Size: 9.6 MB (9556837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea04b23458678d695c19cbdb80147224888f34977cc4c9f9b6c05bbd7f8be186`  
		Last Modified: Sat, 10 Nov 2018 02:25:35 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d2b0da5b6922ced7ceb6e33f6e4fd290d25bda8a0f83200dde196f19556d9d`  
		Last Modified: Sat, 10 Nov 2018 02:25:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.2-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:4f292ddbfd2efaa264f56c1b00199a70d770a1fe76e92fc2b0967c04b6ddd258
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46140815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70ab95ce0289989c5b5417308061044022128ea1750e0c1e4dd34448b42235b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:04:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 08:04:39 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 08:04:40 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 08:04:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 08:04:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 08:05:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 08:05:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:05:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:05:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:06:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 09:07:47 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 09:07:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 09:07:48 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 09:07:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 10 Nov 2018 09:07:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 09:11:08 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 09:11:09 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 10 Nov 2018 09:11:11 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 09:11:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 09:11:11 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 09:11:12 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 10 Nov 2018 09:11:12 GMT
EXPOSE 9000/tcp
# Sat, 10 Nov 2018 09:11:13 GMT
CMD ["php-fpm"]
# Sat, 10 Nov 2018 09:44:44 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Nov 2018 09:44:44 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 10 Nov 2018 09:44:46 GMT
RUN apk add --no-cache 	bash
# Sat, 10 Nov 2018 09:47:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install memcached-3.0.4; 	pecl install redis-4.1.1; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 10 Nov 2018 09:47:39 GMT
VOLUME [/var/www/html]
# Sat, 10 Nov 2018 09:47:40 GMT
ENV JOOMLA_VERSION=3.9.0
# Sat, 10 Nov 2018 09:47:40 GMT
ENV JOOMLA_SHA1=db67108d2dd3e65ae05cecbc57958a425f6f340f
# Sat, 10 Nov 2018 09:47:50 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Nov 2018 09:47:54 GMT
COPY file:25b57bf11549456c8a7b3fadac31b0211225c2cd85b3a380a644dcec5f8a605c in /entrypoint.sh 
# Sat, 10 Nov 2018 09:47:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Nov 2018 09:47:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 09:47:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec04dbd9ec82b38fae009bdfadd7f0fb7bee63c5bb0e5097a0cd58f0cceceb1`  
		Last Modified: Sat, 15 Sep 2018 09:56:47 GMT  
		Size: 1.3 MB (1315120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b5cc2b10f5d05dc75db927902404c769345f28262497e2a81b5d772e452f55`  
		Last Modified: Sat, 15 Sep 2018 09:56:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652b4cff16833433471b4d932fb39c78c844f379cc8e2f073bc1b83a6d0c7fb6`  
		Last Modified: Sat, 15 Sep 2018 09:56:46 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf771040ce83160f29959e862d549a9f49d20a734ac0f9764b3565f6ccaa32b`  
		Last Modified: Sat, 10 Nov 2018 09:20:23 GMT  
		Size: 12.2 MB (12161117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c7c99ccf99b6a2057b16355e7591a99ba794dba21eba82a666f32f7e5cff16a`  
		Last Modified: Sat, 10 Nov 2018 09:20:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dadebc8609f89d7419d2f387ef1544db750312eb370246197a39726ff25c500`  
		Last Modified: Sat, 10 Nov 2018 09:20:26 GMT  
		Size: 15.0 MB (15031302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b616216818d1c88d6dfdf5981767cace2a8719cd48061584a9c330f23ba5bb02`  
		Last Modified: Sat, 10 Nov 2018 09:20:21 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b56bb2a1b2889d65b7a38cbbe38d532f88b23850d563d3e871d50f12cf2ced7`  
		Last Modified: Sat, 10 Nov 2018 09:20:21 GMT  
		Size: 71.4 KB (71419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339fc1c127a6e2d430882193ebbc6d103498f71685221539878128995495a4aa`  
		Last Modified: Sat, 10 Nov 2018 09:20:21 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac24a041cb351c16e76c4ee950e2cd8c7d3f23b345a77e954183b91ff3e95b9d`  
		Last Modified: Sat, 10 Nov 2018 09:20:21 GMT  
		Size: 7.8 KB (7780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f7c1cd36cbfda0f5ca074adf1d1a33614676880e8cfd746ad50ae4a254f8ee`  
		Last Modified: Sat, 10 Nov 2018 09:48:13 GMT  
		Size: 562.4 KB (562379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e510dc5498a0087e9cba608af688d458846b04b9020f8d4ed59f002e1b34f48`  
		Last Modified: Sat, 10 Nov 2018 09:48:14 GMT  
		Size: 5.3 MB (5282073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7687b2fc201c02a776498a053987c2bfec5f24b1ba572c97e4a14d30498d13`  
		Last Modified: Sat, 10 Nov 2018 09:48:18 GMT  
		Size: 9.6 MB (9556905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7e1fdfb03ccf5a1386ec91dd3a8cea34825edb8da00b10a1a89c468b33c283`  
		Last Modified: Sat, 10 Nov 2018 09:48:14 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39cb0ab6516031c578c158a52e53ab076e7090a55d40afb3b35c3ffc91a0c74`  
		Last Modified: Sat, 10 Nov 2018 09:48:14 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:07268ea346d7e5c960442702c08c614c1fff56e1e813b300126b68ccd370fa05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45964634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e0bdb6376eb5282eb5702e3caa3d4735f7eae7e613f19a246f6dbdbbf4d849`
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
# Fri, 14 Sep 2018 21:10:35 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 11:31:27 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 11:31:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 11:31:28 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 11:31:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 10 Nov 2018 11:31:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 11:39:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 11:39:02 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 10 Nov 2018 11:39:04 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 11:39:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 11:39:06 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 11:39:07 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 10 Nov 2018 11:39:08 GMT
EXPOSE 9000/tcp
# Sat, 10 Nov 2018 11:39:09 GMT
CMD ["php-fpm"]
# Sat, 10 Nov 2018 14:42:22 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Nov 2018 14:42:22 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 10 Nov 2018 14:42:24 GMT
RUN apk add --no-cache 	bash
# Sat, 10 Nov 2018 14:46:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install memcached-3.0.4; 	pecl install redis-4.1.1; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 10 Nov 2018 14:46:25 GMT
VOLUME [/var/www/html]
# Sat, 10 Nov 2018 14:46:26 GMT
ENV JOOMLA_VERSION=3.9.0
# Sat, 10 Nov 2018 14:46:27 GMT
ENV JOOMLA_SHA1=db67108d2dd3e65ae05cecbc57958a425f6f340f
# Sat, 10 Nov 2018 14:46:36 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Nov 2018 14:46:42 GMT
COPY file:25b57bf11549456c8a7b3fadac31b0211225c2cd85b3a380a644dcec5f8a605c in /entrypoint.sh 
# Sat, 10 Nov 2018 14:46:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Nov 2018 14:46:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 14:46:44 GMT
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
	-	`sha256:d637d180fc1ada2483b7c318d5a434993c722dd7bac79e14680ed055f07202d4`  
		Last Modified: Sat, 10 Nov 2018 12:10:44 GMT  
		Size: 12.2 MB (12161115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872f9610df371d47150800dec172703c39e357f305c4526c925da8fb60d8ef4`  
		Last Modified: Sat, 10 Nov 2018 12:10:42 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304278c5f4bbb82636cfc7da1b11bb1dd131eb39dc9f1fabc26ecb6b0aab6cf`  
		Last Modified: Sat, 10 Nov 2018 12:10:47 GMT  
		Size: 14.9 MB (14889737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521b44c7d3d224a469f2e57cff7553125976cd1ec3e1a08a474d5aa79b1f4d21`  
		Last Modified: Sat, 10 Nov 2018 12:10:40 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8d0314c5b1111422f85ff3744075f1ddd677e90f45fdee29ca5a05967cd167`  
		Last Modified: Sat, 10 Nov 2018 12:10:40 GMT  
		Size: 70.9 KB (70913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368e38daa5315d86d67e448ad2412cbd0ad696bb80fda5eec1a1aba38163e69b`  
		Last Modified: Sat, 10 Nov 2018 12:10:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0359660f4a15395e44a186f9458ccbf186b565fedc8b98e1765688b9dc9356`  
		Last Modified: Sat, 10 Nov 2018 12:10:40 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79be9fb22aa86ac477f25c67e5bb4602349de416edb3707f6283e149eae957`  
		Last Modified: Sat, 10 Nov 2018 14:47:50 GMT  
		Size: 546.2 KB (546213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853b7024392d639636370abfe17eec004640a1a29621bbb43f3a5b9ec93789e7`  
		Last Modified: Sat, 10 Nov 2018 14:47:52 GMT  
		Size: 5.4 MB (5351867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9a7fae5d133262a63cd38971af0a5d05fd0aca4499210ab2565de9a5ceead5`  
		Last Modified: Sat, 10 Nov 2018 14:47:56 GMT  
		Size: 9.6 MB (9557129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f34546ab295cc622a7f39e56180deaf243b7331de403d663eaa8c4799c6b411`  
		Last Modified: Sat, 10 Nov 2018 14:47:50 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66713514d686c3eabe40b8267f3e5b90ed6dba4b895bd28f94ba21eaa0efacb1`  
		Last Modified: Sat, 10 Nov 2018 14:47:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.2-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:41fe9f05b41e5974ebb85760819f69c9cd71eae1fa9d463b9904a2cf712f45fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48422338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea7572a2293f17f598bfcf863c533e45468cb86b0992eafd08eb82cd16eb0aa`
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
# Wed, 12 Sep 2018 13:05:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 12:50:23 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 12:50:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 12:50:23 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 12:50:28 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 10 Nov 2018 12:50:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 12:55:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 12:55:59 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 10 Nov 2018 12:56:00 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 12:56:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 12:56:01 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 12:56:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 10 Nov 2018 12:56:02 GMT
EXPOSE 9000/tcp
# Sat, 10 Nov 2018 12:56:02 GMT
CMD ["php-fpm"]
# Sat, 10 Nov 2018 14:58:55 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Nov 2018 14:58:55 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 10 Nov 2018 14:58:56 GMT
RUN apk add --no-cache 	bash
# Sat, 10 Nov 2018 15:00:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install memcached-3.0.4; 	pecl install redis-4.1.1; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 10 Nov 2018 15:00:34 GMT
VOLUME [/var/www/html]
# Sat, 10 Nov 2018 15:00:34 GMT
ENV JOOMLA_VERSION=3.9.0
# Sat, 10 Nov 2018 15:00:34 GMT
ENV JOOMLA_SHA1=db67108d2dd3e65ae05cecbc57958a425f6f340f
# Sat, 10 Nov 2018 15:00:39 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Nov 2018 15:00:40 GMT
COPY file:25b57bf11549456c8a7b3fadac31b0211225c2cd85b3a380a644dcec5f8a605c in /entrypoint.sh 
# Sat, 10 Nov 2018 15:00:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Nov 2018 15:00:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 15:00:41 GMT
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
	-	`sha256:604e33bd3d24ee0d133888155efc06f97e31c7a87705a721a40c7d4723695fc3`  
		Last Modified: Sat, 10 Nov 2018 13:11:59 GMT  
		Size: 12.2 MB (12161108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60efae9b2e68317f2c07a6034bf2abe516892f3ef98a37d084c6e4604fe358f1`  
		Last Modified: Sat, 10 Nov 2018 13:11:57 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514913c4f48bd848ea1d6bb513b6d94625fb6c8dc92e6285471ad5021bc93529`  
		Last Modified: Sat, 10 Nov 2018 13:12:02 GMT  
		Size: 16.6 MB (16558594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6ba6c0c00fd069748afb2cfb4d9d7af5c0fd4c563473091a55efc65081c6c4`  
		Last Modified: Sat, 10 Nov 2018 13:11:56 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e426a1b8458dccde102eb13b9fdcf43953bbe5e1c8d20dac4f15de0fccc7496c`  
		Last Modified: Sat, 10 Nov 2018 13:11:57 GMT  
		Size: 71.0 KB (71033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd1998b0581d829d3d1792d0f99503f9a33e7ab1f8335ac754abe98caf75dc`  
		Last Modified: Sat, 10 Nov 2018 13:11:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b549dd7f066ede3b9fda9eea0b42213b20c513fe53c61777dd02a54f97cedfc6`  
		Last Modified: Sat, 10 Nov 2018 13:11:57 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c0451bfd21308889fb2095214019bee64d9ab6d106acc7986906238727066c`  
		Last Modified: Sat, 10 Nov 2018 15:01:22 GMT  
		Size: 617.0 KB (616956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3941d352f578eaee46d3256f3722bfa05b68410e1922c51e76011fcd6b49a`  
		Last Modified: Sat, 10 Nov 2018 15:01:24 GMT  
		Size: 5.7 MB (5719299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f49bed260bb3ab14a2c601916555658d3a84c301245a1cd2ec7b043241bd373`  
		Last Modified: Sat, 10 Nov 2018 15:01:26 GMT  
		Size: 9.6 MB (9556941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ab79a73661b59c391c3847f4f1c050886105ceb7188d20c7a3d1c2403dc674`  
		Last Modified: Sat, 10 Nov 2018 15:01:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecae40026f0833f2b970dea6d8306b181d68a649195787e901bace76cb9911e`  
		Last Modified: Sat, 10 Nov 2018 15:01:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.2-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:e079a9dac3e162238f233f60d51d4c703788ae9002e733edae476d0c503a7ade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47210278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fa2fde5118a821cc118752780b80cbf9de3eee7d2721d85683469ce23c997d`
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
# Wed, 12 Sep 2018 11:20:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 10:40:56 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 10:40:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 10:40:57 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 10:41:06 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 10 Nov 2018 10:41:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:44:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 10:44:59 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:45:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 10:45:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 10:45:11 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 10:45:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 10 Nov 2018 10:45:14 GMT
EXPOSE 9000/tcp
# Sat, 10 Nov 2018 10:45:15 GMT
CMD ["php-fpm"]
# Sat, 10 Nov 2018 13:08:17 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 10 Nov 2018 13:08:18 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 10 Nov 2018 13:08:20 GMT
RUN apk add --no-cache 	bash
# Sat, 10 Nov 2018 13:10:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install memcached-3.0.4; 	pecl install redis-4.1.1; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 10 Nov 2018 13:10:37 GMT
VOLUME [/var/www/html]
# Sat, 10 Nov 2018 13:10:38 GMT
ENV JOOMLA_VERSION=3.9.0
# Sat, 10 Nov 2018 13:10:38 GMT
ENV JOOMLA_SHA1=db67108d2dd3e65ae05cecbc57958a425f6f340f
# Sat, 10 Nov 2018 13:10:46 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 10 Nov 2018 13:10:48 GMT
COPY file:25b57bf11549456c8a7b3fadac31b0211225c2cd85b3a380a644dcec5f8a605c in /entrypoint.sh 
# Sat, 10 Nov 2018 13:10:57 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 10 Nov 2018 13:10:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 13:10:59 GMT
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
	-	`sha256:a439b7b0eaa1e5d018f7c100af06e0592b9d0488442860aa226d8bedb27b236f`  
		Last Modified: Sat, 10 Nov 2018 11:20:07 GMT  
		Size: 12.2 MB (12161129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f6b41f6d1cbc96bdaf63696c24b0f0eaf2afa93a5e91c8aa47b73dae60a4d`  
		Last Modified: Sat, 10 Nov 2018 11:20:05 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4365089e1178741e2b6fcd1959d277d0424045a826dfb2913dbb2d0dc4b4612f`  
		Last Modified: Sat, 10 Nov 2018 11:20:11 GMT  
		Size: 15.7 MB (15724065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722cb7fa6650d101a991a63f972f5b93c27c56f82c1859f2c563507ca46b945c`  
		Last Modified: Sat, 10 Nov 2018 11:20:02 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3721839f16bb359c969abca7416bb60087db20cb77cd750eaec3ea7f37eea3`  
		Last Modified: Sat, 10 Nov 2018 11:20:02 GMT  
		Size: 71.7 KB (71671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5dc4374c2f98350177a4b77e48be9a49b52dd5a8f995b247aa0ecf0b025823`  
		Last Modified: Sat, 10 Nov 2018 11:20:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5829854ed03e74727b5e0b84b5953a1037a6268e1f14736196d0181a0d191fc`  
		Last Modified: Sat, 10 Nov 2018 11:20:02 GMT  
		Size: 7.8 KB (7780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ed28aa099a8d26856d0efbdafb7620e670ecca0f3aa0ce2cd7a94f69498125`  
		Last Modified: Sat, 10 Nov 2018 13:14:48 GMT  
		Size: 603.7 KB (603701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3876df87a53b53647047d8e2e63118286c0d7518f306647c6ed203f0b41d5386`  
		Last Modified: Sat, 10 Nov 2018 13:14:49 GMT  
		Size: 5.6 MB (5562292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850aad60feb96a896d1d61ecbb0fcc66848a259bef5489f83f6bbc62fe915b8a`  
		Last Modified: Sat, 10 Nov 2018 13:14:51 GMT  
		Size: 9.6 MB (9556032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa169cbf217b869c5e84bacbfbf308399aa3c6631a5dcb206bfc5f04cbd165d`  
		Last Modified: Sat, 10 Nov 2018 13:14:47 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850d7a11b636479e38062c74ad424b89f977102662e29d52bcf15ff664c9ca78`  
		Last Modified: Sat, 10 Nov 2018 13:14:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
