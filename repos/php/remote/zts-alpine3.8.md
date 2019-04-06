## `php:zts-alpine3.8`

```console
$ docker pull php@sha256:bf4a28fad3c066863bea9099719ef697092a68195d9869e2e75aff82d6c080ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `php:zts-alpine3.8` - linux; amd64

```console
$ docker pull php@sha256:2a2e80e606c5d421c3d7d1eed6edfb24f7cb232c2cbc33559625201db37a03fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27505488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3dabb41491f9da99fbb113969f96636ca32d099d6cb87b094d632130a5f4c5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:51:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 01:16:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		libressl
# Sat, 09 Mar 2019 01:16:46 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 01:16:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 01:16:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 01:31:03 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 09 Mar 2019 01:31:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:31:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:31:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 01:31:04 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 03:08:31 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 03:08:31 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 03:08:31 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 03:08:36 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 03:08:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 03:13:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 03:13:48 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 03:13:49 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 03:13:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 03:13:49 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb58026c06e5f2ec9d39d5332cf91158903048afa3f6f43c2e84a0c7159f42c`  
		Last Modified: Sat, 09 Mar 2019 04:13:12 GMT  
		Size: 1.4 MB (1357293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c24eee1bf47e63abd5e3942b13ef4bea49eb0ef1eda85e0a47fe7a6d15921a6`  
		Last Modified: Sat, 09 Mar 2019 04:13:12 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864f09cef0feb136927bbd2de5ef20e9e27a019e73698dcf13ef09c240182288`  
		Last Modified: Sat, 09 Mar 2019 04:13:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6dce81a7941a30228ec741b2240706f71ea823e19666d5fd9cac3b7d9133fc`  
		Last Modified: Sat, 06 Apr 2019 05:34:04 GMT  
		Size: 12.0 MB (11996577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767024aab63b3cb78a4645c571c37803358688afba2abaea6b8387395a2bd08d`  
		Last Modified: Sat, 06 Apr 2019 05:34:03 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b76b1ce90dd5af6e2d183a4b8b29c99a5dcd89b0aeb5b4c60d1f6bd0b0b578`  
		Last Modified: Sat, 06 Apr 2019 05:34:07 GMT  
		Size: 11.9 MB (11868559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65334cc0b0553400a158aebd02194322557c9d7d43b442ed5ce21bffea2760e6`  
		Last Modified: Sat, 06 Apr 2019 05:34:03 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f1e540561a4ab318640996086d69f6e737208a7a63e5831b7849358a343a7`  
		Last Modified: Sat, 06 Apr 2019 05:34:04 GMT  
		Size: 71.7 KB (71733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine3.8` - linux; arm variant v6

```console
$ docker pull php@sha256:97aee03be58b2a6c7334410f3b03d93d493edc5608fbe0f817f0d6c45b141425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26762194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bd44c28e39bdde5d20ce5b8419cd3624a2a1d13f6724c24778825926b789ea`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 09:01:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		libressl
# Sat, 09 Mar 2019 09:01:43 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 09:01:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 09:01:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 09:09:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 09 Mar 2019 09:09:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:09:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:09:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 09:09:30 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 08:13:53 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:13:54 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:13:54 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:14:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:14:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:17:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:17:15 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:17:17 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:17:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:17:18 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bf9c939363c9a27b88c90c158406e3749e23d8664e528c8b4647cff9d7b4b`  
		Last Modified: Sat, 09 Mar 2019 09:59:56 GMT  
		Size: 1.3 MB (1316089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c47152dc80beccc450fc118cec5bcaadbcb472456ea3fabd211037f5b6c623`  
		Last Modified: Sat, 09 Mar 2019 09:59:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e453d50961541490b28b1ead02ca5de6f49897d67d9d70a6393bc69da52ce2c`  
		Last Modified: Sat, 09 Mar 2019 09:59:55 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b358e02fe55ab9f2de777962732cb2ebfe5b3cef62f8bed3af3aa118297374`  
		Last Modified: Sat, 06 Apr 2019 09:03:06 GMT  
		Size: 12.0 MB (11996597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ccf9c8cfa425bb84c49b5ddea1a35505f9c3aa89cca82e467010a2f49c402c`  
		Last Modified: Sat, 06 Apr 2019 09:03:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdf7a81782b743fe477d663bb590695d392df5f069c639248b02c76464a7a47`  
		Last Modified: Sat, 06 Apr 2019 09:03:08 GMT  
		Size: 11.2 MB (11227888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d124ce709b98973eb24a9bbabc867d2ff576e42827a47925d779f074c89e289c`  
		Last Modified: Sat, 06 Apr 2019 09:03:04 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d03fe2fbcd9339e8227b6d8c643c7e4a508d1f17bdd41f0451451095f0981c`  
		Last Modified: Sat, 06 Apr 2019 09:03:04 GMT  
		Size: 71.3 KB (71270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:zts-alpine3.8` - linux; ppc64le

```console
$ docker pull php@sha256:071effd087f0b29dc280a60b3b578e653f5ed0ff2450382810f7fbc4a88676f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27214267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c70f3405fc5a6de87295638b90a32776d9481fd054b3e0b12c482a3ee48f82a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:40:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 10:02:59 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		libressl
# Sat, 09 Mar 2019 10:03:03 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 10:03:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 10:03:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 10:13:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Sat, 09 Mar 2019 10:14:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 10:14:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 10:14:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 10:14:07 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 09:18:49 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 09:18:51 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 09:18:53 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 09:19:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 09:19:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:23:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:23:09 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:23:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:23:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:23:22 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aecdfb3c5a375d71173dc5db918a91afcda71dd4815b5ccb06bd70fcfff1b00`  
		Last Modified: Sat, 09 Mar 2019 12:11:15 GMT  
		Size: 1.3 MB (1327398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b3de1f9a44308e359bf39895d1f442114cbd5e1f6bc20ee7280a4984ae6563`  
		Last Modified: Sat, 09 Mar 2019 12:11:14 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0549b1fb3f7935a7747ad93187952648bec9f8610dfeaa79d5ba1da941e0a0c5`  
		Last Modified: Sat, 09 Mar 2019 12:11:14 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7c74297e729c21a5c72322067445c6183314fccb38c95ee67b31021234a28c`  
		Last Modified: Sat, 06 Apr 2019 11:19:07 GMT  
		Size: 12.0 MB (11996623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d636404e8c6d37964f624060a48dd4bd93f82182923290fe0f8cef3c39921b3`  
		Last Modified: Sat, 06 Apr 2019 11:19:06 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e113d2eb3a540413361c601e3065cc76ba9ce3ce930d30f80008d03b7236a8`  
		Last Modified: Sat, 06 Apr 2019 11:19:16 GMT  
		Size: 11.6 MB (11619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802eba52391571b6b72f9f096bde9d17d2a5bb3fa915b950aa658cf637243608`  
		Last Modified: Sat, 06 Apr 2019 11:19:06 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce91950eb54df7647911560dbc02d34c32fa616873fbab1df5b637d5a797e666`  
		Last Modified: Sat, 06 Apr 2019 11:19:06 GMT  
		Size: 71.5 KB (71537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
