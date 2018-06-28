## `wordpress:cli-1.5.1-php7.1`

```console
$ docker pull wordpress@sha256:058d7f5a98fa92256a444265555c6f603cdcc12f430f7fda48369842403c3e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-1.5.1-php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:a003c346590a82378c5eb480f85ef4e14d122cc716f179b2020743d477d712fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41739433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e56814405e7d0297fa44422442d519d5be1df1a5dab9df92ba6a930eddca8c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

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
# Wed, 23 May 2018 22:35:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 28 Jun 2018 02:02:37 GMT
ENV PHP_VERSION=7.1.19
# Thu, 28 Jun 2018 02:02:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.19.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 02:02:38 GMT
ENV PHP_SHA256=7cab88f269b90a8a38dbcccf3ec0d5c6eba86122431a53eaa94405bbb60370a8 PHP_MD5=
# Thu, 28 Jun 2018 02:02:45 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 28 Jun 2018 02:02:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:06:33 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 02:06:34 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:06:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 02:06:34 GMT
CMD ["php" "-a"]
# Thu, 28 Jun 2018 07:32:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 28 Jun 2018 07:32:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:32:17 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 28 Jun 2018 07:32:18 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 28 Jun 2018 07:32:18 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 07:32:19 GMT
VOLUME [/var/www/html]
# Thu, 28 Jun 2018 07:32:19 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 28 Jun 2018 07:32:19 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 28 Jun 2018 07:32:19 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 28 Jun 2018 07:32:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 28 Jun 2018 07:32:29 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 28 Jun 2018 07:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 07:32:29 GMT
USER [www-data]
# Thu, 28 Jun 2018 07:32:30 GMT
CMD ["wp" "shell"]
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
	-	`sha256:e30f80abbe95129d11799b1c949c679e554a6c868b66c64b62d14610f8d4a52f`  
		Last Modified: Thu, 28 Jun 2018 05:44:39 GMT  
		Size: 12.2 MB (12234146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00de3391d19eb8a9865b7645586d05f939621e9d2eb5f352eaeb18ba8a94bfe0`  
		Last Modified: Thu, 28 Jun 2018 05:44:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108a437426d151f1b71c54d568b7c2a5d9886ceda97f9a28cca172e202a5f41f`  
		Last Modified: Thu, 28 Jun 2018 05:44:43 GMT  
		Size: 16.4 MB (16426526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493a5e651e09467a896ee311c8f5ec83db66a52c220dbba5d8fa44bb8b2c7ed1`  
		Last Modified: Thu, 28 Jun 2018 05:44:39 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54160d5afa976a741ce48c3cb79e9718cda37d9832b15687c02a5b55bbb77ef7`  
		Last Modified: Thu, 28 Jun 2018 07:57:34 GMT  
		Size: 892.0 KB (892045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72a7159e3fe6129d846fef1d353fb452d45a9ea2850038ceab42cf7be91417`  
		Last Modified: Thu, 28 Jun 2018 07:57:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867ef53498111648b98b855d0bffabb8563d05343b861f1eee8b4b0a4a01c252`  
		Last Modified: Thu, 28 Jun 2018 07:57:35 GMT  
		Size: 7.8 MB (7771411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed178f8aaabd914e22f9784b9b87325f8fe63236b8342964c9db621d9273075`  
		Last Modified: Thu, 28 Jun 2018 07:57:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bf1a196a0af971f9e682e88f97dbd48a5e26965963f007544fc7a786cc1eec`  
		Last Modified: Thu, 28 Jun 2018 07:57:32 GMT  
		Size: 1.1 MB (1083498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b8527afd26183072409cdeba57b669a77aa045407ff3993dd0fe6311426a6e`  
		Last Modified: Thu, 28 Jun 2018 07:57:31 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-1.5.1-php7.1` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:032b4e19f06b01f817b53f7f853caf7e380dbd67f1f18ec9db59b44736ba25ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40303626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76c9b1af1ef2999c8aa57e98aa04c2cf4928f88dd5f69cdbadc5cef1221d146`
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
# Thu, 31 May 2018 10:43:27 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 10:43:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 10:43:29 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 21 Jun 2018 11:55:24 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 11:55:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 12:02:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 12:02:14 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 21 Jun 2018 12:02:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 12:02:16 GMT
CMD ["php" "-a"]
# Thu, 21 Jun 2018 18:13:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 21 Jun 2018 18:13:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Jun 2018 18:13:38 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 21 Jun 2018 18:13:40 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 21 Jun 2018 18:13:41 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 18:13:42 GMT
VOLUME [/var/www/html]
# Thu, 21 Jun 2018 18:13:43 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 21 Jun 2018 18:13:43 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 21 Jun 2018 18:13:44 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 21 Jun 2018 18:13:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 21 Jun 2018 18:13:52 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 21 Jun 2018 18:13:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 18:13:53 GMT
USER [www-data]
# Thu, 21 Jun 2018 18:13:55 GMT
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
	-	`sha256:72dc12741c7e07c520ad03d475f6c16b6b7544cd9e7b594536ea1c452aa4c32c`  
		Last Modified: Thu, 21 Jun 2018 15:18:06 GMT  
		Size: 12.2 MB (12232385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c48e80345e1ab8a4010d397ecaa57493a29f09c06cc0570cfdbec95fb94606`  
		Last Modified: Thu, 21 Jun 2018 15:18:04 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6330cc1b45fe61f9706581cb2ace87f41ba3ad68e6a8eadfe0fbcbf92ed2973e`  
		Last Modified: Thu, 21 Jun 2018 15:18:10 GMT  
		Size: 15.3 MB (15347222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940beb109b188a1266603fc650c4f36e317ea7968d9cece9098afec2ce272c48`  
		Last Modified: Thu, 21 Jun 2018 15:18:04 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca7a09d20a3d39e02f2f00817ce870359bd7f6a439eccbc08bf00787d79e931`  
		Last Modified: Thu, 21 Jun 2018 18:33:36 GMT  
		Size: 821.3 KB (821301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244dd736fcd5c9d615dc96496d7b628b19759709f4d5430935ef9ec10a2e0aea`  
		Last Modified: Thu, 21 Jun 2018 18:33:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd60a1708e98a6f8d4ab43c57e94d04623c2b49e503cf409db2f894c8fbc98`  
		Last Modified: Thu, 21 Jun 2018 18:33:36 GMT  
		Size: 7.6 MB (7611914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aab52c4a7306a8ed31a7e655143395dbcdf8a167ccb3f74dc2a617d596fc8b`  
		Last Modified: Thu, 21 Jun 2018 18:33:34 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dcaaafef2d606c29bf63fa3471b91fd0316e644881e0351ad4a19b6a2c8634`  
		Last Modified: Thu, 21 Jun 2018 18:33:34 GMT  
		Size: 1.1 MB (1082742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d645fa81dde8630a410ab46ebe2e65cd735147bfeccbe4179df91df45d0a91f`  
		Last Modified: Thu, 21 Jun 2018 18:33:34 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-1.5.1-php7.1` - linux; 386

```console
$ docker pull wordpress@sha256:7a43d4adbc6b5731199d560c2cd119df213a7f2c98bc713a03117bcedb6e819a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42472462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351e34ac6d7a62a1d519c0adf5d61f60a5627a4e71832fed96be2cad68ec010d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:46:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Jun 2018 10:46:29 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Jun 2018 10:46:30 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Jun 2018 10:46:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Jun 2018 10:46:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Jun 2018 10:46:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Jun 2018 10:46:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Jun 2018 10:46:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Jun 2018 11:10:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 01 Jun 2018 11:10:54 GMT
ENV PHP_VERSION=7.1.18
# Fri, 01 Jun 2018 11:10:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Fri, 01 Jun 2018 11:10:55 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 21 Jun 2018 12:06:50 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 12:06:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 12:09:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 12:09:47 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 21 Jun 2018 12:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 12:09:47 GMT
CMD ["php" "-a"]
# Thu, 21 Jun 2018 15:36:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 21 Jun 2018 15:36:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Jun 2018 15:36:21 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 21 Jun 2018 15:36:22 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 21 Jun 2018 15:36:22 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 15:36:22 GMT
VOLUME [/var/www/html]
# Thu, 21 Jun 2018 15:36:22 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 21 Jun 2018 15:36:23 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 21 Jun 2018 15:36:23 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 21 Jun 2018 15:36:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 21 Jun 2018 15:36:30 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 21 Jun 2018 15:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 15:36:30 GMT
USER [www-data]
# Thu, 21 Jun 2018 15:36:30 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9362910160aaa343ca8dc990efe62fff5a14089c10259744982d255c0638cb55`  
		Last Modified: Fri, 01 Jun 2018 11:43:26 GMT  
		Size: 1.4 MB (1368704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978adc59089609682b6befe63f957c0e68bd015afa73c26179064798a98bccfd`  
		Last Modified: Fri, 01 Jun 2018 11:43:25 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13520db38890805ee92c3c897f635d68fe93da65b7a2fd8b9d15270589cba60c`  
		Last Modified: Fri, 01 Jun 2018 11:43:25 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d235b7c2a284dde9a3c5fc9193f075ef939425d2f1cb5581ad3a1336d9a6fcd`  
		Last Modified: Thu, 21 Jun 2018 14:17:35 GMT  
		Size: 12.2 MB (12232441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57ab0aef387340a77659687972763e7e9f55c56a17f23866e20727b37f02481`  
		Last Modified: Thu, 21 Jun 2018 14:17:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c57a00c835171a1ea9d99d4430568b732543ca4168b34fcf963de672e64b1f`  
		Last Modified: Thu, 21 Jun 2018 14:17:42 GMT  
		Size: 16.8 MB (16776309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faec6a2ff88c3fa8aea17bdda9a9289e176f4b9ebfd3ccaa15b5bc2f9ceed97e`  
		Last Modified: Thu, 21 Jun 2018 14:17:33 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1213b22e8554064681402529457df953eb04d851a8bde08201a972e3aa623b08`  
		Last Modified: Thu, 21 Jun 2018 16:00:10 GMT  
		Size: 950.5 KB (950524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1905cf344118e5d549e5ec9bb8b0ed1f8e8eae7ee90a1164c7db04b407cf3a`  
		Last Modified: Thu, 21 Jun 2018 16:00:06 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84f51c7ddb06760ab753929ee466cada045bb3af354cca777cb30f281dba18f`  
		Last Modified: Thu, 21 Jun 2018 16:00:11 GMT  
		Size: 7.9 MB (7930185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7a1dc77cc266d75527cebcaa7fd51fe6e6783afcf37b542f91cb2fa5b0ffdd`  
		Last Modified: Thu, 21 Jun 2018 16:00:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc8692ae122529feb6c5cd8bee4a32a5f9f62a76fe45b03e9797c8c34571e26`  
		Last Modified: Thu, 21 Jun 2018 16:00:07 GMT  
		Size: 1.1 MB (1082927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759001a78a07fcabb71821b20d4259ad59995108172f9eb9b3dfb2769e749141`  
		Last Modified: Thu, 21 Jun 2018 16:00:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-1.5.1-php7.1` - linux; ppc64le

```console
$ docker pull wordpress@sha256:e1fc4e270c3ee6109ba449a131b2a3b7112ce6ea4d3c4754608ab197b797346f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41284524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1df9fd7a8278ed53a02fda63f0db646a9798fcf0827269d923ee8975bf2b0fc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Thu, 14 Dec 2017 09:49:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 14 Dec 2017 09:50:02 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 14 Dec 2017 09:50:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 14 Dec 2017 09:50:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Dec 2017 09:50:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 14 Dec 2017 09:50:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 09:50:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 09:50:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 08:44:44 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 09:40:19 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 09:40:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 09:40:20 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 21 Jun 2018 10:02:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 10:02:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 10:06:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 10:06:08 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 21 Jun 2018 10:06:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 10:06:11 GMT
CMD ["php" "-a"]
# Thu, 21 Jun 2018 13:34:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 21 Jun 2018 13:34:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Jun 2018 13:34:20 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 21 Jun 2018 13:34:25 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 21 Jun 2018 13:34:25 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 13:34:25 GMT
VOLUME [/var/www/html]
# Thu, 21 Jun 2018 13:34:26 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 21 Jun 2018 13:34:27 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 21 Jun 2018 13:34:32 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 21 Jun 2018 13:34:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 21 Jun 2018 13:34:41 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 21 Jun 2018 13:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:34:43 GMT
USER [www-data]
# Thu, 21 Jun 2018 13:34:47 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcb39b8c697dd02c12a952dcc63b609d7c7bf9d66e93e5e4913d2eeeaf894d3`  
		Last Modified: Thu, 14 Dec 2017 10:14:08 GMT  
		Size: 1.3 MB (1256438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a484a708d295b3464c467d2a9bd8343046d4f4905c5776958832b3f6754c2f6`  
		Last Modified: Thu, 14 Dec 2017 10:14:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b360613871987866ea7defe9eb40283e850669f1475e97eb519e25f1f522df28`  
		Last Modified: Thu, 14 Dec 2017 10:14:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f18f4c99914bd275ca8f0c76e23d838228992905b0ba4be9583a7f128c1b6f`  
		Last Modified: Thu, 21 Jun 2018 12:25:13 GMT  
		Size: 12.2 MB (12232447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1aff2708c56287b9b8bebfcf42acec84f587fc1e34b261bc618c9a3d51e7a3`  
		Last Modified: Thu, 21 Jun 2018 12:25:12 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068b8d109145a7451f4f5c361c1e6eca6b5525c55c3e6f34638546a0a22006e7`  
		Last Modified: Thu, 21 Jun 2018 12:25:17 GMT  
		Size: 16.1 MB (16074120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b084c242ea343d9fe4eb118a1b4aa464241b9210681632ac6e7b7d4ccb0a907d`  
		Last Modified: Thu, 21 Jun 2018 12:25:12 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db8bb64e937aeee17233acb4b0c330a15943cf5e90a7dc05dedc00d8838b175`  
		Last Modified: Thu, 21 Jun 2018 13:52:39 GMT  
		Size: 896.9 KB (896884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f1cc73c706bea97a8fa78541e05432b4029c7f272fe1e93d154d71dbbb9c74`  
		Last Modified: Thu, 21 Jun 2018 13:52:35 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4b92e9524001f77f8ee1663021978b54b14fcdca91446835c80ec94f4ae47b`  
		Last Modified: Thu, 21 Jun 2018 13:52:39 GMT  
		Size: 7.7 MB (7654476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640932a5cb7a88e82dfe6276dc0b6b4a4703a1a3c845903f2cd683670904c447`  
		Last Modified: Thu, 21 Jun 2018 13:52:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9376617b577b1ef5dd493f661acc4b4d2bbde78fbb1c2f2cc3c1193c1171f2d`  
		Last Modified: Thu, 21 Jun 2018 13:52:36 GMT  
		Size: 1.1 MB (1083445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c0a0be41afb8478e88fef24998b509fc781abb8d172763c51bda611f1ae0a8`  
		Last Modified: Thu, 21 Jun 2018 13:52:35 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
