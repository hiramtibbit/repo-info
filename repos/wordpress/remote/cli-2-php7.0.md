## `wordpress:cli-2-php7.0`

```console
$ docker pull wordpress@sha256:f6e0c228434d9d7788d939afd0937633a38e796a95ce94ac4a21437c8e2c7d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-2-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:cce079e3c617216b368f4d9827aaf6ea2d20d12efbf8c11a2139d7f333bbf50b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41602154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe3fbd5675133fccb5f20febd68cf670881a86b94729e0caa9e57204e6faa57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:26:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 01:27:01 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 01:27:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 01:27:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 01:27:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 01:27:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 01:27:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 01:27:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 03:11:21 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 10 Dec 2018 17:36:54 GMT
ENV PHP_VERSION=7.0.33
# Mon, 10 Dec 2018 17:36:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Mon, 10 Dec 2018 17:36:55 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Mon, 10 Dec 2018 17:36:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 10 Dec 2018 17:36:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Dec 2018 17:41:04 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Dec 2018 17:41:05 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Mon, 10 Dec 2018 17:41:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Dec 2018 17:41:05 GMT
CMD ["php" "-a"]
# Mon, 10 Dec 2018 20:39:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 10 Dec 2018 20:39:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 10 Dec 2018 20:39:51 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Mon, 10 Dec 2018 20:40:06 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Mon, 10 Dec 2018 20:40:07 GMT
WORKDIR /var/www/html
# Mon, 10 Dec 2018 20:40:22 GMT
VOLUME [/var/www/html]
# Mon, 10 Dec 2018 20:40:23 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 10 Dec 2018 20:40:23 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Mon, 10 Dec 2018 20:40:23 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Mon, 10 Dec 2018 20:40:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Mon, 10 Dec 2018 20:40:27 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Mon, 10 Dec 2018 20:40:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Dec 2018 20:40:28 GMT
USER [www-data]
# Mon, 10 Dec 2018 20:40:28 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88777455d910410652665cec0149a02db3584d6dc26e306788a3532d480b00ae`  
		Last Modified: Wed, 12 Sep 2018 04:16:24 GMT  
		Size: 1.3 MB (1260901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955e2028dd614ed9f0ea2cdf4f7889015ae0fbf356204733447be3e4e2803bef`  
		Last Modified: Wed, 12 Sep 2018 04:16:23 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d47ce93cc1fdc5f80a27881fa2f937513db13e9600b5e4d93901741529bb9cd`  
		Last Modified: Wed, 12 Sep 2018 04:16:22 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976dc47f16aa405c9b3b9a4ea61fec125b9868d789a1f607dff7f566cfaa58fe`  
		Last Modified: Mon, 10 Dec 2018 19:33:17 GMT  
		Size: 12.1 MB (12052132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506a73590363778e2b7febc2484f50bba7982109504990f126dfb776af5ee9b3`  
		Last Modified: Mon, 10 Dec 2018 19:33:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b59e141e59f8277a258dc19e48c907edcf9957b139cd747313ccaaf1a0f5b9`  
		Last Modified: Mon, 10 Dec 2018 19:33:20 GMT  
		Size: 14.5 MB (14548922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8257945dafb902ad05e8c3013c00d35e5c4a2908e1c3add2ed943698364151f`  
		Last Modified: Mon, 10 Dec 2018 19:33:16 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3cf159236d0b926ab468635cc59a2dece8e695190edafc1209eb94285ef25f`  
		Last Modified: Mon, 10 Dec 2018 21:20:20 GMT  
		Size: 2.0 MB (2031604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef751a89e2dc72a00df79a6bcb3cb3bb84b31154ebd6c9e07fc6f175dac96f6`  
		Last Modified: Mon, 10 Dec 2018 21:20:19 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5b61d1051eaed2fdde7f1abc4de3a5d1bf34d6912ef2d5270455b8843c38f`  
		Last Modified: Mon, 10 Dec 2018 21:20:21 GMT  
		Size: 8.4 MB (8393639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e0e29312e32fd00d8a9d3602f207f01c000bbeb01eec25eacda1b36113235`  
		Last Modified: Mon, 10 Dec 2018 21:20:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5debec3f73810d4a745644e6b59f164976375096c177b1ef0e89b0acf136614a`  
		Last Modified: Mon, 10 Dec 2018 21:20:20 GMT  
		Size: 1.2 MB (1202811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e30513bc6ad4381b965e20d9737ad975ea01d19cd3191bfdbde1f1888b0df88`  
		Last Modified: Mon, 10 Dec 2018 21:20:19 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2-php7.0` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:c1e9f7fd5e3c25b397b78401b4e449fa5991b1092fc232d7c9ab4223200c9038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40820011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0594f9c7b75e75e676c2547239b505616e7715bef824f2d5191f5aaf0e027c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:06:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 08:06:49 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 08:06:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 08:06:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 08:06:51 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 08:06:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:06:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:06:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:12:30 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 09:21:08 GMT
ENV PHP_VERSION=7.0.33
# Tue, 11 Dec 2018 09:21:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 09:21:09 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Tue, 11 Dec 2018 09:21:15 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 09:21:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:24:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 09:24:12 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:24:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 09:24:12 GMT
CMD ["php" "-a"]
# Tue, 11 Dec 2018 10:30:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 11 Dec 2018 10:30:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 11 Dec 2018 10:30:59 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Tue, 11 Dec 2018 10:31:01 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 11 Dec 2018 10:31:01 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 10:31:01 GMT
VOLUME [/var/www/html]
# Tue, 11 Dec 2018 10:31:02 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 11 Dec 2018 10:31:02 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Tue, 11 Dec 2018 10:31:02 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Tue, 11 Dec 2018 10:31:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 11 Dec 2018 10:31:08 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 11 Dec 2018 10:31:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Dec 2018 10:31:09 GMT
USER [www-data]
# Tue, 11 Dec 2018 10:31:09 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a0055a6b8be8112d43285ce08b9f314299405cb58cd028caaf2c999a1b78a4`  
		Last Modified: Sat, 15 Sep 2018 10:01:28 GMT  
		Size: 1.2 MB (1236405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15455cc7b1429595f51de5d2fe9073b57b6650b21b4b67f4dc66de6991de63ac`  
		Last Modified: Sat, 15 Sep 2018 10:01:27 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e064bf836bccea8f679212d8a37150fa405251ddcf395ba0966ccac1de42d`  
		Last Modified: Sat, 15 Sep 2018 10:01:27 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4103f0470b43893658d1fc38ac297fae4a3968774e7628c7d10bd71d16d02100`  
		Last Modified: Tue, 11 Dec 2018 09:47:04 GMT  
		Size: 12.1 MB (12052158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9389ee3c7912fc5ba938fd44e190a64c3888469df2ae001b54db517e21613b`  
		Last Modified: Tue, 11 Dec 2018 09:47:02 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfcbf065e9e3822a749b2408d570e2780f56ab29ae3a4eba1a4ec17b250cd25`  
		Last Modified: Tue, 11 Dec 2018 09:47:07 GMT  
		Size: 13.8 MB (13779417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a57a11768a501b8348f40f5655b5d39f48002a0e1bbcb9f607942f9f8c5176`  
		Last Modified: Tue, 11 Dec 2018 09:47:02 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eef32965b95533fab684406a6323d7260cb918f1da25ff34e307681363bf52c`  
		Last Modified: Tue, 11 Dec 2018 10:39:23 GMT  
		Size: 1.9 MB (1943521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c328d56d3ac650279f7ab0fb453e4b95dc1405376451a8fc270bfce608c6e8ac`  
		Last Modified: Tue, 11 Dec 2018 10:39:21 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da879961cd5a8b85cc99acc44fae1cbc2d964679530e1205b54e7f17f6a39027`  
		Last Modified: Tue, 11 Dec 2018 10:39:24 GMT  
		Size: 8.5 MB (8549606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69fe2b0b4d61c6215c145686314237c0664af9d1c774011612110f99ce477ef9`  
		Last Modified: Tue, 11 Dec 2018 10:39:21 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceecfccd10906149369b18b9f61074fe22de9ae32a307b2b14f2e1f0f032acb`  
		Last Modified: Tue, 11 Dec 2018 10:39:22 GMT  
		Size: 1.2 MB (1202572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6528f62fcbf69557adf2f95b5fcc13a4ecf9366dac5e5a3ed7b79f32543ff3ec`  
		Last Modified: Tue, 11 Dec 2018 10:39:21 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2-php7.0` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:fb24fecdab2bdc6f2d14868479af30579d8f6e32b05f15a6427a88d0b8f4fd40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40187912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c4a2f1f5fca47e92808a7c8c05e67ef6e10476b6d68b9fd85ae113689ec650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Fri, 14 Sep 2018 21:26:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 14 Sep 2018 21:26:25 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 14 Sep 2018 21:26:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 14 Sep 2018 21:26:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 14 Sep 2018 21:26:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 14 Sep 2018 21:26:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 21:26:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 21:26:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 14 Sep 2018 23:53:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 16:19:16 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 16:19:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 16:19:18 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Fri, 16 Nov 2018 17:59:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 17:59:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:05:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 18:05:44 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:05:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 18:05:46 GMT
CMD ["php" "-a"]
# Sat, 17 Nov 2018 00:54:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 00:54:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 00:55:00 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 17 Nov 2018 00:55:05 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 17 Nov 2018 00:55:06 GMT
WORKDIR /var/www/html
# Sat, 17 Nov 2018 00:55:09 GMT
VOLUME [/var/www/html]
# Sat, 17 Nov 2018 00:55:11 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 17 Nov 2018 00:55:13 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Sat, 17 Nov 2018 00:55:15 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Sat, 17 Nov 2018 00:55:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 17 Nov 2018 00:55:25 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 17 Nov 2018 00:55:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:55:28 GMT
USER [www-data]
# Sat, 17 Nov 2018 00:55:29 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177e9b2d5973e82fa764da6515f665b8ecc83702dfdb3491d59b97c2d1538b6a`  
		Last Modified: Sat, 15 Sep 2018 01:41:16 GMT  
		Size: 1.2 MB (1201244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a4bb7af219238a6e664c1d5ef1def4321454ee38795bade28ba20f938051ae`  
		Last Modified: Sat, 15 Sep 2018 01:41:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc759d47a6f74298f9e4b858152c8ae0fe9f4c91429f2b85a48a755a09119ba`  
		Last Modified: Sat, 15 Sep 2018 01:41:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9f2c3e32f14194ed42c049ab9892f4bb192e335e194b6310cf98d963cbeb59`  
		Last Modified: Fri, 16 Nov 2018 20:12:02 GMT  
		Size: 12.0 MB (12049837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92d3695fc6783843ec7162d30715b4c75d1b0b61885465fd9910071973902f1`  
		Last Modified: Fri, 16 Nov 2018 20:11:59 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca78a9c2ebb8e583366116b4350475107f23ef83328ff3a826a776369c019ed`  
		Last Modified: Fri, 16 Nov 2018 20:12:05 GMT  
		Size: 13.6 MB (13603743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa295c0f341c9b3ce7b6732069f93b949e9055da7a6e7822df0c0ba17edd8133`  
		Last Modified: Fri, 16 Nov 2018 20:11:59 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea005b1bda10801993aa83e4669a7108079eac80ceeb44f4017ccbafb6864fe8`  
		Last Modified: Sat, 17 Nov 2018 01:37:26 GMT  
		Size: 1.9 MB (1935810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2659427860a521f56d57d811b90de6b21899e18a197d3d235dc844bf0ad4486`  
		Last Modified: Sat, 17 Nov 2018 01:37:24 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80d645a2b690df6cfe6c4dd56e4f519e0f65ee67b915ea6d28c6069b0163a72`  
		Last Modified: Sat, 17 Nov 2018 01:37:28 GMT  
		Size: 8.2 MB (8191472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26279b408ac2e9e87d961a20d29fd085d8e8be56345c363b9c4b299134137a36`  
		Last Modified: Sat, 17 Nov 2018 01:37:24 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0485e99a47c2610b3cf68929972b2f9a7922da6e6503eb9e8886dbed3d4b9f98`  
		Last Modified: Sat, 17 Nov 2018 01:37:25 GMT  
		Size: 1.2 MB (1201485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebce0cd5dd1ac32704e353900f55c35a77e3f7279991ce7b406f88b7dcf7915`  
		Last Modified: Sat, 17 Nov 2018 01:37:24 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2-php7.0` - linux; 386

```console
$ docker pull wordpress@sha256:b93231546c08ab32f4596d0b059c4094212bf84657ffb09d9bd298d4acd9b2a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42520380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3c39b2789f7d38dec08d1456186f0789b89d4047fc142ba9a6edb552962d7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 13:19:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 13:19:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 13:19:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 13:19:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 13:19:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 13:19:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 13:19:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 14:39:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 14:53:00 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 14:53:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:53:01 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Fri, 16 Nov 2018 23:34:57 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 23:34:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:44:09 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 23:44:10 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:44:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 23:44:10 GMT
CMD ["php" "-a"]
# Sat, 17 Nov 2018 10:16:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 10:16:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 10:16:36 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 17 Nov 2018 10:16:36 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 17 Nov 2018 10:16:37 GMT
WORKDIR /var/www/html
# Sat, 17 Nov 2018 10:16:37 GMT
VOLUME [/var/www/html]
# Sat, 17 Nov 2018 10:16:37 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 17 Nov 2018 10:16:38 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Sat, 17 Nov 2018 10:16:38 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Sat, 17 Nov 2018 10:16:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 17 Nov 2018 10:16:43 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 17 Nov 2018 10:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 10:16:43 GMT
USER [www-data]
# Sat, 17 Nov 2018 10:16:43 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e502b1ee09ccedac85066f7920c16408eb67c985ad3105e35ad62eff89ec1432`  
		Last Modified: Wed, 12 Sep 2018 15:38:25 GMT  
		Size: 1.4 MB (1354598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e82dd4c45e0d9802c4cfce783b30894adae2ec0f73a200c770aa970d0d69db`  
		Last Modified: Wed, 12 Sep 2018 15:38:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6413536fc860ffe5ae2f1ed1a95ec8aab5cb970d8a83014e65e9745b4af7632`  
		Last Modified: Wed, 12 Sep 2018 15:38:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d8fa6d8c8d1e4f6e86244f7b3e3c1a93835c61cb9d604d98a21ce58d050141`  
		Last Modified: Sat, 17 Nov 2018 02:37:27 GMT  
		Size: 12.0 MB (12049842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dceeefcb9f1c7ebef78e3e8b1c25832f6e574e0fd27493e8dfc7bec4a53d16e`  
		Last Modified: Sat, 17 Nov 2018 02:37:26 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f324cfd773ebe54b65a8d210f762ff926cc2de11ce88a53c6dfbb943c21da9f`  
		Last Modified: Sat, 17 Nov 2018 02:37:32 GMT  
		Size: 15.1 MB (15084499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27acaa848c0c8d5e8d9b63c60935d958d1ed9e5310511d6bedfab8078de6b421`  
		Last Modified: Sat, 17 Nov 2018 02:37:26 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdac7af39888ffadb17bd9a7ade58093a360a10ba91a634f4652ab1b714b0f8c`  
		Last Modified: Sat, 17 Nov 2018 10:55:00 GMT  
		Size: 2.1 MB (2075593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f7765bad2fb69a9a215097b3a6c71905ae8934707d87c65143a44b4077f689`  
		Last Modified: Sat, 17 Nov 2018 10:54:58 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea57349f0aa5dcf568bf2dfdb4fe345b2d11c1832fe8a6d782f348bb2431480`  
		Last Modified: Sat, 17 Nov 2018 10:55:03 GMT  
		Size: 8.6 MB (8580012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bf5e824a2a95072b21141798d410ff71265da2aa861127e69d7873a1fc6741`  
		Last Modified: Sat, 17 Nov 2018 10:54:57 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137512539cc9db48b0413675f5fe0e42d104e3ea914b99537c2425682c201913`  
		Last Modified: Sat, 17 Nov 2018 10:54:59 GMT  
		Size: 1.2 MB (1201669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951fe190ec1aab900d50d94d662716ec381b115a72d567c547fac77173006abb`  
		Last Modified: Sat, 17 Nov 2018 10:54:57 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2-php7.0` - linux; ppc64le

```console
$ docker pull wordpress@sha256:83fd55451e9503745d4c76965373045688e7d207bb239726268039c93e2f2f4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41163313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4d10d751a8308d4324efc08285a7989ce098befc1a593d626984adad7fc21e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:35:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 11:35:28 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 11:35:32 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 11:35:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 11:35:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 11:35:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 11:35:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 11:35:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 12:55:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 12:05:31 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 12:05:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:05:32 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Fri, 16 Nov 2018 15:51:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 15:51:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 15:54:14 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 15:54:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 15:54:17 GMT
CMD ["php" "-a"]
# Fri, 16 Nov 2018 18:21:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 16 Nov 2018 18:21:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Nov 2018 18:21:33 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Fri, 16 Nov 2018 18:21:36 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 16 Nov 2018 18:21:38 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 18:21:38 GMT
VOLUME [/var/www/html]
# Fri, 16 Nov 2018 18:21:40 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 16 Nov 2018 18:21:42 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Fri, 16 Nov 2018 18:21:44 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Fri, 16 Nov 2018 18:21:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 16 Nov 2018 18:21:55 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:21:58 GMT
USER [www-data]
# Fri, 16 Nov 2018 18:21:59 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09e066bfe300a52383056af81ef9004054170d582c17a0772c5bb5f2c1d7a48`  
		Last Modified: Wed, 12 Sep 2018 14:09:25 GMT  
		Size: 1.2 MB (1243228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e506744f25586913ebc79535d99e234fa1408f95081404721087a6e631adfbd`  
		Last Modified: Wed, 12 Sep 2018 14:09:23 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83f71a595a75db9f5ee4fa90ef7540a9e375a9f0643e708bb7bf5b7e593fecf`  
		Last Modified: Wed, 12 Sep 2018 14:09:23 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be86c0d53e4876abfaf2d378ab6ea70321db83dbce1b4c7f5aec9fcd14718b01`  
		Last Modified: Fri, 16 Nov 2018 17:27:33 GMT  
		Size: 12.0 MB (12049872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d01be1800e7f2427e8c4a877a24c3264e5f22b199d81970e6e44986f970bd3`  
		Last Modified: Fri, 16 Nov 2018 17:27:30 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28355ea50a0ea5e1a302e141640619c20fa775b99bb1f496fc93d9cdab5d67e2`  
		Last Modified: Fri, 16 Nov 2018 17:27:42 GMT  
		Size: 14.3 MB (14265265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96175d47e16d46a48cb714a279e6985da60ffee1335174c6b68522c798565481`  
		Last Modified: Fri, 16 Nov 2018 17:27:30 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94fc3a462f5b06abd0e9fb04b738be2f65be8f80ce24803e8c3c16d56b04ffe0`  
		Last Modified: Fri, 16 Nov 2018 18:49:28 GMT  
		Size: 2.0 MB (2006955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93a122c33152727f7be078f5b81629595607c40c71e80fafa2ac1ded8c5c494`  
		Last Modified: Fri, 16 Nov 2018 18:49:24 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6f844fccba2f2cd5d0cddce88d9603c3f0e8ea0fe5833df9cffc3077c67c5`  
		Last Modified: Fri, 16 Nov 2018 18:49:27 GMT  
		Size: 8.3 MB (8290337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc4f4868e3070fd01e8802f82d7a65094447858c593bd231c30df179f6d0c26`  
		Last Modified: Fri, 16 Nov 2018 18:49:24 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9116a845c85676a526d7427f168163cb093aea4152bca3a4117957cab65b3c`  
		Last Modified: Fri, 16 Nov 2018 18:49:24 GMT  
		Size: 1.2 MB (1202616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f580eeb277ab7e1da6c315d83207e3b5e10d284bc0a2f3aa054e46e593d59a`  
		Last Modified: Fri, 16 Nov 2018 18:49:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
