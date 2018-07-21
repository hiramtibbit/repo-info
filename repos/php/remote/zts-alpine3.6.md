## `php:zts-alpine3.6`

```console
$ docker pull php@sha256:4adc1be40c0fa3809478f5bdc9260b3cdd572c8ffc9beba84fb32cbedfde002e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:zts-alpine3.6` - linux; amd64

```console
$ docker pull php@sha256:6a258aaebdef372de92314ac6981cd34b0dd38416914d95709eaa6a584c197d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27700099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f44fbaba2ab164e53d758eff73f106df1ecfa02d60b8dbf78223c05df92aa78`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:32:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 06 Jul 2018 16:32:16 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 06 Jul 2018 16:32:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 16:32:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 06 Jul 2018 16:32:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 06 Jul 2018 16:40:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi
# Fri, 06 Jul 2018 16:40:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:40:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:40:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 06 Jul 2018 16:40:38 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 21 Jul 2018 08:25:23 GMT
ENV PHP_VERSION=7.2.8
# Sat, 21 Jul 2018 08:25:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.8.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 08:25:23 GMT
ENV PHP_SHA256=53ba0708be8a7db44256e3ae9fcecc91b811e5b5119e6080c951ffe7910ffb0f PHP_MD5=
# Sat, 21 Jul 2018 08:25:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 21 Jul 2018 08:25:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 08:29:26 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 08:29:27 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 21 Jul 2018 08:29:29 GMT
RUN docker-php-ext-enable sodium
# Sat, 21 Jul 2018 08:29:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 08:29:29 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6515022efbf747d43dc1475b08ab54f8890431237f2068af082f120bc6b4d10f`  
		Last Modified: Fri, 06 Jul 2018 18:12:44 GMT  
		Size: 1.4 MB (1373936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5cb7bfffe42de3770e4b28b1114fafe1c57855166ad15832edc2fc2ca8d370`  
		Last Modified: Fri, 06 Jul 2018 18:12:43 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5215b3a6690d157a751170530698bb65ef954f68c311dbe6d147c7b10b7b03`  
		Last Modified: Fri, 06 Jul 2018 18:12:43 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7ea6e52303a059bc434aa1cec957b03c5f3456539215b3baede4f3c68caa08`  
		Last Modified: Sat, 21 Jul 2018 11:22:23 GMT  
		Size: 12.2 MB (12173233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b150cbd3ff27b956d86d9a2fd217a7aa46a109086a73684a45988afadde83e`  
		Last Modified: Sat, 21 Jul 2018 11:22:21 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3935ad6864126b0597870edb29f98643ff31482ecd40b0d69e0dc9563dd6422b`  
		Last Modified: Sat, 21 Jul 2018 11:22:25 GMT  
		Size: 12.1 MB (12062973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d7ad9472b5c0c65a2eb799982b453a1c0b8f42c1351d3780449eb363c40e8a`  
		Last Modified: Sat, 21 Jul 2018 11:22:18 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42bb9747b3fac78dceaaae45e36a292d1be514e9a0aecce0c6810b0494b2c02`  
		Last Modified: Sat, 21 Jul 2018 11:22:19 GMT  
		Size: 71.2 KB (71214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
