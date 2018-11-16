## `yourls:fpm-alpine`

```console
$ docker pull yourls@sha256:ebd2b80997f911d5585d796952eb11e5bfd138b988303d6f5e026fd6554d6a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:fpm-alpine` - linux; amd64

```console
$ docker pull yourls@sha256:14d3ca055c97085b14a3d16d44f46795f404fd970b7a03c52e0ccc489d5f1073
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35304860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95533e43ea0889384c902a673fa6d78c4130275b35a20f7e66c29e8b5d0ac19f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 15 Nov 2018 01:28:24 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Thu, 15 Nov 2018 01:28:25 GMT
RUN docker-php-ext-enable sodium
# Thu, 15 Nov 2018 01:28:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 01:28:37 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 01:28:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 15 Nov 2018 01:28:38 GMT
EXPOSE 9000/tcp
# Thu, 15 Nov 2018 01:28:38 GMT
CMD ["php-fpm"]
# Thu, 15 Nov 2018 03:42:00 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Thu, 15 Nov 2018 03:42:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 03:42:07 GMT
RUN apk add --no-cache bash
# Thu, 15 Nov 2018 03:42:08 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 03:42:08 GMT
ENV YOURLS_VERSION=1.7.2
# Thu, 15 Nov 2018 03:42:09 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Thu, 15 Nov 2018 03:42:10 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Thu, 15 Nov 2018 03:42:10 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Thu, 15 Nov 2018 03:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 03:42:11 GMT
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
	-	`sha256:653b6a7abcd8fb3ede4388125bb81c99515d0bdc98c9709622644f89d9ff613e`  
		Last Modified: Thu, 15 Nov 2018 02:42:37 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c14366a51674aab1f20840baad818b9e81ce55f8486429e1c8c54a169c77df7`  
		Last Modified: Thu, 15 Nov 2018 02:42:37 GMT  
		Size: 71.9 KB (71892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e7fcfe71617bff2d39cc4222bd169fa33118525c4ef347770929c05aa26654`  
		Last Modified: Thu, 15 Nov 2018 02:42:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12fc6c2f1b89f3b501700cc33bcd3b5d4496368c6fb28a64ae54f76f2bee96`  
		Last Modified: Thu, 15 Nov 2018 02:42:38 GMT  
		Size: 7.8 KB (7790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edf8061decbe2143444f0d7a13f405e48ad5fdad91d202dc8efbbbf2cb778c9`  
		Last Modified: Thu, 15 Nov 2018 03:47:44 GMT  
		Size: 353.2 KB (353204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffdcb615e89a3513058b274a2e8b5e82ad43a5013b9de184d50a8e2ed13a171`  
		Last Modified: Thu, 15 Nov 2018 03:47:43 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fc7435213b2a9c33d09e9ba137096c10273f168b7186276e5f8455eb266b12`  
		Last Modified: Thu, 15 Nov 2018 03:47:43 GMT  
		Size: 582.9 KB (582945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f1dacc39b1814128b1a1fcad6f1d0e19d318008908bfcc6d27b5ea5ca67e2c`  
		Last Modified: Thu, 15 Nov 2018 03:47:43 GMT  
		Size: 2.5 MB (2485636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265ccdaba29787964c944b637347297bdc6bc53875e36f71dce9b312dd1fc84f`  
		Last Modified: Thu, 15 Nov 2018 03:47:43 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d9ff957620146e83e2a8641282a6fe533fc1a91589a8e7df916edd1c6cdb75`  
		Last Modified: Thu, 15 Nov 2018 03:47:42 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; arm variant v6

```console
$ docker pull yourls@sha256:d95ab96cf40390a31fde9a784f95bfc528fc50d541ff041e5aea2107c1ecc7c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34129539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa1f64244be60f1647967643f144183cc1f990d66ca3e5564b9aabe9cb0a1ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 16 Nov 2018 09:23:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 09:23:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:26:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 09:26:19 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:26:20 GMT
RUN docker-php-ext-enable sodium
# Fri, 16 Nov 2018 09:26:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 09:26:21 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 09:26:22 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Nov 2018 09:26:23 GMT
EXPOSE 9000/tcp
# Fri, 16 Nov 2018 09:26:23 GMT
CMD ["php-fpm"]
# Fri, 16 Nov 2018 10:32:18 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 16 Nov 2018 10:32:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Nov 2018 10:32:22 GMT
RUN apk add --no-cache bash
# Fri, 16 Nov 2018 10:32:22 GMT
VOLUME [/var/www/html]
# Fri, 16 Nov 2018 10:32:22 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 16 Nov 2018 10:32:25 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 16 Nov 2018 10:32:25 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Fri, 16 Nov 2018 10:32:26 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Fri, 16 Nov 2018 10:32:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 10:32:27 GMT
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
	-	`sha256:74aeb54f6235b24c49b5f6cece4d5f8dde04807bc58031bd38768a8a44f10e54`  
		Last Modified: Fri, 16 Nov 2018 10:06:45 GMT  
		Size: 12.2 MB (12161112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0be66059d18261e5747913a9f6497035307cf33f287bdcfceeee9db5eeb155`  
		Last Modified: Fri, 16 Nov 2018 10:06:43 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ec4d5fa4a044127d3c128710d48f63b5c98781b03bff54a46c55001fb97b23`  
		Last Modified: Fri, 16 Nov 2018 10:06:48 GMT  
		Size: 15.0 MB (15031332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcff35367895603f4c86cf843a7fa3b578e21cba2f4a96d644147915eb8ef92`  
		Last Modified: Fri, 16 Nov 2018 10:06:42 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67194eafc80009dcdbe924fca98f98996f6f36fff965e88c0c2a68ef185e0612`  
		Last Modified: Fri, 16 Nov 2018 10:06:42 GMT  
		Size: 71.4 KB (71419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32daed85cbaa5d0d43efec1435c114064a758a93e6f939a8e1cb2d0cb05c30ce`  
		Last Modified: Fri, 16 Nov 2018 10:06:42 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e733e8362fcd1a3cd9c26e60b5ab599d9c9053b0238e3ffaffeec39891846e1`  
		Last Modified: Fri, 16 Nov 2018 10:06:42 GMT  
		Size: 7.8 KB (7780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a455d6f588569ea2fdd33483f7ada664953cbc83f1842fe1ffba687acc5e66`  
		Last Modified: Fri, 16 Nov 2018 10:32:56 GMT  
		Size: 340.6 KB (340629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f7fae80f5625c589b859ff8edc506e40b4b4c9f13c7f0f9d758f3b76ab5cfd`  
		Last Modified: Fri, 16 Nov 2018 10:32:55 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995df91d3272561fd43392028564ecb943c05c59588ddbf8bffbcf60caeed87e`  
		Last Modified: Fri, 16 Nov 2018 10:32:55 GMT  
		Size: 562.4 KB (562365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8630219d5aa5f682e51c01e96595f376eb0b376528e117886854361b49842f`  
		Last Modified: Fri, 16 Nov 2018 10:32:55 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ebdeff0dccd2300ada31a9876599b0fed2307655feb6fc891f43e4cd209aee`  
		Last Modified: Fri, 16 Nov 2018 10:32:55 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebaf6ad1fbe432390e6c7dfa7a4eb686e4ed83a5aed20603d7f1f4dc259b20e`  
		Last Modified: Fri, 16 Nov 2018 10:32:55 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:7442e8967edb3b764f5cc14aaee13fb9d397f218dfe058cf97cff28525043b7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33875641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1db3c6360da4388ecd0dea1da0fa4a9043335516ae5f6321dcc3126f86fbe28`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 15 Nov 2018 10:11:53 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Thu, 15 Nov 2018 10:11:55 GMT
RUN docker-php-ext-enable sodium
# Thu, 15 Nov 2018 10:11:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 10:11:56 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 10:11:58 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 15 Nov 2018 10:11:58 GMT
EXPOSE 9000/tcp
# Thu, 15 Nov 2018 10:11:59 GMT
CMD ["php-fpm"]
# Thu, 15 Nov 2018 12:07:57 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Thu, 15 Nov 2018 12:07:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 12:08:00 GMT
RUN apk add --no-cache bash
# Thu, 15 Nov 2018 12:08:01 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 12:08:02 GMT
ENV YOURLS_VERSION=1.7.2
# Thu, 15 Nov 2018 12:08:05 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Thu, 15 Nov 2018 12:08:06 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Thu, 15 Nov 2018 12:08:07 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Thu, 15 Nov 2018 12:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 12:08:09 GMT
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
	-	`sha256:2548c9507e77f99a85e34e8391ba2ed832b7a3661073efd21c3a36e1705413a9`  
		Last Modified: Thu, 15 Nov 2018 11:04:59 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22e5d17d5f5fc47f7b216a473f95cb204e88fef7305871f088d47a84e3b4c1a`  
		Last Modified: Thu, 15 Nov 2018 11:05:00 GMT  
		Size: 70.9 KB (70919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb229c543588112e33cf7a445ad6e6caa460ee3fe555dc57dacc75632049f8`  
		Last Modified: Thu, 15 Nov 2018 11:04:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06bd09a2719b2c9d17ffb47058cb4e0cb3bd0cf8a968419e74d0690511ad355`  
		Last Modified: Thu, 15 Nov 2018 11:04:59 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba166b5fbf7a841d327d861d9b67f84cf9044e616fc9739396c987fc7e79e8b`  
		Last Modified: Thu, 15 Nov 2018 12:08:52 GMT  
		Size: 332.9 KB (332931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1462b61921aeb650a3ce6c8f90690d9bfaeb4a9ef0e367c529373ce1c754b10c`  
		Last Modified: Thu, 15 Nov 2018 12:08:50 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2756735381b40026eddb8389f71d896725bad7d065ed763294bded92a82e77cb`  
		Last Modified: Thu, 15 Nov 2018 12:08:50 GMT  
		Size: 546.2 KB (546209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6989e2ee58efd1eb2150bccd862112d91b76f128e166a519a965959a0a7c2fe3`  
		Last Modified: Thu, 15 Nov 2018 12:08:51 GMT  
		Size: 2.5 MB (2485633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7b11d4bf01397ebd13ddd846dbe2627bf678af1424495ec167b55c468b0719`  
		Last Modified: Thu, 15 Nov 2018 12:08:50 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6bf0960508935dc7ad1510b754c3e5689a9fc8aad47672dfe5496808bb0014`  
		Last Modified: Thu, 15 Nov 2018 12:08:50 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; 386

```console
$ docker pull yourls@sha256:cf862597a30241a881707ac1a059507f60c67a741dbdb3fc04a6d2138f5215d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35995118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30597c55609aea07641b96bf20aaf40fb7fd9d7409356c6efc6d450a5a354d6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 15 Nov 2018 12:04:12 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Thu, 15 Nov 2018 12:04:13 GMT
RUN docker-php-ext-enable sodium
# Thu, 15 Nov 2018 12:04:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 12:04:14 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 12:04:14 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 15 Nov 2018 12:04:15 GMT
EXPOSE 9000/tcp
# Thu, 15 Nov 2018 12:04:15 GMT
CMD ["php-fpm"]
# Thu, 15 Nov 2018 13:49:34 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Thu, 15 Nov 2018 13:49:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 13:49:35 GMT
RUN apk add --no-cache bash
# Thu, 15 Nov 2018 13:49:36 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 13:49:36 GMT
ENV YOURLS_VERSION=1.7.2
# Thu, 15 Nov 2018 13:49:37 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Thu, 15 Nov 2018 13:49:38 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Thu, 15 Nov 2018 13:49:38 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Thu, 15 Nov 2018 13:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 13:49:39 GMT
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
	-	`sha256:58e6d99ad159604969c62004ed1b80d1eb823bc34f7dfa09228674df7dfcf817`  
		Last Modified: Thu, 15 Nov 2018 13:02:39 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe363ad28e18251f1bf4e06c741299544fec2a926f520ab530a7d6df7a4342b`  
		Last Modified: Thu, 15 Nov 2018 13:02:40 GMT  
		Size: 71.0 KB (71039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a124c1bfed9cb763825b0d8ead055535e952c6ef70f894f1a98dc01cd571bf`  
		Last Modified: Thu, 15 Nov 2018 13:02:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c80cebb8bae90ec84ae9d0649db5dad20e2e66181c7d53bd213f94e40044373`  
		Last Modified: Thu, 15 Nov 2018 13:02:40 GMT  
		Size: 7.8 KB (7789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5e4a2dfa7f9b1667e9099d02d9543711b2dbf5761fe8fb28a11e104d6dd6ed`  
		Last Modified: Thu, 15 Nov 2018 13:50:05 GMT  
		Size: 361.9 KB (361935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9397dc3b59fe61bacdebf6c3548401dbd2091d2bf547e3bb18fa66bdecebe121`  
		Last Modified: Thu, 15 Nov 2018 13:50:04 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647cca7e4dc4c43aeb9dbfc6931495112cc9b17cc9270cb0f86236b897078ada`  
		Last Modified: Thu, 15 Nov 2018 13:50:05 GMT  
		Size: 617.0 KB (616954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e2079e7fb900795855ce5cbcad6eeed3d50a2c8b2e4e5e3a85a6837a61ebc5`  
		Last Modified: Thu, 15 Nov 2018 13:50:05 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8e2ec27b353a92b8871744caa49ad48be8161cefb1bae2dfa30e02fd8daa0e`  
		Last Modified: Thu, 15 Nov 2018 13:50:04 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a89d448017c14a6e47fe55a654f10b0baffb6c9652705893e0892a4364330e`  
		Last Modified: Thu, 15 Nov 2018 13:50:04 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; ppc64le

```console
$ docker pull yourls@sha256:a43b13f9c412bf045afcab8c5cf0e0b41026520be9ff020e8bf7594590c8fd8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34936560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2c32db17eb0bfad9e4c1ea658b820d8f539a434d83a97a9d497ea8723c9559`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 15 Nov 2018 09:36:32 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Thu, 15 Nov 2018 09:36:35 GMT
RUN docker-php-ext-enable sodium
# Thu, 15 Nov 2018 09:36:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 09:36:37 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 09:36:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 15 Nov 2018 09:36:40 GMT
EXPOSE 9000/tcp
# Thu, 15 Nov 2018 09:36:40 GMT
CMD ["php-fpm"]
# Thu, 15 Nov 2018 11:11:02 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Thu, 15 Nov 2018 11:11:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 11:11:08 GMT
RUN apk add --no-cache bash
# Thu, 15 Nov 2018 11:11:09 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 11:11:10 GMT
ENV YOURLS_VERSION=1.7.2
# Thu, 15 Nov 2018 11:11:15 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Thu, 15 Nov 2018 11:11:17 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Thu, 15 Nov 2018 11:11:20 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Thu, 15 Nov 2018 11:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 11:11:22 GMT
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
	-	`sha256:08d5a6633323a2b03d83fbba851ff60971e7e85bd47e3cbea8e9943cd1ee416a`  
		Last Modified: Thu, 15 Nov 2018 10:23:18 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca58081a6caf712513df77176d107e68bdf12698e7b4e2829a185ece28e9938c`  
		Last Modified: Thu, 15 Nov 2018 10:23:18 GMT  
		Size: 71.7 KB (71686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddcd30b54212cda3ab0aeefca3417b1fc70ca3de22f365cd3eaa71edd6d3b32`  
		Last Modified: Thu, 15 Nov 2018 10:23:18 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd3538f542e5f09e594f77863e94453aaba1c153e6d82feb7662d6130e0140d`  
		Last Modified: Thu, 15 Nov 2018 10:23:18 GMT  
		Size: 7.8 KB (7788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59e2c7038e17ca4b955ae50524755122d47a62ac97f955aa28f4949e802fb9`  
		Last Modified: Thu, 15 Nov 2018 11:14:33 GMT  
		Size: 357.5 KB (357517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f5a39a7ac738aa343a3d1cfa37c00503f2ff6b917d014028f4f648c71ab816`  
		Last Modified: Thu, 15 Nov 2018 11:14:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9fcc26bf779df052c362ae979d3926a75c1f635a2cd59f67a95d342fe4aec5`  
		Last Modified: Thu, 15 Nov 2018 11:14:30 GMT  
		Size: 603.7 KB (603700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3521b94c43f54b281448550eaa9712eae50d2e2d092019b027be6b075e35c8`  
		Last Modified: Thu, 15 Nov 2018 11:14:30 GMT  
		Size: 2.5 MB (2485634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe843ada8d892347a870351e9568a79402f20cc6ecd41234ee9fef72555ca4a0`  
		Last Modified: Thu, 15 Nov 2018 11:14:29 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d64846a2a7352096c9f960e9a46b7e6150006865a086706d2f6f528e156f15a`  
		Last Modified: Thu, 15 Nov 2018 11:14:30 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
