## `php:zts-alpine3.9`

```console
$ docker pull php@sha256:7b772b7bb20e590a63f1b82b0168cfc3545f55604df7d8e729e8a01050b785dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:zts-alpine3.9` - linux; amd64

```console
$ docker pull php@sha256:f97a5c2ac5a659749e92a9ff78f3a1b5bba8b32ee6f812257989092e1c8fe440
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28476853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06aac5c9cfef8af84f5793f9358eac73f22265feeb7b2d2c4f5e26d384eb19a5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:04:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 03:04:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 03:04:45 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 03:04:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 03:04:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 03:19:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 11 May 2019 03:19:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 03:19:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 03:19:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 03:19:51 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 01 Jun 2019 00:00:13 GMT
ENV PHP_VERSION=7.3.6
# Sat, 01 Jun 2019 00:00:14 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:00:14 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Sat, 01 Jun 2019 00:00:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 01 Jun 2019 00:00:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:06:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc 	&& php --version
# Mon, 17 Jun 2019 22:06:49 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:06:51 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 22:06:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 22:06:51 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7270d632124c8dabb3e1a1422cb5be11fd258bc4b112d4117d29780cc65fed4c`  
		Last Modified: Sat, 11 May 2019 04:11:49 GMT  
		Size: 1.4 MB (1437188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13605bac8660f61b690b20fbd38fa9e88b99f50a7ffc860a9fd4a16030ac9113`  
		Last Modified: Sat, 11 May 2019 04:11:49 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5ed3c35631399f4c4ee0510f76c329ef4ceedfb838d8548e5ad5a82beebece`  
		Last Modified: Sat, 11 May 2019 04:11:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815818ac766e44e60374774ffd53adc3d30dcf2a9c1c59347f966da36903a335`  
		Last Modified: Sat, 01 Jun 2019 04:29:57 GMT  
		Size: 12.0 MB (12008709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1745bb26d026fdc35921020190b0b70c7cc1ba9e7421cee82784905cc1f6eb45`  
		Last Modified: Sat, 01 Jun 2019 04:29:56 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0738c22206da68d7c0cd33bca357afa3cc3bcc529aaee4e8004bf0a0c0a652c9`  
		Last Modified: Tue, 18 Jun 2019 01:17:35 GMT  
		Size: 12.2 MB (12197735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581bceede2117246ddf922db724d444cdc99d76625f34f756201d774002bd770`  
		Last Modified: Tue, 18 Jun 2019 01:17:31 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896bea5d7b88824cd9820b8bc07d420a0f7b540fda000506dc57ac9cb115d986`  
		Last Modified: Tue, 18 Jun 2019 01:17:31 GMT  
		Size: 72.0 KB (72017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine3.9` - linux; arm variant v6

```console
$ docker pull php@sha256:06e946f6735feafc1cc3f12292b334337876ddfa578ea5f8b7f41252c9ca426c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27409846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7366e8bb76a8f7a6d23259dcf4c9d4a192c69cb8af5c0be24737225660415e84`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 08:06:02 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 08:06:04 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 08:06:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 08:06:05 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 08:13:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 11 May 2019 08:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 08:13:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 08:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 08:13:36 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 31 May 2019 23:57:38 GMT
ENV PHP_VERSION=7.3.6
# Fri, 31 May 2019 23:57:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Fri, 31 May 2019 23:57:39 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Fri, 31 May 2019 23:57:43 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Fri, 31 May 2019 23:57:44 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:12:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc 	&& php --version
# Mon, 17 Jun 2019 21:12:37 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:12:39 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 21:12:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:12:40 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d9d1dbeac19280c3964daa9f19dc5176bc3a1f68a182c50a2828c61a7c0956`  
		Last Modified: Sat, 11 May 2019 08:42:31 GMT  
		Size: 1.4 MB (1382917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c333226d9b15dde04c8d0d6ca49e5993dbfc5ef7a9aba068c18804d666eab6e`  
		Last Modified: Sat, 11 May 2019 08:42:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e43ebfd6d6825d1a9fa88ded3dc046a3d7f3143e78919119999ee188ee528`  
		Last Modified: Sat, 11 May 2019 08:42:31 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11874ebe46676b283fcac7297829695263399151448c0d44337f85501086da3a`  
		Last Modified: Sat, 01 Jun 2019 01:05:28 GMT  
		Size: 12.0 MB (12008732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea65d69650d85d96d0a9366cf3973cb0a87bd7073fcd149218f33d7d318cf05`  
		Last Modified: Sat, 01 Jun 2019 01:05:27 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310e5404afb2c9d4692effc421faf2b9e0d2dfb3b628df65527da64e0196f0cc`  
		Last Modified: Mon, 17 Jun 2019 21:40:01 GMT  
		Size: 11.4 MB (11398986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39db713de80387a50b42ffe79ced33794b04a71b6517ee715de445fb4ecf3cb`  
		Last Modified: Mon, 17 Jun 2019 21:39:55 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b37f1bc486179a5bb37fbbb6e0269a6d7bfdb65539e19df67166e1d2eb7a64`  
		Last Modified: Mon, 17 Jun 2019 21:39:55 GMT  
		Size: 71.5 KB (71536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine3.9` - linux; arm variant v7

```console
$ docker pull php@sha256:531fe08d13da326ef8cf94400b8d5bd2fbe5353ec583f5b7ca3c53f4c95f518e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26386696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f00809a68238101266e19467d3a28b75ccd1a502ad5f47594952f3a447475c6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:29:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 12:29:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 12:29:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 12:29:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 12:29:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 12:37:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 11 May 2019 12:37:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 12:37:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 12:37:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 12:37:36 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 01 Jun 2019 00:25:34 GMT
ENV PHP_VERSION=7.3.6
# Sat, 01 Jun 2019 00:25:35 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:25:35 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Sat, 01 Jun 2019 00:25:40 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 01 Jun 2019 00:25:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:54:33 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc 	&& php --version
# Mon, 17 Jun 2019 21:54:34 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:54:36 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 21:54:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:54:37 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d155f61954409b6a14bf8848b56aabd95029cf4f2a893160c4152d228d54d89`  
		Last Modified: Sat, 11 May 2019 13:07:07 GMT  
		Size: 1.3 MB (1285862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a751981240934e3d6db04cb9c42cf9338b0693bcfc27d4aa372d40ebbdc61c1`  
		Last Modified: Sat, 11 May 2019 13:07:07 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4d65835cf797d271224e4ac0400015fe43ca2575d405541bd1b376d758a27b`  
		Last Modified: Sat, 11 May 2019 13:07:07 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500a0091266d708f4af3834ef618560b20f6cede2188920e82475f2d4b23f258`  
		Last Modified: Sat, 01 Jun 2019 01:55:31 GMT  
		Size: 12.0 MB (12008710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334587c7e9483cd26e193ca38c3615910c670abf0eb44c748727ed589bfd3e7b`  
		Last Modified: Sat, 01 Jun 2019 01:55:31 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854195198e86f3c2df9c37d1e80c3ca5bfb278002f2332c7a02fe9e3a5aedfd0`  
		Last Modified: Mon, 17 Jun 2019 22:57:59 GMT  
		Size: 10.7 MB (10665683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78aaa2d0925569eba079661a772096f5419ea310c464dc05f43f0a1910b1414`  
		Last Modified: Mon, 17 Jun 2019 22:57:56 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb381d8d1ac8b66f73e56067c1ca823df0ed201314620f20cdc03c2bc0ce0c7`  
		Last Modified: Mon, 17 Jun 2019 22:57:56 GMT  
		Size: 71.5 KB (71521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull php@sha256:a40d68f2eb36f419eea4b93f732aa01caa28e73b3ff93451d8d7b36464ecb3c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28326848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a11b76ca5b96a9c8117e1e8f6a69b5ebf6c4411536703a9e529086e4c1e5d0`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Fri, 31 May 2019 23:57:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 31 May 2019 23:57:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 31 May 2019 23:57:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 31 May 2019 23:57:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 31 May 2019 23:57:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 01 Jun 2019 00:06:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 01 Jun 2019 00:06:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 01 Jun 2019 00:06:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 01 Jun 2019 00:06:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 01 Jun 2019 00:06:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 01 Jun 2019 00:06:43 GMT
ENV PHP_VERSION=7.3.6
# Sat, 01 Jun 2019 00:06:44 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:06:45 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Sat, 01 Jun 2019 00:06:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 01 Jun 2019 00:06:50 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:38:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc 	&& php --version
# Mon, 17 Jun 2019 21:38:11 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:38:13 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 21:38:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:38:14 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16f3b53022c0e3d9f8c28c4a0bbc9b73f4fb9af038a93b32fc5e7b7dcafb2dc`  
		Last Modified: Sat, 01 Jun 2019 01:49:12 GMT  
		Size: 1.4 MB (1444233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9b1ce4b8de210dd491d88b2e5d17aa56ddcd43e7b0c1198ad40227ecab037b`  
		Last Modified: Sat, 01 Jun 2019 01:49:11 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464bf3145cfeb6eda3a8f7eb92496ab05e70cd0ca922cedf894246e4d3d28f0c`  
		Last Modified: Sat, 01 Jun 2019 01:49:11 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a5a4bb3242f63aca5962e6ed3be0bdf5386c5c3b5492927177059486a2303a`  
		Last Modified: Sat, 01 Jun 2019 01:50:18 GMT  
		Size: 12.0 MB (12008744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4639e7fb953ac549328ea78c0895eb06784916fe04df7e0416081e5b6ad1bce8`  
		Last Modified: Sat, 01 Jun 2019 01:50:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1af080653a4a79d4e64c69b3e1bf00780c7ff67227548a9ec3c5f54897eaa6`  
		Last Modified: Mon, 17 Jun 2019 22:44:24 GMT  
		Size: 12.1 MB (12109816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59cb1c1ed75050171456daa2f0d2309177d01337099a96719b2a758846cb0210`  
		Last Modified: Mon, 17 Jun 2019 22:44:20 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bc1be502bdeecc91b075bd20ecd8cc625b424392b703932d85de68ad8ed25b`  
		Last Modified: Mon, 17 Jun 2019 22:44:20 GMT  
		Size: 71.0 KB (71029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine3.9` - linux; 386

```console
$ docker pull php@sha256:83416ba098632f500e9a230094c5bc6ddc461b8b5ddc4738d2cca8927c5d1ba5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28921461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daeb6d9ee943ecf0f5f0d4f4c46f0b217094b034d6d1571e577977ea21ebd228`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:23:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 14:23:32 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 14:23:33 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 14:23:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 14:23:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 14:36:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 11 May 2019 14:36:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 14:36:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 14:36:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 14:36:35 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 01 Jun 2019 00:37:07 GMT
ENV PHP_VERSION=7.3.6
# Sat, 01 Jun 2019 00:37:08 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:37:08 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Sat, 01 Jun 2019 00:37:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 01 Jun 2019 00:37:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:53:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc 	&& php --version
# Mon, 17 Jun 2019 22:53:08 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:53:10 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 22:53:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 22:53:10 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ff3d9753e7cf69bb0f3f759c29130dcdc9164fbd0f97c70570bfdd13684a9d`  
		Last Modified: Sat, 11 May 2019 15:22:24 GMT  
		Size: 1.5 MB (1535403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62ecb381a0a97aeaef290553ea1e5da3a2ae7d6e38433e768845967b989c288`  
		Last Modified: Sat, 11 May 2019 15:22:24 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bc88c4decc663daffc30ca08294291292d6c5d2b4426abfacb6115cf4b59d8`  
		Last Modified: Sat, 11 May 2019 15:22:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d55a822f2f8e348c0dc234af6793caa840108fa34eb88100c26658f645842b`  
		Last Modified: Sat, 01 Jun 2019 05:15:26 GMT  
		Size: 12.0 MB (12008712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03d26d07090259305f7501ab107af52473918e29615cfaedab8abfb99b98b97`  
		Last Modified: Sat, 01 Jun 2019 05:15:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675029c303b843f4ff23423befabf99f5044bab85fc50c377ad21ab506afd0f2`  
		Last Modified: Tue, 18 Jun 2019 01:19:15 GMT  
		Size: 12.5 MB (12549935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3621c670c155b2dbf8bf0816dbcff7dab7c9d621cda79a8f23b7472aa21ad260`  
		Last Modified: Tue, 18 Jun 2019 01:19:06 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc4a02350ba005ebae68ea9a372ca5e323b5abf42292eb757c66dddfc7882e6`  
		Last Modified: Tue, 18 Jun 2019 01:19:06 GMT  
		Size: 71.1 KB (71145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine3.9` - linux; ppc64le

```console
$ docker pull php@sha256:95a45889debcd47cdf84147b4b85d8fee3b3af5fb9ee8f129ad27fa68ebe44f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29492505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420b0829143fc25e4e0522c9866fc0262c5d858af1d9cb3da4b2875a75f696fb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Fri, 31 May 2019 23:50:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 31 May 2019 23:50:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 31 May 2019 23:50:14 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 31 May 2019 23:50:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 31 May 2019 23:50:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 01 Jun 2019 00:01:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 01 Jun 2019 00:01:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 01 Jun 2019 00:01:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 01 Jun 2019 00:01:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 01 Jun 2019 00:01:28 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 01 Jun 2019 00:01:29 GMT
ENV PHP_VERSION=7.3.6
# Sat, 01 Jun 2019 00:01:31 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:01:32 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Sat, 01 Jun 2019 00:01:46 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 01 Jun 2019 00:01:48 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:30:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc 	&& php --version
# Mon, 17 Jun 2019 21:30:59 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:31:03 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 21:31:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:31:07 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efff90199929310a29ba7dd6e3e88afa99e3a3ed439506da9799b44d0d224d46`  
		Last Modified: Sat, 01 Jun 2019 02:19:14 GMT  
		Size: 1.5 MB (1485216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2450f3797c2ce335515a99ca6268a4ac25771669b76aecb80546125de5aad8b3`  
		Last Modified: Sat, 01 Jun 2019 02:19:12 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851525000977a3fb6ad317500243aea2b6f423a04b9ba21663e0efb815ae409`  
		Last Modified: Sat, 01 Jun 2019 02:19:12 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec41a1512729d362db9fee8066ca0c221f0a6f2d22f789c7820b660fdad0acb4`  
		Last Modified: Sat, 01 Jun 2019 02:21:02 GMT  
		Size: 12.0 MB (12008728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8693acc1c967f0ce41326b7bf29b6054267b2f89672aeb7f6736be1b0a09c282`  
		Last Modified: Sat, 01 Jun 2019 02:21:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ab6d92dfc003673c6101b083022f0542c60c87e59330b6b95587b2163568fe`  
		Last Modified: Mon, 17 Jun 2019 23:02:55 GMT  
		Size: 13.1 MB (13141463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3fc650765b891f7aba70852fe29f9d4dcb47020bcd0a4bb31a53e3286948e2`  
		Last Modified: Mon, 17 Jun 2019 23:02:50 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3965b3b194db0ec27c357d7f889d80e6fa4aef800ac320e2f7e52033c7222ca2`  
		Last Modified: Mon, 17 Jun 2019 23:02:51 GMT  
		Size: 71.8 KB (71830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
