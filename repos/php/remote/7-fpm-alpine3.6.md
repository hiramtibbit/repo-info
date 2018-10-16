## `php:7-fpm-alpine3.6`

```console
$ docker pull php@sha256:6b3ddf357ddd00af398ff00bd46a77262c8faf22b8a91d567c8e57aa08aad23a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `php:7-fpm-alpine3.6` - linux; amd64

```console
$ docker pull php@sha256:b5e1117806dc35b2c152d6df8a8833bda1ff7495ed874eb4731e67ce1c5c55dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31743363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97e1041280037db095825970be3555efcf8a599e0b97b3c1fdeec1e0c63ee92`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:57:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 01:57:16 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 01:57:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 01:57:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 01:57:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 02:05:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 02:05:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 02:05:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 02:05:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:05:59 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 15 Oct 2018 19:22:54 GMT
ENV PHP_VERSION=7.2.11
# Mon, 15 Oct 2018 19:22:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 19:22:54 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Mon, 15 Oct 2018 19:22:58 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 15 Oct 2018 19:22:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:27:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 19:27:53 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:27:53 GMT
RUN docker-php-ext-enable sodium
# Mon, 15 Oct 2018 19:27:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 19:27:54 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 19:27:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 15 Oct 2018 19:27:55 GMT
EXPOSE 9000/tcp
# Mon, 15 Oct 2018 19:27:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349ae42501718afa0dd25bf69a703ce5a42b9a038f5c38ba934c507e038c9fc9`  
		Last Modified: Wed, 12 Sep 2018 04:18:38 GMT  
		Size: 1.4 MB (1377950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c53c071e20b0af11ef48d646654829fde1d3d09c38db039b0b0fccd01b7c9b`  
		Last Modified: Wed, 12 Sep 2018 04:18:39 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252b11906d4670d809a9a5e5573fb67b177962de2f0bd340db8efd9d50b78d9a`  
		Last Modified: Wed, 12 Sep 2018 04:18:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c4595077bc5aecdfd07371763e18d5d6f91c19e3ea372cc0aba6e202f10e57`  
		Last Modified: Mon, 15 Oct 2018 20:58:52 GMT  
		Size: 12.2 MB (12151955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf800c625296e966647a55def41acd208f1b148938404bfffd6e6919e17e0dd`  
		Last Modified: Mon, 15 Oct 2018 20:58:50 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6e6ddfcc2d0c11231167a70d26789bbc0aacd5af41fac88291676b4e76416b`  
		Last Modified: Mon, 15 Oct 2018 20:58:53 GMT  
		Size: 16.1 MB (16113556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a306e8664132ed7e5d747b53ba29f6126435772a55dfea343b2f486f23016e77`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27916fbff51b777d49f5ee31ce10dc1747f46ac0868a6f3ef86e0c5a5c647028`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 71.2 KB (71210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536d94532946ac4bf514403584885bc488307db801b43dc8c23607a9361e3af9`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96acb14315f612539d4f61d0ec08ec7dcdac5d96d82cd543f4d6134074c15d94`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:7-fpm-alpine3.6` - linux; arm variant v6

```console
$ docker pull php@sha256:9d9cd448d3a0c35e669008f104cfec3fdd525c8c7e6569c48f858e1106b846e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30665535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3393dcfc8ef36e16e2d56ed6f6c0773226451e48a9c1394f55a968cae105596`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:25 GMT
ADD file:60d227e1eb4173ca5983e94845f87937f410efc67381b2bd5653bbc3a69b9fd8 in / 
# Wed, 12 Sep 2018 07:49:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:26 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:07:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 08:07:59 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 08:07:59 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 08:08:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 08:08:02 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 08:08:45 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 08:08:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:08:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:08:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:08:46 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 16 Oct 2018 08:16:05 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 08:16:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 08:16:06 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 08:16:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 16 Oct 2018 08:16:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 08:19:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 08:19:15 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 16 Oct 2018 08:19:16 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 08:19:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 08:19:16 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 08:19:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 16 Oct 2018 08:19:18 GMT
EXPOSE 9000/tcp
# Tue, 16 Oct 2018 08:19:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:dab8097cee8be32fafc5e358b0234441807899ff13426ea62bb27636ebdafef7`  
		Last Modified: Wed, 12 Sep 2018 07:49:57 GMT  
		Size: 2.0 MB (1986616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b647550b2cae956d5c4717da3b31ff424ff466afd6ecce456508d81831b880bb`  
		Last Modified: Wed, 12 Sep 2018 07:49:56 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10c362bf589a6b9e324dd721627c2776deb4ca215e08e6418847dc352608542`  
		Last Modified: Sat, 15 Sep 2018 10:02:58 GMT  
		Size: 1.4 MB (1365069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c850bb2f337d5351dd497ba05e935e0168aae2a49fc2f5e08e1613babf1cee14`  
		Last Modified: Sat, 15 Sep 2018 10:02:58 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f756736caef93fef0fc0ef25a9b055d78cb7a41b8c533edde9447c93c2ea010`  
		Last Modified: Sat, 15 Sep 2018 10:02:57 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe07d0a76c3bb8e5c6e73fcd933bec4da2a9e999bd6867776f9d9e253eead26`  
		Last Modified: Tue, 16 Oct 2018 08:47:39 GMT  
		Size: 12.2 MB (12151960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f439fe7565ab661247ff6857dbba2fdb26972bc54aada0c91339f35f873c160`  
		Last Modified: Tue, 16 Oct 2018 08:47:37 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c24356603ae65cbaf34f3de5ae5bd395a365ee61bc4ab727a8119d1ddd0cb1c`  
		Last Modified: Tue, 16 Oct 2018 08:47:41 GMT  
		Size: 15.1 MB (15078943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bc113189332ebe7669a893f5b7ac1089ca0fb63d393bf2c77cf8103a0b8b74`  
		Last Modified: Tue, 16 Oct 2018 08:47:36 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991c204917bccf6e16e9ad77519a92a7a0e5d02b5614d330c1620b7a555e806`  
		Last Modified: Tue, 16 Oct 2018 08:47:36 GMT  
		Size: 70.7 KB (70682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceca86e7fa2bc212a46038bb0b22bc6f77f45053dfa0626e50479217ae8a9856`  
		Last Modified: Tue, 16 Oct 2018 08:47:36 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d121cc9ac9e05767c20b24d7d80f11b6bb8cfe73b053a6add5681ba58a4c46`  
		Last Modified: Tue, 16 Oct 2018 08:47:36 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:7-fpm-alpine3.6` - linux; ppc64le

```console
$ docker pull php@sha256:a04022be2845da5e5b6d1d88d2543637d2a64c31116d08cf3fde655bbdccdb22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31424485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b384ce80c009b900dea34ea80fd511a8cb68ae0f2e52335e2137fc7cc6cb17c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:20 GMT
ADD file:ac6fb657973826bcc805434ec04036bace84515a17a0803bd6b9235488d3e985 in / 
# Wed, 12 Sep 2018 08:17:22 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:24 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:58:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 11:58:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 11:59:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 11:59:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 11:59:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 12:06:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 12:06:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:06:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:06:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 12:06:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 16 Oct 2018 10:21:09 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 10:21:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 10:21:10 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 10:21:21 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 16 Oct 2018 10:21:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:25:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 10:25:14 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:25:20 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 10:25:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 10:25:22 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 10:25:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 16 Oct 2018 10:25:27 GMT
EXPOSE 9000/tcp
# Tue, 16 Oct 2018 10:25:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:623f555e4e23c80d8e2db55a68a737efbe693f740299effc70dbf74c4895194f`  
		Last Modified: Wed, 12 Sep 2018 08:19:00 GMT  
		Size: 2.0 MB (2033807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0128a462deeaf1826e23031dd5e2aba3fc190b759543d689128fb101d8370092`  
		Last Modified: Wed, 12 Sep 2018 08:18:59 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2235e4f84ecdc253e3f4a39f0fb3534e4960a18a50b9ea65a0e07968b643d60a`  
		Last Modified: Wed, 12 Sep 2018 14:13:12 GMT  
		Size: 1.4 MB (1367716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5063eb4d76934a0c8d79552d67546f074080538c7f1226616d7816a0ebe94f4f`  
		Last Modified: Wed, 12 Sep 2018 14:13:10 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9c5282e13e98eae44dc8479715d7a593eb03bbc60bd6d9656ea460de8f649b`  
		Last Modified: Wed, 12 Sep 2018 14:13:10 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8827418f5a2b5e676e475e44437b0df38de3fe4d5577b90aac81cafd5af82f76`  
		Last Modified: Tue, 16 Oct 2018 12:39:16 GMT  
		Size: 12.2 MB (12152013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c31257cfe2689406859abf87afd9bdc1f05fe71b5b05fddbca003cad4ab1e02`  
		Last Modified: Tue, 16 Oct 2018 12:39:13 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ae997cdc6e2da6dccc8f2f13f2c903ef6c49bafffbbe1ea4963b4256dae788`  
		Last Modified: Tue, 16 Oct 2018 12:39:18 GMT  
		Size: 15.8 MB (15787615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4d4757d18daecef7db6dd196525c68dd48c5ba63d2e49a1221a6d28f88ad2d`  
		Last Modified: Tue, 16 Oct 2018 12:39:10 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39dd5ef43659c8f3a24651c561640a070c52d42f3f8fbf4b1dedbc6b86ba3e2`  
		Last Modified: Tue, 16 Oct 2018 12:39:10 GMT  
		Size: 71.1 KB (71068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a678d3187ed2129d305a035c3f79e460ab01597c7a1af176e4e08e9dd52c83b6`  
		Last Modified: Tue, 16 Oct 2018 12:39:10 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a4508ba754dc069dac3273bad5c764f37d987005cd60ff3c3eb3598328337f`  
		Last Modified: Tue, 16 Oct 2018 12:39:10 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
