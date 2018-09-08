## `php:rc-zts-alpine3.8`

```console
$ docker pull php@sha256:41689ded9a9a69251fa3a144e853a575e0dfb0e93c55d86ff10899a9d2d0ca63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:rc-zts-alpine3.8` - linux; amd64

```console
$ docker pull php@sha256:10fff871d3d699c41b17261ef0a55eaded4e7edca4386880ca30db44a7ea9d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28872214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825d0c8497b9f26bca9da9e9cd4747385574ee4c6190b7f6f165b20cecbcfb66`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 02:30:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 05 Sep 2018 02:30:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 05 Sep 2018 02:30:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 05 Sep 2018 02:30:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 02:30:58 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:48:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Wed, 05 Sep 2018 02:48:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:48:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:48:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 02:48:40 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 07 Sep 2018 20:15:41 GMT
ENV PHP_VERSION=7.3.0beta3
# Fri, 07 Sep 2018 20:15:41 GMT
ENV PHP_URL=https://downloads.php.net/~cmb/php-7.3.0beta3.tar.xz PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0beta3.tar.xz.asc
# Fri, 07 Sep 2018 20:15:41 GMT
ENV PHP_SHA256=062111b400939d26f3a6ec41925b52b93feb1a5e70e3ccade12496cea9fb190f PHP_MD5=
# Fri, 07 Sep 2018 20:15:45 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 07 Sep 2018 20:15:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:22:08 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 20:22:09 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:22:10 GMT
RUN docker-php-ext-enable sodium
# Fri, 07 Sep 2018 20:22:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 20:22:10 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf6219bcfa34ec51064000c7c2d65a4c466719badced712524512e0e5764202`  
		Last Modified: Wed, 05 Sep 2018 09:05:24 GMT  
		Size: 1.4 MB (1352473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2b4a617f84ddb99fe7b750afe7e49019660defd1337e2fcb7a1fa694dfa59b`  
		Last Modified: Wed, 05 Sep 2018 09:05:24 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5453601feaa681f094f04ab1ef5e15fe1099d2436c3aa81e1f795c1e9a982e53`  
		Last Modified: Wed, 05 Sep 2018 09:05:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7936b38d26dac12999acac82697cdd9de4a1097182796060895dfa99ebaa00db`  
		Last Modified: Sat, 08 Sep 2018 01:11:14 GMT  
		Size: 13.2 MB (13202501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12da996cc064ecd57c4ea81239a8bdd506ac9a08c2697d55c6b81be2ef481f23`  
		Last Modified: Sat, 08 Sep 2018 01:11:17 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1ad9c918d4429cfdfb9a36fc995a1f116b09b976fd0118a922e077c8ff7a01`  
		Last Modified: Sat, 08 Sep 2018 01:11:18 GMT  
		Size: 12.0 MB (12034775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c624b833ac056a8077e79af6d7a554612a0b7b6782015ad4efa887bab9266207`  
		Last Modified: Sat, 08 Sep 2018 01:11:12 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d25ed32d4e0f2bab96f17b2c8ec62996a9182872d6a2c75464303148f588bf`  
		Last Modified: Sat, 08 Sep 2018 01:11:13 GMT  
		Size: 71.8 KB (71843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
