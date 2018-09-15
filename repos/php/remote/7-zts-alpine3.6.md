## `php:7-zts-alpine3.6`

```console
$ docker pull php@sha256:f9edc9ac1b83b860a47ce77e19daca5f379a2d5c2c2b1a2829198d4da3fc75e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `php:7-zts-alpine3.6` - linux; amd64

```console
$ docker pull php@sha256:3f31805ad8698d0c5e32232f928baa9552611107e4add9fcca760e9c491308a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27543739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe634fc16ab061c8b89265503aedc9e91c2eebf95900f997aa84d3770c7f169e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
# Wed, 12 Sep 2018 02:14:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Wed, 12 Sep 2018 02:14:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 02:14:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 02:14:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:14:25 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 03:22:36 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 03:22:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:22:36 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 03:22:40 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 03:22:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:27:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:27:41 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:27:42 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 03:27:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:27:42 GMT
CMD ["php" "-a"]
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
	-	`sha256:caa92b3682cfe348cc8e8b328bb79deb5a94e166f9a1bd6f50c1299367d4344a`  
		Last Modified: Sat, 15 Sep 2018 06:39:39 GMT  
		Size: 12.2 MB (12180509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28a2a589f279acfe8b29a753f86cd8125f97a5e5764ba48f8e76ecd72366d3`  
		Last Modified: Sat, 15 Sep 2018 06:39:39 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b999802b663264d377afeed203c3400e626506077f2eb369dc6b45212745492`  
		Last Modified: Sat, 15 Sep 2018 06:39:42 GMT  
		Size: 11.9 MB (11893346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6132f2f097154d9a1c2c3047c79462fc8489a532b22b4c10db99a8441a8a17d5`  
		Last Modified: Sat, 15 Sep 2018 06:39:38 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78c11e7ce9c4014f7683fb31bb9487a9a38530db992c7eba068b41a8a6440b`  
		Last Modified: Sat, 15 Sep 2018 06:39:38 GMT  
		Size: 71.2 KB (71159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:7-zts-alpine3.6` - linux; arm variant v6

```console
$ docker pull php@sha256:a77a4434bd82062b9b72ac86f949fde9055745dfdff8bea2e7fed626593e5a83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26848754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ace33372094871cd1b0d0a7a3ccd75de74b59356818dfa7bde0d5bdaca48515`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
# Wed, 12 Sep 2018 08:09:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Wed, 12 Sep 2018 08:09:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:09:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:09:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:09:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 09:01:52 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 09:01:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 09:01:53 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 09:01:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 09:01:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:05:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 09:05:15 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:05:17 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 09:05:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 09:05:20 GMT
CMD ["php" "-a"]
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
	-	`sha256:e86f8b614260191cd2ee3d62e18bd7c574e9d6cd2bd54c9a9bf327e462a23fe3`  
		Last Modified: Sat, 15 Sep 2018 10:04:07 GMT  
		Size: 12.2 MB (12180522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1538221693dd84b799a6e4961c6b17f7baa46709c7f60333b901b6fe87b6e96f`  
		Last Modified: Sat, 15 Sep 2018 10:04:05 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084da14a702cdf053f2bca6b25e380f02438f833781768b77dce2887d9643756`  
		Last Modified: Sat, 15 Sep 2018 10:04:10 GMT  
		Size: 11.2 MB (11241586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c196960072bd41e010c657703b3600a2681afce0d3eef0b026d10e826a0d4c`  
		Last Modified: Sat, 15 Sep 2018 10:04:05 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9003660f2d2e883dd30d8082379030b84646f71d13eb74b7f6abcb2090e3f1`  
		Last Modified: Sat, 15 Sep 2018 10:04:05 GMT  
		Size: 70.6 KB (70640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
