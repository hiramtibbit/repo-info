## `php:zts-alpine`

```console
$ docker pull php@sha256:0855eb9f86e6bbe9bb0295afe6fb5232770027dc9cd09cc4902672e5de83f992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:zts-alpine` - linux; amd64

```console
$ docker pull php@sha256:4959efe38a8708ca8b5c16651293be9bbd39f23fce0204bf666bddd3ad62e480
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28233756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89409b08323645bb15197c8454d0007571e9411796a65b08f49ceab33c933269`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:00:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 00:00:05 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 00:00:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 00:00:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 00:00:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 00:14:43 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Wed, 10 Apr 2019 00:14:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 00:14:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 00:14:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 00:14:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 00:14:44 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 00:14:44 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 00:14:44 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 00:14:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 00:14:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 00:25:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 00:25:12 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 00:25:13 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 00:25:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 00:25:14 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6e561c50e026054b7413aa88834a7ed97292eb60663ab45930f71ce6d05873`  
		Last Modified: Wed, 10 Apr 2019 01:17:36 GMT  
		Size: 1.4 MB (1437164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f581654c6ada4fba71ebfbfe4cd96430abe7b5dabebd92a6a62c11391a79cc98`  
		Last Modified: Wed, 10 Apr 2019 01:17:35 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f205a73992503ad7da02dbaf0a635da1604dec99f89f056c8db161ff3da6f514`  
		Last Modified: Wed, 10 Apr 2019 01:17:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee8dbd06a744d485e15202c0309804c9abb29ffaa01d3d57a180720b02d05e`  
		Last Modified: Wed, 10 Apr 2019 01:18:19 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3df343513a750ec7af5c7dd6b37afa4e3235b5829011a995efe1788fb84506`  
		Last Modified: Wed, 10 Apr 2019 01:18:17 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea62b85a0768dfd162109ab78641dc6db45b906760b5e19f5c986992e1721b23`  
		Last Modified: Wed, 10 Apr 2019 01:18:22 GMT  
		Size: 12.0 MB (11966856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e61b68da25bbdb257d81a74b15613cf653094881054bc6b710d366c3b07030`  
		Last Modified: Wed, 10 Apr 2019 01:18:17 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3ff50295d1445f680d02d2c66ddbfeef1da38b4046b733b2e3d4fb7439a0f6`  
		Last Modified: Wed, 10 Apr 2019 01:18:18 GMT  
		Size: 72.0 KB (71962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine` - linux; arm variant v6

```console
$ docker pull php@sha256:88c3a363abcb9a38a8fab058e120644e207dd6f633fc5d0018749b21ce638c73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27172317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55039c6fa4d6579781e731f9d88881f52bb74ae0950ba70a1cd1e0ac7d1d3324`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:47:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 08:47:20 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 08:47:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 08:47:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 08:47:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 08:55:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Wed, 10 Apr 2019 08:55:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 08:55:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 08:55:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 08:55:22 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 08:55:23 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 08:55:23 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 08:55:23 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 08:55:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 08:55:28 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:58:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 08:58:59 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:59:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 08:59:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 08:59:01 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced3a278b93563da486745edb7c10cb2410a4ec84163ba38336d42d25a745b4c`  
		Last Modified: Wed, 10 Apr 2019 09:23:11 GMT  
		Size: 1.4 MB (1382897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3adad16834c492476bdc5cbb5edb76b259959079fb55b5b14e0fa0a349f54`  
		Last Modified: Wed, 10 Apr 2019 09:23:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f253a87727f214296da38d6a2752cdc4c00e2fb333fbdc0c05e3151ef6d7f0`  
		Last Modified: Wed, 10 Apr 2019 09:23:10 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5cb363f317b2e4808819bb456b68af5fabf6117c92e70c31cd1269f9445898`  
		Last Modified: Wed, 10 Apr 2019 09:24:05 GMT  
		Size: 12.0 MB (11996632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360d083b7dd9ed175489150a6dedd83c555c5a98a83b3f776869ea0d881ff00c`  
		Last Modified: Wed, 10 Apr 2019 09:24:04 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3395c53773082ed9dac63825c1655cd5b2de9df81b41f56643c3bd997a8a9b3b`  
		Last Modified: Wed, 10 Apr 2019 09:24:10 GMT  
		Size: 11.2 MB (11173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e0c425a9e556a63cc915243c9d267ebd86fe16b3b5d2c78bec7222ee0061a`  
		Last Modified: Wed, 10 Apr 2019 09:24:04 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cff5dc9d1ff05121dc0297a78addbc5345bd0615691af07e99b479cc7b45b0`  
		Last Modified: Wed, 10 Apr 2019 09:24:04 GMT  
		Size: 71.5 KB (71487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine` - linux; arm variant v7

```console
$ docker pull php@sha256:0a51c64e30bca89d58b9a755cf05098259b48ab65bd93c346825d1ac3a48e758
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27871156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1416c72b1e6736010b54d1f119b50e768494b5c771059b3de58a54c720238c70`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Sat, 09 Mar 2019 13:16:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 13:16:04 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 09 Mar 2019 13:16:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 13:16:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 13:16:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 13:24:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 09 Mar 2019 13:24:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 13:24:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 13:24:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 13:24:08 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 12:21:54 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 12:21:54 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 12:21:55 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 12:21:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:25:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 12:25:24 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:25:26 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 12:25:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:25:26 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f284c38986ff1dbfe5bfaf88eac8db71398a838a3df5ad365ad644e20502f0b`  
		Last Modified: Sat, 09 Mar 2019 14:43:51 GMT  
		Size: 1.3 MB (1284642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19fe6ce2ae3ab70fa91af910ce61b907bd1943e490e8a0d837b5f9125231a0ab`  
		Last Modified: Sat, 09 Mar 2019 14:43:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750b00a67d097859bde6d4f083b98c52986ed91f17205ebdc67c52254f8ccd79`  
		Last Modified: Sat, 09 Mar 2019 14:43:50 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfed2072e4ad06a84635987ad1a54467eb8f550db9a47416302216bda9d6b3b1`  
		Last Modified: Sat, 06 Apr 2019 13:42:23 GMT  
		Size: 12.0 MB (11996616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58916acf66d29823dff39519786a89c455e072adeccd3c25503b2b7d62daa984`  
		Last Modified: Sat, 06 Apr 2019 13:42:21 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d113c2c34a48733e5754162edc4d6cfcadc8f33d93032084f0581e320b943`  
		Last Modified: Sat, 06 Apr 2019 13:42:25 GMT  
		Size: 12.2 MB (12165435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd54cf3eeacb621112d23b80954e2018232871e01cef1b4036fdb26b1bb4e2c7`  
		Last Modified: Sat, 06 Apr 2019 13:42:21 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14c95c95c19f29f2e163cc69231b20f051fdb0310e266a35286f6576547e61a`  
		Last Modified: Sat, 06 Apr 2019 13:42:21 GMT  
		Size: 71.7 KB (71653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine` - linux; arm64 variant v8

```console
$ docker pull php@sha256:07273641d60592f05427381ff268b8dfdd2cfb3be3b0ba99d9e349b3bac74b0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28078190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d56295fcf6a949a0ed6cbd5ffa23e17b6b08207676c77418871b4bf5dc8653`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:16:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 10:16:53 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 10:16:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 10:16:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 10:16:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 10:44:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Wed, 10 Apr 2019 10:44:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 10:44:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 10:44:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 10:44:22 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 10:44:24 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 10:44:25 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 10:44:26 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 10:44:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 10:44:37 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:59:28 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 10:59:29 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:59:32 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 10:59:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 10:59:33 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4d4c058c9484c09aacc75aaa536438be79ddf1dc96911b12d5f8e2431702fb`  
		Last Modified: Wed, 10 Apr 2019 12:21:57 GMT  
		Size: 1.4 MB (1444145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce60bb4176934f2b0ff58c1f7a464f8ba6123b120897beaed2a2a3098e264fe`  
		Last Modified: Wed, 10 Apr 2019 12:21:57 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad719ebf6954aaef148a134fc6e945814a86bc1e16f21ef9963221a226707bd`  
		Last Modified: Wed, 10 Apr 2019 12:21:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920898c98be9149a8cbddcb844812540327f2a3fb8a1738f76365ab9e6b5e577`  
		Last Modified: Wed, 10 Apr 2019 12:23:18 GMT  
		Size: 12.0 MB (11996628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c62ca98b2e50d8808ec8db81ae23fb59c38787a3f99d1541c6cf4763e8e854c`  
		Last Modified: Wed, 10 Apr 2019 12:23:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce37c04edb7a18d7e7f20796b8a72339f55ef99b54725e61a73f755593c10d8`  
		Last Modified: Wed, 10 Apr 2019 12:23:24 GMT  
		Size: 11.9 MB (11873510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ce552df5000c88b6765d48df9f9641257f239ce5f5426d825bac9592d8d7b5`  
		Last Modified: Wed, 10 Apr 2019 12:23:14 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0c3c6e8eb6738bb12dba60bbb04a22fb1eed631517cacd3d6507b611f7db30`  
		Last Modified: Wed, 10 Apr 2019 12:23:14 GMT  
		Size: 71.0 KB (70975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine` - linux; 386

```console
$ docker pull php@sha256:ad5fc81ba2c463bc371bc47f5f0a5ca6ca2cd2a7c11c0a0ab690276057995dd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30714640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35215036251cfb10dd504eec82ca5b542ab4a47d8b92d39938c48527d6eb17`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:50:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 13:58:06 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 09 Mar 2019 13:58:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 13:58:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 13:58:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 14:11:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 09 Mar 2019 14:11:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:11:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:11:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 14:11:09 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 11:24:25 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 11:24:25 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 11:24:25 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 11:24:28 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 11:24:28 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 11:30:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 11:30:56 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 11:30:57 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 11:30:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 11:30:57 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3662bef4a92105a32131e7aaa40e60729ae819e93028d909f0c124a03a1a0c`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 1.5 MB (1534175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a47d2b042c52f7e2572027ef6ac7deae9728521768dcac25fa8f4b24bed4610`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a0ee3a8e639e3bc98916787a49f606058dd70d9235923e7c302dad23b3964f`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a22342168f09bae751e96c32a049dd70d90a51960691b22a1584d40b9374ab`  
		Last Modified: Sat, 06 Apr 2019 14:33:17 GMT  
		Size: 12.0 MB (11996625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7083aa56e5ba538a8bf7026a53ceabf7a9c260671c72969f5167e19ce05b1564`  
		Last Modified: Sat, 06 Apr 2019 14:33:15 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9096c043516331011cad793558d41354eee64022028c918592b8a7e2166bf03`  
		Last Modified: Sat, 06 Apr 2019 14:33:21 GMT  
		Size: 14.4 MB (14359055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a0e095222b82377834cac153bba746ce8cf50cddb547d9c6059d6abd5738a`  
		Last Modified: Sat, 06 Apr 2019 14:33:15 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7703b117399b3092c5dcf99f91e2c0bcd47bba0a3a29f619ae72c1630a62e017`  
		Last Modified: Sat, 06 Apr 2019 14:33:16 GMT  
		Size: 71.3 KB (71277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine` - linux; ppc64le

```console
$ docker pull php@sha256:5ed783f64238db7e74f055f827fde9c6a526eb7c9b0e54db6c7e142c8d5b1059
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29237591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68814c788cb40b5e48c5cf6c4c1fe3255187eaad01fb21ab3ac8cb375708b9a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:08:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 11:08:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 11:08:37 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 11:08:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 11:08:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 11:20:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Wed, 10 Apr 2019 11:20:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 11:20:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 11:21:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 11:21:07 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 11:21:08 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 11:21:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 11:21:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 11:21:21 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 11:21:23 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 11:26:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 11:26:14 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 11:26:18 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 11:26:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 11:26:23 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27aba49f624392c74b92208a142e5b8394873221e656f091124cd19d954e9cc`  
		Last Modified: Wed, 10 Apr 2019 12:01:42 GMT  
		Size: 1.5 MB (1485215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779f53629e964458fcd4e8c7ff34a6d1336293b1d512a1d04b1bfe2a994333be`  
		Last Modified: Wed, 10 Apr 2019 12:01:41 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e21fde3ed1193487bcdd4168ca2a75d7d8d6ad56516877c0967488813e43d7`  
		Last Modified: Wed, 10 Apr 2019 12:01:41 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742abe459734387738b5426949fe1acc734c20e494405bd279fa992dba67c4ec`  
		Last Modified: Wed, 10 Apr 2019 12:03:23 GMT  
		Size: 12.0 MB (11996636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd7b23c0379b48ab734388966ffe4cca2c3f06d6a5e97e5418f0bbc2e3d34a`  
		Last Modified: Wed, 10 Apr 2019 12:03:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0c686b7a9459acf176fba5a24c9c82e645c55a35425036f5e3fb939b485563`  
		Last Modified: Wed, 10 Apr 2019 12:03:31 GMT  
		Size: 12.9 MB (12898707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce09ade094f638bff8a2d4dc513075604015d78da5fdb35b73ca4f9727de5b0`  
		Last Modified: Wed, 10 Apr 2019 12:03:21 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5403680a1923b918781917ebfa70c0a3b7d01fdadb355426370110444ccbc044`  
		Last Modified: Wed, 10 Apr 2019 12:03:21 GMT  
		Size: 71.8 KB (71778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
