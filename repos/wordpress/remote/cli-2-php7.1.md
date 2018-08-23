## `wordpress:cli-2-php7.1`

```console
$ docker pull wordpress@sha256:eae2cfe6d62593bed3a1a365c5d0f769afd0e443c88440d76b659dcfa25f2278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-2-php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:6eeb549fdb6db46a4217701a2d5cf42f516ad4eeb31c84204df55ddd0a622e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43620271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe643ddaa0aadcb4ad8676f3dcc403aaaa0f2eee10ec6b1b465be4052f2bce8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 22 Aug 2018 23:43:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 22 Aug 2018 23:44:01 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 22 Aug 2018 23:44:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 22 Aug 2018 23:44:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 22 Aug 2018 23:44:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 22 Aug 2018 23:44:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 22 Aug 2018 23:44:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 22 Aug 2018 23:44:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 23 Aug 2018 01:31:21 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 23 Aug 2018 01:31:21 GMT
ENV PHP_VERSION=7.1.21
# Thu, 23 Aug 2018 01:31:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Thu, 23 Aug 2018 01:31:22 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Thu, 23 Aug 2018 01:31:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 23 Aug 2018 01:31:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 23 Aug 2018 01:34:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 23 Aug 2018 01:34:42 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 23 Aug 2018 01:34:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 23 Aug 2018 01:34:43 GMT
CMD ["php" "-a"]
# Thu, 23 Aug 2018 05:40:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 23 Aug 2018 05:40:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 23 Aug 2018 05:40:15 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 23 Aug 2018 05:40:16 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 23 Aug 2018 05:40:17 GMT
WORKDIR /var/www/html
# Thu, 23 Aug 2018 05:40:17 GMT
VOLUME [/var/www/html]
# Thu, 23 Aug 2018 05:40:17 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 23 Aug 2018 05:40:18 GMT
ENV WORDPRESS_CLI_VERSION=2.0.0
# Thu, 23 Aug 2018 05:40:18 GMT
ENV WORDPRESS_CLI_SHA512=18c15c792a0747e434f70fb74f8d82dbc6dc504bd6238a4928859430129f12d88d829a1f37203c30813eb5f4d2c69f4e40aa15c74d9c6f01343052f01842463b
# Thu, 23 Aug 2018 05:40:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 23 Aug 2018 05:40:25 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 23 Aug 2018 05:40:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 05:40:26 GMT
USER [www-data]
# Thu, 23 Aug 2018 05:40:26 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c1ef410e64792f45b76676346492d4a557c21f3bb68471cdee057aca282fe5`  
		Last Modified: Thu, 23 Aug 2018 02:26:42 GMT  
		Size: 1.4 MB (1352458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1230cd877c9ec93492e97a6a6e6b87770f3b5e5862da598626a6a1c5adb31b`  
		Last Modified: Thu, 23 Aug 2018 02:26:41 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4732b87605ade2aeb884907a7c95c8bdd4f93ec1b90a583daae00d70d3c9bc41`  
		Last Modified: Thu, 23 Aug 2018 02:26:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631967088c32c34fc141a21a24c062fbd80124a8b81bd19e4431d442a2b5054`  
		Last Modified: Thu, 23 Aug 2018 03:33:25 GMT  
		Size: 13.5 MB (13523825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b7a6fe6b80a35c91c53aab8bd18baef19e50a22765a86d85e5a5267b9b685a`  
		Last Modified: Thu, 23 Aug 2018 03:33:22 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c41cd6f813c20ea2032f7cb456018ceef6392caa1ff0c80db2d69182d6c9cc0`  
		Last Modified: Thu, 23 Aug 2018 03:33:28 GMT  
		Size: 14.7 MB (14719677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434da80f289ad61cdb06eaba05af1af20c1e1d118c021bf2a7c5ce68c6843944`  
		Last Modified: Thu, 23 Aug 2018 03:33:22 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac5979aef01f5b0983f457396d834047cd3aca12b1cfbc8d6846b1d3a64e3a`  
		Last Modified: Thu, 23 Aug 2018 06:17:22 GMT  
		Size: 2.2 MB (2172846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eccc585039e6ead5ac010a1fb90bc72b203f15a8938ed445c23e2144e9a2c`  
		Last Modified: Thu, 23 Aug 2018 06:17:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fbb12308d8d8b7dd5d69dbe8883014a71c794a7f8b4666bee443fe2c71703`  
		Last Modified: Thu, 23 Aug 2018 06:17:21 GMT  
		Size: 8.5 MB (8539249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c3a1143e1adf3dc6e8279338bf7fd3fca876802f5220f442e28e632cd81fc1`  
		Last Modified: Thu, 23 Aug 2018 06:17:18 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197b492feefc0caedd055d22082856e09984b5ffb6079fa95dee123228580085`  
		Last Modified: Thu, 23 Aug 2018 06:17:18 GMT  
		Size: 1.1 MB (1100702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86b0768089635d684e713b5332c28e1a82b7b8d1dc66ff45e81748e00ba9966`  
		Last Modified: Thu, 23 Aug 2018 06:17:18 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2-php7.1` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:ccf8be8f3065fb64287e9468123fd1d12fceedc766651241e58f91873bfa4e53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40334411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f32b3fcdc979e5fb22cc4fdbc40dcf4d64e642295155b20f1e11afeeb235c91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 14 Dec 2017 03:34:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 14 Dec 2017 03:34:29 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 14 Dec 2017 03:34:31 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 14 Dec 2017 03:34:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Dec 2017 03:34:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 14 Dec 2017 03:34:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 03:34:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 03:34:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 May 2018 09:59:42 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 21 Jul 2018 12:51:48 GMT
ENV PHP_VERSION=7.1.20
# Sat, 21 Jul 2018 12:51:49 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.20.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 12:51:50 GMT
ENV PHP_SHA256=cd7d1006201459d43fae0790cce4eb3451add5c87f4cadb13b228d4c179b850c PHP_MD5=
# Sat, 21 Jul 2018 12:52:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 21 Jul 2018 12:52:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 13:00:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 13:00:57 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 21 Jul 2018 13:00:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 13:00:59 GMT
CMD ["php" "-a"]
# Sat, 21 Jul 2018 19:05:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 21 Jul 2018 19:05:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 19:05:34 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 21 Jul 2018 19:05:35 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 21 Jul 2018 19:05:36 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 19:05:37 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 19:05:37 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 11 Aug 2018 10:30:52 GMT
ENV WORDPRESS_CLI_VERSION=2.0.0
# Sat, 11 Aug 2018 10:30:52 GMT
ENV WORDPRESS_CLI_SHA512=18c15c792a0747e434f70fb74f8d82dbc6dc504bd6238a4928859430129f12d88d829a1f37203c30813eb5f4d2c69f4e40aa15c74d9c6f01343052f01842463b
# Sat, 11 Aug 2018 10:31:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 11 Aug 2018 10:31:01 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 11 Aug 2018 10:31:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 10:31:03 GMT
USER [www-data]
# Sat, 11 Aug 2018 10:31:04 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fd85926acf4e07a36e9605843329449387bbfc1c1550485a341b4f87bfe40c`  
		Last Modified: Sat, 16 Dec 2017 16:37:16 GMT  
		Size: 1.2 MB (1214054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbd52b402d6ede87c727a4c39eca929bb27c7d5873fadd61ad1fc86752cc164`  
		Last Modified: Sat, 16 Dec 2017 16:37:15 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ea5fa010452e4ef78628eebe6459b693eee1ec67ce04afd2ef50a2edee5fb`  
		Last Modified: Sat, 16 Dec 2017 16:37:15 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84edb652ebb5d9184f02e364ffe1dc5c6cc921839d1777f34ed430f07583d56a`  
		Last Modified: Sat, 21 Jul 2018 16:08:24 GMT  
		Size: 12.2 MB (12246032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72d23cd31913ee7f1b8a21072f25a5bfe4ce34d271719119ae7bace4ba36a87`  
		Last Modified: Sat, 21 Jul 2018 16:08:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4977ee6e11418ce3326ac5a7bf432efdc69d2e9af72b6e2fcde73b8530939b7`  
		Last Modified: Sat, 21 Jul 2018 16:08:30 GMT  
		Size: 15.3 MB (15348630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4374f68d672937fc63b742551c0ffab5f6a85b85cde4e51126d0a2dfbe6b5681`  
		Last Modified: Sat, 21 Jul 2018 16:08:23 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1009a3f78abdf7ca6402add987ffe826b8c7edffa53e10ef9a724499556fa4f3`  
		Last Modified: Sat, 21 Jul 2018 19:50:08 GMT  
		Size: 821.3 KB (821310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58f0f6eb88d81e34ed1716f5179fe4e606bc4b88df2841ba6ea6cb1c2bb3c3b`  
		Last Modified: Sat, 21 Jul 2018 19:50:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d550b9a1836189075baa4772fd7e32368bb9bb85e58e921eda6a7ef6626cf57`  
		Last Modified: Sat, 21 Jul 2018 19:50:08 GMT  
		Size: 7.6 MB (7611873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad0d401bf7141202763f7e424c4b877835c4ce0831ffde78fa889ef9a37d71f`  
		Last Modified: Sat, 21 Jul 2018 19:50:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046372279b36ce514dda0e91883cfc7923d467803fe6a52c0f757bb40b8e6f1b`  
		Last Modified: Sat, 11 Aug 2018 10:35:24 GMT  
		Size: 1.1 MB (1098496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5865cb987963e78ea6fea9ac9a14fd82b3916d16efd3539fb8810adc9bf039f`  
		Last Modified: Sat, 11 Aug 2018 10:35:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2-php7.1` - linux; 386

```console
$ docker pull wordpress@sha256:5c69016201ddfdf501fdf7e27b723abac708dc6825c8a22a62a39191d2b0daa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44420979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9bf6e2ca947a7fc4f2cee8480abb3608df76152326bc1b40ee7836001af443`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 11:32:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 23 Aug 2018 11:32:43 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 23 Aug 2018 11:32:44 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 23 Aug 2018 11:32:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 23 Aug 2018 11:32:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 23 Aug 2018 11:32:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 11:32:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 11:32:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 23 Aug 2018 13:29:50 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 23 Aug 2018 13:29:50 GMT
ENV PHP_VERSION=7.1.21
# Thu, 23 Aug 2018 13:29:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Thu, 23 Aug 2018 13:29:50 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Thu, 23 Aug 2018 13:30:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 23 Aug 2018 13:30:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 23 Aug 2018 13:33:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 23 Aug 2018 13:33:24 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 23 Aug 2018 13:33:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 23 Aug 2018 13:33:25 GMT
CMD ["php" "-a"]
# Thu, 23 Aug 2018 18:05:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 23 Aug 2018 18:05:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 23 Aug 2018 18:05:19 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 23 Aug 2018 18:05:19 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 23 Aug 2018 18:05:20 GMT
WORKDIR /var/www/html
# Thu, 23 Aug 2018 18:05:20 GMT
VOLUME [/var/www/html]
# Thu, 23 Aug 2018 18:05:20 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 23 Aug 2018 18:05:21 GMT
ENV WORDPRESS_CLI_VERSION=2.0.0
# Thu, 23 Aug 2018 18:05:21 GMT
ENV WORDPRESS_CLI_SHA512=18c15c792a0747e434f70fb74f8d82dbc6dc504bd6238a4928859430129f12d88d829a1f37203c30813eb5f4d2c69f4e40aa15c74d9c6f01343052f01842463b
# Thu, 23 Aug 2018 18:05:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 23 Aug 2018 18:05:28 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:05:29 GMT
USER [www-data]
# Thu, 23 Aug 2018 18:05:29 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25129a3244a1cbe9b47de94da9115d18fd7872ad3a3a27c96b758689fadc811`  
		Last Modified: Thu, 23 Aug 2018 14:18:44 GMT  
		Size: 1.5 MB (1451467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c33c0e3a859f0e57193675b93eac542603817fdef57197fe7f1acee850ea0db`  
		Last Modified: Thu, 23 Aug 2018 14:18:42 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b98746afa8dedf0838dc085f36f854be335cf7761e69624690a4cfc0f762968`  
		Last Modified: Thu, 23 Aug 2018 14:18:41 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dfe0b01707bc8756c0d9af9ce5db2312cfdd62004b8fc03881065e3749e61d`  
		Last Modified: Thu, 23 Aug 2018 15:28:09 GMT  
		Size: 13.5 MB (13501058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ddd267c02d4f86664485badfa4209e0ded77944ad66dd8bb94cd2cf4ae7fc3`  
		Last Modified: Thu, 23 Aug 2018 15:28:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb108afb813149b6314b365c88ac3eb45b23cbd296a11ceb25a3b0851cb13d5`  
		Last Modified: Thu, 23 Aug 2018 15:28:15 GMT  
		Size: 15.2 MB (15223059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edadf2b563cb5d831b16fbef6a01ab58c17645188f2182a4b2faefcbb6b5cb0`  
		Last Modified: Thu, 23 Aug 2018 15:28:07 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b0946a1615b69256e98673f11b57b62b87df2b9e780134e5429e63460b18df9`  
		Last Modified: Thu, 23 Aug 2018 18:28:52 GMT  
		Size: 2.2 MB (2206979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c84fb310ebc803ddd0b3316642bf0c58f3fe34519bff369a38ce89df985de0f`  
		Last Modified: Thu, 23 Aug 2018 18:28:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c64f67405581e0836e302d85c028424f4da8855ec171a760018ba6f33930ff`  
		Last Modified: Thu, 23 Aug 2018 18:28:51 GMT  
		Size: 8.7 MB (8662644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794d0c896f8571bb6cd1052b181c811059104e828be30ef0ca8f1caf7efee3fa`  
		Last Modified: Thu, 23 Aug 2018 18:28:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449a05d77f1381431a1e394d051cae8df4b92b06ec0dcb3311625b9778644c39`  
		Last Modified: Thu, 23 Aug 2018 18:28:49 GMT  
		Size: 1.1 MB (1099707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d06eb55af053024ea76280574de4b0f48c9b418f5ece529089a97465c2d9f8`  
		Last Modified: Thu, 23 Aug 2018 18:28:48 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2-php7.1` - linux; ppc64le

```console
$ docker pull wordpress@sha256:2c78efda55e85f64665246eb14f32348de41bdf440300274b438cd016af310d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41871176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3668fe2f52ea9730f34b8861c5b285329733d72bccfef42e627c876ea19897d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:31:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 23 Aug 2018 09:31:25 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 23 Aug 2018 09:31:29 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 23 Aug 2018 09:31:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 23 Aug 2018 09:31:31 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 23 Aug 2018 09:31:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 09:31:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 09:31:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 23 Aug 2018 11:20:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 23 Aug 2018 11:20:28 GMT
ENV PHP_VERSION=7.1.21
# Thu, 23 Aug 2018 11:20:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Thu, 23 Aug 2018 11:20:36 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Thu, 23 Aug 2018 11:20:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 23 Aug 2018 11:20:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:24:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 23 Aug 2018 11:24:02 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:24:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 23 Aug 2018 11:24:05 GMT
CMD ["php" "-a"]
# Thu, 23 Aug 2018 15:08:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 23 Aug 2018 15:08:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 23 Aug 2018 15:08:19 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 23 Aug 2018 15:08:21 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 23 Aug 2018 15:08:22 GMT
WORKDIR /var/www/html
# Thu, 23 Aug 2018 15:08:23 GMT
VOLUME [/var/www/html]
# Thu, 23 Aug 2018 15:08:24 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 23 Aug 2018 15:08:25 GMT
ENV WORDPRESS_CLI_VERSION=2.0.0
# Thu, 23 Aug 2018 15:08:26 GMT
ENV WORDPRESS_CLI_SHA512=18c15c792a0747e434f70fb74f8d82dbc6dc504bd6238a4928859430129f12d88d829a1f37203c30813eb5f4d2c69f4e40aa15c74d9c6f01343052f01842463b
# Thu, 23 Aug 2018 15:08:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 23 Aug 2018 15:08:38 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:08:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:08:53 GMT
USER [www-data]
# Thu, 23 Aug 2018 15:08:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed9ca568fbc1657942b30a2bd41aeb43f38f4b24d9a2dcb8e517b8c2e1e3812`  
		Last Modified: Thu, 23 Aug 2018 12:10:41 GMT  
		Size: 1.3 MB (1320688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e701b5b7480bed8ca3587df70a25fe60675a65a24090afe87f3e8ea85a0a69a`  
		Last Modified: Thu, 23 Aug 2018 12:10:39 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ac1385573db761f0e54326a6db3ce9be52efc97a1d9cdc528eb4dde3248983`  
		Last Modified: Thu, 23 Aug 2018 12:10:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a6f1a010db4da92b58d572b1fb67f51d8fdbad8e4463223f0984f77913c889`  
		Last Modified: Thu, 23 Aug 2018 12:36:39 GMT  
		Size: 13.5 MB (13498245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fd07d61c2042b7f14a14ed1e78426f7842d8fe250aac651ae0cc8ec02c631d`  
		Last Modified: Thu, 23 Aug 2018 12:36:09 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50117a8933c717c83a14a4310bc9edac290f1b5d9815423d10782d916ee91431`  
		Last Modified: Thu, 23 Aug 2018 12:37:02 GMT  
		Size: 14.4 MB (14413642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e090317610f4cdf5c0a677afde9b6a53159b8053545551e00e6f5fc4700f4b`  
		Last Modified: Thu, 23 Aug 2018 12:36:09 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5592ae12fa65a1baf31ecdfeb46946f3ae4b7eb76af620c98c16973917ee1450`  
		Last Modified: Thu, 23 Aug 2018 15:20:41 GMT  
		Size: 897.7 KB (897724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719046d26caabf893fc231056f79cd793ba5ae356eccec822e9ea92569afa86c`  
		Last Modified: Thu, 23 Aug 2018 15:20:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8112cdc4007e07f97d231a094eef4ec0594a63dc4d21173089e4c530fb7bb4d8`  
		Last Modified: Thu, 23 Aug 2018 15:20:40 GMT  
		Size: 8.4 MB (8440309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6089f40ce713dfe1a4ba9736d38421db02ab2e549914e7f3b77bd39e36fc6d6c`  
		Last Modified: Thu, 23 Aug 2018 15:20:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feba94b6943e2e0a9bd812ffec8b998ceccd3e25441843a10d110170aa9076e`  
		Last Modified: Thu, 23 Aug 2018 15:20:37 GMT  
		Size: 1.1 MB (1100462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c99cb498026afa5640e0a9d1c76858c1fd54bd165df9a7e284c4df6186fa91`  
		Last Modified: Thu, 23 Aug 2018 15:20:37 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
