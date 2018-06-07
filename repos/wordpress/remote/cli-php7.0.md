## `wordpress:cli-php7.0`

```console
$ docker pull wordpress@sha256:a27937dc05345c5607277a60eaad379c591bcb03ee39aa41dc4bbf567c4b9b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:837728985278c67a173876adca6379791f5d15765aead4d01ee692492fb38d79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37033713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dee9f037911874db72680d2d411374b6bfef24a6c30116184966491aff34ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 19:11:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Jun 2018 19:12:01 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 06 Jun 2018 19:12:01 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Jun 2018 19:12:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Jun 2018 19:12:02 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 06 Jun 2018 19:12:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Jun 2018 19:12:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Jun 2018 19:12:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Jun 2018 21:03:18 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 06 Jun 2018 21:03:18 GMT
ENV PHP_VERSION=7.0.30
# Wed, 06 Jun 2018 21:03:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Wed, 06 Jun 2018 21:03:20 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Wed, 06 Jun 2018 21:04:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 06 Jun 2018 21:04:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 06 Jun 2018 21:06:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Jun 2018 21:06:54 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Wed, 06 Jun 2018 21:06:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Jun 2018 21:06:54 GMT
CMD ["php" "-a"]
# Thu, 07 Jun 2018 03:43:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 07 Jun 2018 03:43:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 07 Jun 2018 03:44:00 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 07 Jun 2018 03:44:01 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 07 Jun 2018 03:44:01 GMT
WORKDIR /var/www/html
# Thu, 07 Jun 2018 03:44:01 GMT
VOLUME [/var/www/html]
# Thu, 07 Jun 2018 03:44:01 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 07 Jun 2018 03:44:02 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 07 Jun 2018 03:44:02 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 07 Jun 2018 03:44:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 07 Jun 2018 03:44:09 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 07 Jun 2018 03:44:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 03:44:09 GMT
USER [www-data]
# Thu, 07 Jun 2018 03:44:09 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9833b0afc68f3c69172f198b795184dd481f663e21b948642f06ca8b280eb94`  
		Last Modified: Wed, 06 Jun 2018 22:05:45 GMT  
		Size: 1.3 MB (1268710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253fa17a201519712cf30bc2462187063bb901b076d24fc9c0ad0e2572eb0fc`  
		Last Modified: Wed, 06 Jun 2018 22:05:41 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ce3cad229c1194c8659d8569dfe280c51af2634b43f16c364c54391f2ce009`  
		Last Modified: Wed, 06 Jun 2018 22:05:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcffb8ffaf2a58c15c30f3390a50ac78ad12f627013213039666ecf7c0ff0fea`  
		Last Modified: Wed, 06 Jun 2018 22:22:18 GMT  
		Size: 12.0 MB (12049215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b28591fe21ef7217da72c7a5f94183f10c8c9f68e8d94292f902b6dd46be79a`  
		Last Modified: Wed, 06 Jun 2018 22:22:14 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6900d3b8392e4968a5ad4187d1dcf7070710b5a1b748ae0b3a0467cea5f478`  
		Last Modified: Wed, 06 Jun 2018 22:22:20 GMT  
		Size: 12.0 MB (11981891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92cf4bddae7d901874b927a32843945a51d84f9ca6723da9c84f79c1252caea`  
		Last Modified: Wed, 06 Jun 2018 22:22:15 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fff3bcf7acd3dbc8ec3797caeb587d4cf575f747d49dbabbd00632040a127e8`  
		Last Modified: Thu, 07 Jun 2018 04:00:25 GMT  
		Size: 807.9 KB (807907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825e9bf14e5f7a1d835f23d67971904b8d946bdeaf450d91b9a60cb88957bb3`  
		Last Modified: Thu, 07 Jun 2018 04:00:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60bcca3b7ac3c3c274a50996b7bcd8e868d336e34173ab04aab9efe101e4e637`  
		Last Modified: Thu, 07 Jun 2018 04:00:26 GMT  
		Size: 7.8 MB (7772084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcaf958804b53e126e892b6c1078338031c345515f8a23b8ba574666e698856`  
		Last Modified: Thu, 07 Jun 2018 04:00:23 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a36caa25fe4484f38e4f0c74099f9b2215e9e9cf0fca90d72366a2d805c6c2`  
		Last Modified: Thu, 07 Jun 2018 04:00:23 GMT  
		Size: 1.1 MB (1083399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a810cf11f524a44d18ff593c6bb19ab98d11b8e9eee0232ec4b62ee9493d091`  
		Last Modified: Thu, 07 Jun 2018 04:00:23 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.0` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:e1bdb20f693f2b5629ca4d2c710e1720dfc65a1958e971e1481532d8bc1d913f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36158940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99c76ae192db82b915665ea42fd04d4fd96497d20dc2a261459107658c101a8`
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
# Fri, 25 May 2018 11:27:49 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 25 May 2018 11:27:50 GMT
ENV PHP_VERSION=7.0.30
# Fri, 25 May 2018 11:27:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Fri, 25 May 2018 11:27:51 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Thu, 07 Jun 2018 11:13:04 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 07 Jun 2018 11:13:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 07 Jun 2018 11:20:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 07 Jun 2018 11:20:13 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 07 Jun 2018 11:20:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 07 Jun 2018 11:20:15 GMT
CMD ["php" "-a"]
# Thu, 07 Jun 2018 13:18:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 07 Jun 2018 13:18:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 07 Jun 2018 13:18:24 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 07 Jun 2018 13:18:26 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 07 Jun 2018 13:18:27 GMT
WORKDIR /var/www/html
# Thu, 07 Jun 2018 13:18:28 GMT
VOLUME [/var/www/html]
# Thu, 07 Jun 2018 13:18:30 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 07 Jun 2018 13:18:31 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 07 Jun 2018 13:18:32 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 07 Jun 2018 13:18:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 07 Jun 2018 13:18:40 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 07 Jun 2018 13:18:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 13:18:42 GMT
USER [www-data]
# Thu, 07 Jun 2018 13:18:43 GMT
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
	-	`sha256:fe41efcb0c38dfd32cb976f826d0f1b81cd80dbfc34eb42efbb17148da9fa43a`  
		Last Modified: Thu, 07 Jun 2018 12:18:16 GMT  
		Size: 12.0 MB (12049150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a4789eb6ff3a29d13f6d3009e87994ffcd0c274c1768222cad9c9246643af1`  
		Last Modified: Thu, 07 Jun 2018 12:18:13 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f8bfa2bbb8c5bde1febeab0586a892e840736eddfb151df9d64daf09874d3`  
		Last Modified: Thu, 07 Jun 2018 12:18:21 GMT  
		Size: 11.5 MB (11465805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30697ef5510c3bb2382c496300c47f4cc40900a15e04b143bd231704a6288ce6`  
		Last Modified: Thu, 07 Jun 2018 12:18:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c3a9608c64fc3bbbec893a526f9e3a82cda3c75f5696274c8650fc475aa9a0`  
		Last Modified: Thu, 07 Jun 2018 13:33:00 GMT  
		Size: 741.3 KB (741280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2b43275aa8170cf46c08f459f7d9cfe79424366438cdee882ac0226c67b5ac`  
		Last Modified: Thu, 07 Jun 2018 13:32:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cd99c83859b7029e9096b4c2a58d2e05dc332b820bb50b80be8e0b90110e7`  
		Last Modified: Thu, 07 Jun 2018 13:33:02 GMT  
		Size: 7.6 MB (7611908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9885160f30b3ac3227623246a96d4f07d3263c1f4ca27691fca5353ee6f7c27`  
		Last Modified: Thu, 07 Jun 2018 13:32:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df64c8578271b1351466c7fa6d8afa20723098a7072eafdfe37f158738c08ea7`  
		Last Modified: Thu, 07 Jun 2018 13:33:00 GMT  
		Size: 1.1 MB (1082736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a5be912f19991546b751cbeaa92d9d30edb64ba66ac094cee5708b21db93c`  
		Last Modified: Thu, 07 Jun 2018 13:32:58 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.0` - linux; 386

```console
$ docker pull wordpress@sha256:3b05b8269c5cd9e39a3be1a0c084761c108dc8bab717e3c523f8deb957046538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37830271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d4c656cc61c2829684c30fbfdc1526dee6163e613bd96928ff0af982cd76a8`
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
# Fri, 01 Jun 2018 11:21:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Jun 2018 11:21:35 GMT
ENV PHP_VERSION=7.0.30
# Fri, 01 Jun 2018 11:21:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Fri, 01 Jun 2018 11:21:35 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Fri, 01 Jun 2018 11:22:02 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Jun 2018 11:22:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Jun 2018 11:24:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Jun 2018 11:24:41 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Fri, 01 Jun 2018 11:24:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Jun 2018 11:24:41 GMT
CMD ["php" "-a"]
# Fri, 01 Jun 2018 16:56:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 01 Jun 2018 16:56:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Jun 2018 16:56:37 GMT
RUN apk add --no-cache 		less 		mysql-client
# Fri, 01 Jun 2018 16:56:38 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 01 Jun 2018 16:56:38 GMT
WORKDIR /var/www/html
# Fri, 01 Jun 2018 16:56:39 GMT
VOLUME [/var/www/html]
# Thu, 07 Jun 2018 12:32:10 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 07 Jun 2018 12:32:11 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 07 Jun 2018 12:32:11 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 07 Jun 2018 12:32:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 07 Jun 2018 12:32:18 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:32:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:32:18 GMT
USER [www-data]
# Thu, 07 Jun 2018 12:32:18 GMT
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
	-	`sha256:b50ae095a11bba05e6ca5fe50eea0b7fe3426b744a89db1bbacdfea644a7aa48`  
		Last Modified: Fri, 01 Jun 2018 11:51:29 GMT  
		Size: 12.0 MB (12048988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bd8eb5f990f2f807db7596af0b3bf1f369c24f61ff81acafd810323b9600c5`  
		Last Modified: Fri, 01 Jun 2018 11:51:27 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35c64905c544fbe2c6419579dbb34725cc1f78278da8281b82346cd3c7ce736`  
		Last Modified: Fri, 01 Jun 2018 11:51:33 GMT  
		Size: 12.4 MB (12399564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd814a19975cf3f88555e837d7e3701c97db52655f45f78022afe9ece31a25`  
		Last Modified: Fri, 01 Jun 2018 11:51:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc53ccb923ca936301ae8556024db59d04ca8ddf38c2570b5d810187b840176`  
		Last Modified: Thu, 07 Jun 2018 12:40:16 GMT  
		Size: 869.0 KB (869020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4337d7d45fc2a2c233089021615569f6436a7643bad6797dede7b29655b9145b`  
		Last Modified: Thu, 07 Jun 2018 12:40:13 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f0b9b04e77971a1e35ca9d3c77d9401f18dcb3754f9e65e8d598a70c4f7e8d`  
		Last Modified: Thu, 07 Jun 2018 12:40:17 GMT  
		Size: 7.9 MB (7929820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa474d2a74e0350a098e088bd97ceb56b490b6f05371a590cdf4886c2b4e6f2`  
		Last Modified: Thu, 07 Jun 2018 12:40:13 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197f14c7e65c734b7e853b81dbbcee0a36fb54927cda772a2c5f615ad8e6bd4c`  
		Last Modified: Thu, 07 Jun 2018 12:40:13 GMT  
		Size: 1.1 MB (1082813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f535a932b7956cfeb8bab583c228004fb71214c7adaed633390fe91132b8f54`  
		Last Modified: Thu, 07 Jun 2018 12:40:13 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.0` - linux; ppc64le

```console
$ docker pull wordpress@sha256:44ad34c84dc3ed12e36d15e746093875899a4cef63af01e2bd9b7727e6af15e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36924830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ace3b2ea3e72dadd271b409533ce1dbde452c093c0381c42ea7a5f5ccba8ee`
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
# Thu, 24 May 2018 09:19:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 24 May 2018 09:19:24 GMT
ENV PHP_VERSION=7.0.30
# Thu, 24 May 2018 09:19:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Thu, 24 May 2018 09:19:31 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Thu, 07 Jun 2018 09:51:56 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 07 Jun 2018 09:52:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:55:02 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 07 Jun 2018 09:55:04 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:55:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 07 Jun 2018 09:55:06 GMT
CMD ["php" "-a"]
# Thu, 07 Jun 2018 11:01:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 07 Jun 2018 11:01:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 07 Jun 2018 11:01:56 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 07 Jun 2018 11:01:59 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 07 Jun 2018 11:02:00 GMT
WORKDIR /var/www/html
# Thu, 07 Jun 2018 11:02:01 GMT
VOLUME [/var/www/html]
# Thu, 07 Jun 2018 11:02:02 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 07 Jun 2018 11:02:02 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 07 Jun 2018 11:02:03 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 07 Jun 2018 11:02:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 07 Jun 2018 11:02:12 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 07 Jun 2018 11:02:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 11:02:15 GMT
USER [www-data]
# Thu, 07 Jun 2018 11:02:16 GMT
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
	-	`sha256:478bbfde88af6fb10a13058f12bb91d60d795ec875ffaff665494301f2932c3d`  
		Last Modified: Thu, 07 Jun 2018 10:25:39 GMT  
		Size: 12.0 MB (12049207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e6b221c74e0bbb28c39a7ab714be82e36c7ee93e40a6603350c2857c04adcc`  
		Last Modified: Thu, 07 Jun 2018 10:25:37 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea8086647a4ab409308a061507e40ec3ed13ac26102d1117c47e1a652a19486`  
		Last Modified: Thu, 07 Jun 2018 10:25:42 GMT  
		Size: 12.0 MB (11984152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0ca25fa5b220044d8ebfb39dce2d9d07e231be59296f2cbad74b93badd8313`  
		Last Modified: Thu, 07 Jun 2018 10:25:37 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd79bb012722ef47f38edc459528f142920f96207df15ed5502aa4fcd7de56f7`  
		Last Modified: Thu, 07 Jun 2018 11:12:26 GMT  
		Size: 810.5 KB (810476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7e2adc76f3815e9be5b557a9252a92c98985cab75d3b6e401799fe5aadeda9`  
		Last Modified: Thu, 07 Jun 2018 11:12:24 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d750be358fb48e925ac3a6125fbbad3c817d79929019d519983d5613611ea1d4`  
		Last Modified: Thu, 07 Jun 2018 11:12:25 GMT  
		Size: 7.7 MB (7654425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00999ec756e7aafc9e99326913f5c698e168e7f63b23ec918aae74f1cdf5d261`  
		Last Modified: Thu, 07 Jun 2018 11:12:24 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b77931532abea8c08ddb3cc752a31fb3f4925dfbed0305be938e46471b273fa`  
		Last Modified: Thu, 07 Jun 2018 11:12:23 GMT  
		Size: 1.1 MB (1083428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716105896197188e334f3fa7202a74df57556caad0d02c686a601651b719d3e1`  
		Last Modified: Thu, 07 Jun 2018 11:12:23 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
