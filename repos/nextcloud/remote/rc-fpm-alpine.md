## `nextcloud:rc-fpm-alpine`

```console
$ docker pull nextcloud@sha256:f9d016d97597366a8074367bbb6348333b8fcb2eaeaff89c0548427eb1964946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `nextcloud:rc-fpm-alpine` - linux; amd64

```console
$ docker pull nextcloud@sha256:fd77bd51c4b644b74692738c894b118cfd2f42da06c90a18271cb081266b529f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108899346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7cbcaf3334a894571b231fc312d63000c15a4b0985d169ad954f3d5ec0d277`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 22 Aug 2018 23:43:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 22 Aug 2018 23:44:01 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 22 Aug 2018 23:44:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 22 Aug 2018 23:44:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 22 Aug 2018 23:44:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 22 Aug 2018 23:48:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 22 Aug 2018 23:48:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 22 Aug 2018 23:48:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 22 Aug 2018 23:48:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 23 Aug 2018 00:18:24 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 23 Aug 2018 00:18:24 GMT
ENV PHP_VERSION=7.2.9
# Thu, 23 Aug 2018 00:18:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Thu, 23 Aug 2018 00:18:24 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Thu, 23 Aug 2018 00:18:33 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 23 Aug 2018 00:18:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 23 Aug 2018 00:21:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 23 Aug 2018 00:21:56 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 23 Aug 2018 00:21:58 GMT
RUN docker-php-ext-enable sodium
# Thu, 23 Aug 2018 00:21:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 23 Aug 2018 00:21:58 GMT
WORKDIR /var/www/html
# Thu, 23 Aug 2018 00:21:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 23 Aug 2018 00:22:00 GMT
EXPOSE 9000/tcp
# Thu, 23 Aug 2018 00:22:00 GMT
CMD ["php-fpm"]
# Fri, 31 Aug 2018 20:43:05 GMT
RUN set -ex;         apk add --no-cache         rsync     ;         rm /var/spool/cron/crontabs/root;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Fri, 31 Aug 2018 20:47:05 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         autoconf         freetype-dev         icu-dev         libjpeg-turbo-dev         libmcrypt-dev         libpng-dev         libmemcached-dev         libxml2-dev         openldap-dev         pcre-dev         postgresql-dev     ;         docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap;     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.12;     pecl install memcached-3.0.4;     pecl install redis-4.1.1;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --virtual .nextcloud-phpext-rundeps $runDeps;     apk del .build-deps
# Fri, 31 Aug 2018 20:47:06 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Fri, 31 Aug 2018 20:47:06 GMT
VOLUME [/var/www/html]
# Tue, 04 Sep 2018 18:20:31 GMT
ENV NEXTCLOUD_VERSION=14.0.0RC2
# Tue, 04 Sep 2018 18:20:49 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;     apk del .fetch-deps
# Tue, 04 Sep 2018 18:20:50 GMT
COPY multi:f33934cfb9da2d432252f25123e4239ab0550f895400c104c4593506cd83b53b in / 
# Tue, 04 Sep 2018 18:20:50 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Tue, 04 Sep 2018 18:20:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 18:20:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c1ef410e64792f45b76676346492d4a557c21f3bb68471cdee057aca282fe5`  
		Last Modified: Thu, 23 Aug 2018 02:26:42 GMT  
		Size: 1.4 MB (1352458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1230cd877c9ec93492e97a6a6e6b87770f3b5e5862da598626a6a1c5adb31b`  
		Last Modified: Thu, 23 Aug 2018 02:26:41 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4732b87605ade2aeb884907a7c95c8bdd4f93ec1b90a583daae00d70d3c9bc41`  
		Last Modified: Thu, 23 Aug 2018 02:26:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d22beca4ead39e043652fd4bdd519aaef4c5d1c88168d4e29cecee670b159`  
		Last Modified: Thu, 23 Aug 2018 02:59:37 GMT  
		Size: 13.4 MB (13423351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6f2dc7a835492d76f1157ffc0767e5641c6310c4d479740f5132749d4e4fa`  
		Last Modified: Thu, 23 Aug 2018 02:59:35 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58379cddc251838bf5b098465a077b191d97e8f2648f8d824a0a51ff5ea8fc74`  
		Last Modified: Thu, 23 Aug 2018 02:59:40 GMT  
		Size: 15.8 MB (15808390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d90a28e335ea54881086721d2825b7fe4bad7fe49ccada988cfd3b406f2b87`  
		Last Modified: Thu, 23 Aug 2018 02:59:33 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01ab2b12adf6284b52d69124d19bca79aa699d477f88e8d02456a901e06805`  
		Last Modified: Thu, 23 Aug 2018 02:59:32 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327709ec11c1684729ec57211176730d3533edcb9560e8c39f6f192be4b77a9c`  
		Last Modified: Thu, 23 Aug 2018 02:59:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e4c520ef5e21dd0750b388e35b60b2a176a6e48f57847c229445bcecefa0ed`  
		Last Modified: Thu, 23 Aug 2018 02:59:32 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003d7233eb71140e5613107d5f033db4464b0975697d777f049493476b8ee40`  
		Last Modified: Fri, 31 Aug 2018 20:59:10 GMT  
		Size: 338.9 KB (338851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9e4be0ce3c035e1db2329233726f196f191721eccd0cfc93d257c5a638cb59`  
		Last Modified: Fri, 31 Aug 2018 20:59:16 GMT  
		Size: 19.7 MB (19701385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d63926f8caf3e6de21a79eeffb85eeb66e979021c3c50dc96a388398fbe9a3`  
		Last Modified: Fri, 31 Aug 2018 20:59:09 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff9172ead03d02aac9fddb141f3bf86eeb79d1813000f32c92083e0804d4ab1`  
		Last Modified: Tue, 04 Sep 2018 18:22:30 GMT  
		Size: 56.0 MB (55982279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201c74b514f23ad6f2f0f913aa3d8d2222aeedba3152da41a97e9cf8bf8e34f6`  
		Last Modified: Tue, 04 Sep 2018 18:22:20 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0448c8297a9adb2a8bae993c299aedc8ce839dbfbc8e8c12e65f0912fdb440`  
		Last Modified: Tue, 04 Sep 2018 18:22:20 GMT  
		Size: 785.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:rc-fpm-alpine` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:39b734cac00965e980a249560e0baf8fe0dad12c2d70aec6e781bb59e0c884fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108608113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff52ab835942fe85c6274f97ab2a781e866a360497df0c0aca5b0a2252d8309`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:31:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 23 Aug 2018 09:31:25 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 23 Aug 2018 09:31:29 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 23 Aug 2018 09:31:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 23 Aug 2018 09:31:31 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 23 Aug 2018 09:36:07 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Thu, 23 Aug 2018 09:36:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 09:36:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 09:36:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 23 Aug 2018 10:18:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 23 Aug 2018 10:18:33 GMT
ENV PHP_VERSION=7.2.9
# Thu, 23 Aug 2018 10:18:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Thu, 23 Aug 2018 10:18:35 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Thu, 23 Aug 2018 10:18:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 23 Aug 2018 10:18:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 23 Aug 2018 10:22:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 23 Aug 2018 10:22:47 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 23 Aug 2018 10:23:08 GMT
RUN docker-php-ext-enable sodium
# Thu, 23 Aug 2018 10:23:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 23 Aug 2018 10:23:12 GMT
WORKDIR /var/www/html
# Thu, 23 Aug 2018 10:23:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 23 Aug 2018 10:23:27 GMT
EXPOSE 9000/tcp
# Thu, 23 Aug 2018 10:23:28 GMT
CMD ["php-fpm"]
# Sat, 01 Sep 2018 08:26:13 GMT
RUN set -ex;         apk add --no-cache         rsync     ;         rm /var/spool/cron/crontabs/root;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Sat, 01 Sep 2018 08:29:18 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         autoconf         freetype-dev         icu-dev         libjpeg-turbo-dev         libmcrypt-dev         libpng-dev         libmemcached-dev         libxml2-dev         openldap-dev         pcre-dev         postgresql-dev     ;         docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap;     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.12;     pecl install memcached-3.0.4;     pecl install redis-4.1.1;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --virtual .nextcloud-phpext-rundeps $runDeps;     apk del .build-deps
# Sat, 01 Sep 2018 08:29:21 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Sat, 01 Sep 2018 08:29:21 GMT
VOLUME [/var/www/html]
# Wed, 05 Sep 2018 08:18:31 GMT
ENV NEXTCLOUD_VERSION=14.0.0RC2
# Wed, 05 Sep 2018 08:19:17 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;     apk del .fetch-deps
# Wed, 05 Sep 2018 08:19:19 GMT
COPY multi:f33934cfb9da2d432252f25123e4239ab0550f895400c104c4593506cd83b53b in / 
# Wed, 05 Sep 2018 08:19:21 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 05 Sep 2018 08:19:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 08:19:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed9ca568fbc1657942b30a2bd41aeb43f38f4b24d9a2dcb8e517b8c2e1e3812`  
		Last Modified: Thu, 23 Aug 2018 12:10:41 GMT  
		Size: 1.3 MB (1320688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e701b5b7480bed8ca3587df70a25fe60675a65a24090afe87f3e8ea85a0a69a`  
		Last Modified: Thu, 23 Aug 2018 12:10:39 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ac1385573db761f0e54326a6db3ce9be52efc97a1d9cdc528eb4dde3248983`  
		Last Modified: Thu, 23 Aug 2018 12:10:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baaccf7ca9b39c12c178f397ad52250ca6ae9a6a9a07ba19300c4033da3d1184`  
		Last Modified: Thu, 23 Aug 2018 12:23:04 GMT  
		Size: 13.4 MB (13397798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f026428fb86c05716126da29cec47384bbe6f84a517796dea3012494122b32`  
		Last Modified: Thu, 23 Aug 2018 12:23:01 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a4b033b7efae06bee407c74f6da093bed633a0d97e359e5990450277e74e1`  
		Last Modified: Thu, 23 Aug 2018 12:23:07 GMT  
		Size: 15.5 MB (15483069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc935df1c1d3a7ea2a0ef21ac703b08e20754ad3595de13ed481a525f92428a`  
		Last Modified: Thu, 23 Aug 2018 12:22:57 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13732c44f53ece3f40863f42ccd1b095e4de293c66209cac5ff96c61792c7657`  
		Last Modified: Thu, 23 Aug 2018 12:22:57 GMT  
		Size: 71.6 KB (71630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee91363b164eaa0cecbbb3dd9766d0196680ec43aa948424744022a9e0a430a`  
		Last Modified: Thu, 23 Aug 2018 12:22:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8517050ed78b5b25810c9f367dcf5ae297ba51ece16d55709ac17249d7b6881`  
		Last Modified: Thu, 23 Aug 2018 12:22:57 GMT  
		Size: 7.8 KB (7785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207701f12ef010f353c5bcd718481e5ddc0762cc29fad472e38aab2fbb6ea402`  
		Last Modified: Sat, 01 Sep 2018 08:38:43 GMT  
		Size: 340.1 KB (340066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c0bdd467f3fb542fac962a6cfbe97d22e546350daa9480ebea255aaa3a3860`  
		Last Modified: Sat, 01 Sep 2018 08:38:46 GMT  
		Size: 19.8 MB (19829328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e1cd312b2132744fc1f995d875586b8c35f6dbfc4b19ef21e14cd55ec7050a`  
		Last Modified: Sat, 01 Sep 2018 08:38:40 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5975c847c22cd9753a08f6c277f112cb6b3a3ea65d65ffac89fd862aa3a64cb9`  
		Last Modified: Wed, 05 Sep 2018 08:24:14 GMT  
		Size: 56.0 MB (55956115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c5d8147e54cffeca84e25272233d489872e910143edfa11db73791826771e0`  
		Last Modified: Wed, 05 Sep 2018 08:24:00 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9830335df6f291160f3f4a90db7ba6288469e31465bc08cf361296fa606d3c`  
		Last Modified: Wed, 05 Sep 2018 08:23:59 GMT  
		Size: 787.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
