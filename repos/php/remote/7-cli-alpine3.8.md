## `php:7-cli-alpine3.8`

```console
$ docker pull php@sha256:43cff0126d50794708dbb1ee08dcddcacb99c5feb5f065545f123a4a1e5a626b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `php:7-cli-alpine3.8` - linux; amd64

```console
$ docker pull php@sha256:83335560c2f32fd9303376e988e075b77ece7e0d14b580cceb23321b57cdeefa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.5 MB (31453453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b18fa665b509111d1f93633c2775bbe821ffd4aace7091de63a6e1754e32f2a3`
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
# Sat, 09 Mar 2019 01:16:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:16:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:16:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 01:16:47 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 01:16:48 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 01:16:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 01:16:48 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 01:16:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 01:16:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 01:23:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 01:23:45 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 01:23:46 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 01:23:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 01:23:47 GMT
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
	-	`sha256:9107aebea4883e4ff7a09e3ceeea96701ac9b4612737c5c0433164b2599035b1`  
		Last Modified: Sat, 09 Mar 2019 04:13:12 GMT  
		Size: 12.0 MB (11991742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e674e7b6cfae92f3d30690c37dede70233f71380ffc17229d976c9cc9fd0ceaa`  
		Last Modified: Sat, 09 Mar 2019 04:13:11 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc24891650877f30ec2cbc7dd814c2ca3c78f3899d8f64cf885087dc7bae2cf0`  
		Last Modified: Sat, 09 Mar 2019 04:13:15 GMT  
		Size: 15.8 MB (15821382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b45d6fb692cbf5d27f63556424ad0997bf643e02542f51c787717513e9dabd9`  
		Last Modified: Sat, 09 Mar 2019 04:13:11 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1452b3ed7eef9ce337945ba3552fa6e4452c2a49274c2ed05feabed0447bc5fb`  
		Last Modified: Sat, 09 Mar 2019 04:13:11 GMT  
		Size: 71.7 KB (71712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:7-cli-alpine3.8` - linux; arm variant v6

```console
$ docker pull php@sha256:0a9cc0d6596b51b5362f6cf5fd2a30ffc4d46155527f0d2df32a569075f5db14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30357821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e380812219bf66f28b39a2a2597ac30d88e3b66f7fc862ec00e6df5c48b4e7b5`
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
# Sat, 09 Mar 2019 09:01:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:01:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:01:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 09:01:47 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 09:01:47 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 09:01:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 09:01:48 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 09:01:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 09:01:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 09:05:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 09:05:14 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 09:05:16 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 09:05:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 09:05:17 GMT
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
	-	`sha256:6393f042f32f2af0ab49ced58b7802a0f324183e1e4ce079e7433f3d458f5044`  
		Last Modified: Sat, 09 Mar 2019 09:59:56 GMT  
		Size: 12.0 MB (11991770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0990ea96e59c485cd4e6bfdac5bc26b226312a3a9b4ce66c8e342f1b344389`  
		Last Modified: Sat, 09 Mar 2019 09:59:54 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb07a013e5bb8ea17c3809cacd2decc2b09d7334e02a82ad7cdbce773567d4f`  
		Last Modified: Sat, 09 Mar 2019 10:00:01 GMT  
		Size: 14.8 MB (14828366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211aa601aab810fdc26eaf6cd1cf98ea7034b87512f62d218b49049f43426fd5`  
		Last Modified: Sat, 09 Mar 2019 09:59:54 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a23b18f0c46c0a3af65dfba47b76f437663fb671545838678d46687dcbb54d`  
		Last Modified: Sat, 09 Mar 2019 09:59:54 GMT  
		Size: 71.3 KB (71253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:7-cli-alpine3.8` - linux; ppc64le

```console
$ docker pull php@sha256:f827104fa45d531fed1b5f31b08eed5bde6f2d92d029f01b2bf46df8e81dce0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31105114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c4de6177a91d8d654a513ae44a87617303f463a5f51021a5c188088c2e0a19`
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
# Sat, 09 Mar 2019 10:03:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 10:03:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 10:03:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 10:03:17 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 10:03:21 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 10:03:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 10:03:27 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 10:03:45 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 10:03:46 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:08:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 10:08:15 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:08:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 10:08:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 10:08:36 GMT
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
	-	`sha256:2143e737fed5e623bf19138920b13f907e633c7cf23a6f58779b6ef37b68f16b`  
		Last Modified: Sat, 09 Mar 2019 12:11:12 GMT  
		Size: 12.0 MB (11991792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae30bb9bacfa028eb099490a5d112adef62621bfe8c6939219b03be323792d85`  
		Last Modified: Sat, 09 Mar 2019 12:11:11 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b515e138424b8962354a855d5a168def149d8845adf6a150a30a0fe0ad37e42c`  
		Last Modified: Sat, 09 Mar 2019 12:11:19 GMT  
		Size: 15.5 MB (15515244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f55ac0b8cd29c27d6524b2fa4e4041b34eae77a06a816e603fc6a6030cea1a4`  
		Last Modified: Sat, 09 Mar 2019 12:11:11 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e412d539eef3117fe6c4f318eb9d66b076afe6260bc3237553925a6b671cc`  
		Last Modified: Sat, 09 Mar 2019 12:11:11 GMT  
		Size: 71.5 KB (71523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
