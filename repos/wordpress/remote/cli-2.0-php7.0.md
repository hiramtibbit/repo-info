## `wordpress:cli-2.0-php7.0`

```console
$ docker pull wordpress@sha256:aed237744ceb9bd61ade2443a69dda8d402a99fa14d1af5f6f3221aafb257edf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-2.0-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:02968e9495a808b4edd5c3c8322d91f41a0d5e05ea277021b0c8bec049a11202
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41600312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b8cccebfa2fbc1b3808d16bbd8342c548fa98a722b873ce99e163180c8922b`
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
# Sat, 15 Sep 2018 05:09:44 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 05:09:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 05:09:44 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Fri, 16 Nov 2018 06:52:37 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 06:52:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 06:58:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 06:58:36 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 06:58:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 06:58:37 GMT
CMD ["php" "-a"]
# Fri, 16 Nov 2018 10:19:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 16 Nov 2018 10:20:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Nov 2018 10:20:10 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Fri, 16 Nov 2018 10:20:22 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 16 Nov 2018 10:20:35 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 10:20:35 GMT
VOLUME [/var/www/html]
# Fri, 16 Nov 2018 10:20:35 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 16 Nov 2018 10:20:48 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Fri, 16 Nov 2018 10:20:48 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Fri, 16 Nov 2018 10:20:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 16 Nov 2018 10:21:02 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 16 Nov 2018 10:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 10:21:02 GMT
USER [www-data]
# Fri, 16 Nov 2018 10:21:02 GMT
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
	-	`sha256:65dee5f76765c503e4e9f2819de72b31e878c6619eb986ebd5724057c639d47b`  
		Last Modified: Fri, 16 Nov 2018 09:30:58 GMT  
		Size: 12.0 MB (12049839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d55204f25a0b106c116da08fb5952358c6ed13cfe424fbe6f8e8619e51b470`  
		Last Modified: Fri, 16 Nov 2018 09:30:57 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b0ac38a54b746b9a37f63d972382527d103dc716339f37212c62df629f60ad`  
		Last Modified: Fri, 16 Nov 2018 09:31:01 GMT  
		Size: 14.5 MB (14548835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84632d3c5b24e10dedf0a50ebe80562c8256ded95a8f870b38ee4fba397e42b9`  
		Last Modified: Fri, 16 Nov 2018 09:30:58 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987e1db5fc8917a24796355bd804657bcab751ec884f8515184316b400163e9f`  
		Last Modified: Fri, 16 Nov 2018 10:57:06 GMT  
		Size: 2.0 MB (2032137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cfbd7c654c0d3194ed89dc4684e3efb274dd669e83517e9a2e57dcfc872ddf`  
		Last Modified: Fri, 16 Nov 2018 10:57:05 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b71ac72602095d6046099744c523e1ae9ba655a04378b268be33c0d5a955e1`  
		Last Modified: Fri, 16 Nov 2018 10:57:06 GMT  
		Size: 8.4 MB (8393636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af450c1c391b14e0a89bdf465dfb427f647057b49575bdb4e4812a3ab4300b8`  
		Last Modified: Fri, 16 Nov 2018 10:57:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0869cf2f525c2cfd5d8f273d28824e948fdc610ef9f0d06dec7dedabbf36f01b`  
		Last Modified: Fri, 16 Nov 2018 10:57:05 GMT  
		Size: 1.2 MB (1202812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4479c7e74f13f6690894a941f0ee73afed8183fe3c866550f527da8db6d0d8`  
		Last Modified: Fri, 16 Nov 2018 10:57:05 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.0-php7.0` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:cfd823a2175a05be0c8c6b3d2cf8b83d02069165a1c20b33178c194a388112b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40617415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc18de7e5ecf340ee3430b05609121802da5aa8426bc6888f5c50023993da29a`
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
# Sat, 15 Sep 2018 09:26:58 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 09:26:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 09:26:59 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 09:27:06 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 09:27:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:30:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Nov 2018 09:00:45 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Thu, 15 Nov 2018 09:00:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 09:00:45 GMT
CMD ["php" "-a"]
# Thu, 15 Nov 2018 09:40:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 15 Nov 2018 09:40:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 09:40:54 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Thu, 15 Nov 2018 09:40:55 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 15 Nov 2018 09:40:55 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 09:40:56 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 09:40:56 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 15 Nov 2018 09:40:56 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Thu, 15 Nov 2018 09:40:57 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Fri, 16 Nov 2018 10:12:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 16 Nov 2018 10:13:01 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 16 Nov 2018 10:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 10:13:02 GMT
USER [www-data]
# Fri, 16 Nov 2018 10:13:03 GMT
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
	-	`sha256:193ea04b748f4ff6c89b3cda35cd2df70596a2b2fdeb361b6b42f167f20805f3`  
		Last Modified: Sat, 15 Sep 2018 10:06:57 GMT  
		Size: 12.0 MB (12049865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37453f903fc54961baeb0b859b07a7d0f0775adf2dd41711baf347a967e8f0d3`  
		Last Modified: Sat, 15 Sep 2018 10:06:57 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16f6279cf78339ed2ff20c88dc0310084d59d08194bee71edeb58c16cfec34c`  
		Last Modified: Sat, 15 Sep 2018 10:07:02 GMT  
		Size: 13.6 MB (13579270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a1f4e4f6881fb22a5d049db079ed6b67bd83cfee0010faf736f7a70fc8a147`  
		Last Modified: Thu, 15 Nov 2018 09:09:23 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee77cb459b8a2f7209cb9e9b1b39415a885746b1a2d6da1ace659a6ae0fdbd2`  
		Last Modified: Thu, 15 Nov 2018 09:49:14 GMT  
		Size: 1.9 MB (1943667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8867d0069e45d8c95961da7889d93e763a86d70f34543ed4b82f22c98d9d0b2d`  
		Last Modified: Thu, 15 Nov 2018 09:49:12 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb788943b33a25e413147d769deae2785d48a18bfa59fcee7f930c759976f667`  
		Last Modified: Thu, 15 Nov 2018 09:49:16 GMT  
		Size: 8.5 MB (8549356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca16eda2628297b91d1f7224d33abde2a1ce506a86d18ea96948d4fd6b83fe`  
		Last Modified: Thu, 15 Nov 2018 09:49:13 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f39ee24fb55f26acd64c958d7089067d853cce96259e807e2ed4459b6e14d1`  
		Last Modified: Fri, 16 Nov 2018 10:18:08 GMT  
		Size: 1.2 MB (1202506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5563570e3326cc42c133b2a4c16368748d7dac0702b6025d33d813626526f68f`  
		Last Modified: Fri, 16 Nov 2018 10:18:07 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.0-php7.0` - linux; arm64 variant v8

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

### `wordpress:cli-2.0-php7.0` - linux; 386

```console
$ docker pull wordpress@sha256:7b6e08fc38d595cc8df75deb245e5a6bc6f97edb21fbc5a7d19d3deb1e848ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42278193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd19335801c28e9945bc2afb4dd5db9c463dc92d9ac6f12c1ac0d1875c7022c`
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
# Sat, 15 Sep 2018 14:53:05 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 14:53:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:57:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Nov 2018 12:51:17 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Thu, 15 Nov 2018 12:51:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 12:51:18 GMT
CMD ["php" "-a"]
# Thu, 15 Nov 2018 15:13:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 15 Nov 2018 15:13:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 15:13:51 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Thu, 15 Nov 2018 15:13:52 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 15 Nov 2018 15:13:52 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 15:13:52 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 15:13:53 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 15 Nov 2018 15:13:53 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Thu, 15 Nov 2018 15:13:53 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Thu, 15 Nov 2018 15:13:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 15 Nov 2018 15:13:58 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 15 Nov 2018 15:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 15:13:58 GMT
USER [www-data]
# Thu, 15 Nov 2018 15:13:58 GMT
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
	-	`sha256:cb9cbcff58369ed875e3b4d139bee443e0472e8ab51d805874dd24de916588f5`  
		Last Modified: Sat, 15 Sep 2018 16:43:26 GMT  
		Size: 12.0 MB (12049844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85aba67b223e6687bd718e27c76caa727d02d82f13e0def34538632747a01242`  
		Last Modified: Sat, 15 Sep 2018 16:43:25 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd04047397060e05eef3ce3fc14c1b39bb82e86f502e98f41c6656054820e98`  
		Last Modified: Sat, 15 Sep 2018 16:43:30 GMT  
		Size: 14.8 MB (14842608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafb10898a5cf45f60ed93334a43afdf1936f1eb2a27df13a055de2913373c13`  
		Last Modified: Thu, 15 Nov 2018 13:17:08 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff169634b57e60d81c33815e97fe11264ce65979753606225be83c465e05b993`  
		Last Modified: Thu, 15 Nov 2018 15:27:48 GMT  
		Size: 2.1 MB (2075566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941ffbee70aac4143613407f1d4a89dad0a82abbc4e32ae8ca721ed402501d5c`  
		Last Modified: Thu, 15 Nov 2018 15:27:47 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb4ea4cc76e52ee4983db9705d837efffea19885a617eb73b0643a08618c097`  
		Last Modified: Thu, 15 Nov 2018 15:27:49 GMT  
		Size: 8.6 MB (8579780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fb4c842a4d36d232ba480f603224249e8b04da5b164dabed48051bdf23c06e`  
		Last Modified: Thu, 15 Nov 2018 15:27:47 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b690b7cd3e5ca4670b3c46d2e4965994ec5a4207c435a5b93404f129b70f5a22`  
		Last Modified: Thu, 15 Nov 2018 15:27:47 GMT  
		Size: 1.2 MB (1201623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50f7caaf8737e914ac20d5944be9779009f13404ced807f601492428d06753c`  
		Last Modified: Thu, 15 Nov 2018 15:27:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.0-php7.0` - linux; ppc64le

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
