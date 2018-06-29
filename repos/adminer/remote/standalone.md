## `adminer:standalone`

```console
$ docker pull adminer@sha256:a1046a1daa67a698b987e49a75726123071b7c9e6b277aa104f19f26f70b5ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:standalone` - linux; amd64

```console
$ docker pull adminer@sha256:da95d6b0ef0abe0a9ff02c40c5ade284519c6c25e792e8942715b14d5438e5d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34863481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c2655c6369b8107ef4568c2413ad776d9b8b314ae8c1b1aa4139ea6ad6b0ff`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:29:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Jan 2018 01:29:53 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 10 Jan 2018 01:29:54 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Jan 2018 01:29:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Jan 2018 01:29:56 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 Jan 2018 01:29:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 01:29:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 01:29:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Jan 2018 01:29:57 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 23:19:14 GMT
ENV PHP_VERSION=7.2.7
# Wed, 27 Jun 2018 23:19:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 23:19:14 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Wed, 27 Jun 2018 23:19:21 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 27 Jun 2018 23:19:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 23:23:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 23:23:41 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Wed, 27 Jun 2018 23:23:42 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 23:23:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 23:23:43 GMT
CMD ["php" "-a"]
# Thu, 28 Jun 2018 06:28:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Thu, 28 Jun 2018 06:28:06 GMT
STOPSIGNAL [SIGINT]
# Thu, 28 Jun 2018 06:28:07 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Thu, 28 Jun 2018 06:28:07 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 06:28:17 GMT
RUN apk add --no-cache libpq
# Thu, 28 Jun 2018 06:28:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Thu, 28 Jun 2018 06:28:49 GMT
COPY multi:fcdffffd48fc0fc7ad3b317e64231ca1b160ab11eac6289d64ba2a4bdfd85ccc in /var/www/html/ 
# Fri, 29 Jun 2018 22:20:00 GMT
ENV ADMINER_VERSION=4.6.3
# Fri, 29 Jun 2018 22:20:00 GMT
ENV ADMINER_DOWNLOAD_SHA256=aa4a60ae2d1d0401cf26282451db8e57a1a66622e8048cdb3fd3a6db1f0f24e2
# Fri, 29 Jun 2018 22:20:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=277a0c5cc2a2b3b956fbb9231f361aa1b405b2b65187a6c437c44a15568798cb
# Fri, 29 Jun 2018 22:20:04 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 29 Jun 2018 22:20:04 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 29 Jun 2018 22:20:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 29 Jun 2018 22:20:05 GMT
USER [adminer]
# Fri, 29 Jun 2018 22:20:05 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 29 Jun 2018 22:20:05 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca736d3a2d38cd2e07c36bc54d58900d5e7aa1229dfca485476d6a5ab4bfcc1`  
		Last Modified: Wed, 10 Jan 2018 04:26:36 GMT  
		Size: 1.3 MB (1261295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed01bffbd8ba5a08144d65a0ca5f2c2540ee6d7b400d134c410e8c4431590eba`  
		Last Modified: Wed, 10 Jan 2018 04:26:35 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a241b7142ffbfe2bec506914b86dff073238208b39a08a6c6f36e19a92fdd3`  
		Last Modified: Wed, 10 Jan 2018 04:26:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef871a78937954afc4a8b03cb09c69caa6d53407bed96ebee156fd9533860ca0`  
		Last Modified: Thu, 28 Jun 2018 05:28:04 GMT  
		Size: 12.1 MB (12134506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6cef59a1df4390f1e48d1913968e3e61efa1740fe791516d9376821b07ac65`  
		Last Modified: Thu, 28 Jun 2018 05:28:03 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c11063b4be7b2c684b9702cd5f666b31686229afea6e84cbc6efdaaab136e1`  
		Last Modified: Thu, 28 Jun 2018 05:28:08 GMT  
		Size: 17.4 MB (17434733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1251410ef959f9dd88834441d5401810a8bd84e9c5c9f09d049dd6187acdff`  
		Last Modified: Thu, 28 Jun 2018 05:28:03 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34945efb2811522801e9cfe8840d734c5fba1c2d099e604d5f56208547dd5ed`  
		Last Modified: Thu, 28 Jun 2018 05:28:03 GMT  
		Size: 71.1 KB (71055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cf6e4676f79a0597eb551357782a46cc57f90933c981180815fa154ffdf826`  
		Last Modified: Thu, 28 Jun 2018 06:30:11 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfab0af05e6e7c5583bbf512d8b2e12285e33e1b182a3a2d36d2708e1f2f16a`  
		Last Modified: Thu, 28 Jun 2018 06:30:12 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfe00d6bd844818034107d5dba139e2d88ae93231525f85f5458648208b7f81`  
		Last Modified: Thu, 28 Jun 2018 06:30:09 GMT  
		Size: 1.3 MB (1257083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a23d56669dbd35c353d28338b220c75c8700fcd7637187c26ee04ba3023ddf`  
		Last Modified: Thu, 28 Jun 2018 06:30:09 GMT  
		Size: 123.1 KB (123129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0258a4eeb8707062583b7589cf29030a1727bb791a39dc8ab19bc87876ecd385`  
		Last Modified: Thu, 28 Jun 2018 06:30:09 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa22e279f6ab0d0dd5ca0f0391029e0414bef24fbf832c338478704483987122`  
		Last Modified: Fri, 29 Jun 2018 22:20:40 GMT  
		Size: 508.4 KB (508439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b090beaaef3966293bb66e9a73b762324d5ed1ec644bcf39a65ab4bd71e5d77`  
		Last Modified: Fri, 29 Jun 2018 22:20:40 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
