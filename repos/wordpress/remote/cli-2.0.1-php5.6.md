## `wordpress:cli-2.0.1-php5.6`

```console
$ docker pull wordpress@sha256:95d61ed2c6ce160bf0be67b49fdbff4dc1318528d1b704930bba56a0bb0de10e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-2.0.1-php5.6` - linux; amd64

```console
$ docker pull wordpress@sha256:9c6da32ddf133a1e1e5adf079c88a745fbc156f23a4cbe9b2eed9eed2f352200
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38783642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7c6d6e9952f43894dfcbb4092500ff928552b7b5fd2c7d8e6682fc8af7413e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:14:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:14:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:14:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 03:32:53 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 05:56:44 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 05:56:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 05:56:45 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Fri, 16 Nov 2018 07:58:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 07:58:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 08:03:04 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 08:03:05 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 08:03:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 08:03:06 GMT
CMD ["php" "-a"]
# Fri, 16 Nov 2018 10:17:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 16 Nov 2018 10:17:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Nov 2018 10:18:00 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Fri, 16 Nov 2018 10:18:00 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 16 Nov 2018 10:18:01 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 10:18:01 GMT
VOLUME [/var/www/html]
# Fri, 16 Nov 2018 10:18:01 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 16 Nov 2018 10:18:02 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Fri, 16 Nov 2018 10:18:02 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Fri, 16 Nov 2018 10:18:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 16 Nov 2018 10:18:15 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 16 Nov 2018 10:18:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 10:18:28 GMT
USER [www-data]
# Fri, 16 Nov 2018 10:18:28 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fff5e8e8b50802e96d5b83fa3456b1fdd9931573fc3c735e438a9776bf39b96`  
		Last Modified: Fri, 16 Nov 2018 09:49:22 GMT  
		Size: 12.5 MB (12486428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e1aec5ad01cf5b77e7de8bb4278e004e964a533a9ea7b113011a6a1da5f324`  
		Last Modified: Fri, 16 Nov 2018 09:49:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51687f5c09d1df1d9f8baeeb23fc4628e79557d9a8bff274737fa80a20fca062`  
		Last Modified: Fri, 16 Nov 2018 09:49:24 GMT  
		Size: 10.4 MB (10389697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d893bea814de3b239dfcfc0e802a848c76c2baa520a8339ae8b2390e8a2fef96`  
		Last Modified: Fri, 16 Nov 2018 09:49:21 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2870de0fd1e8d47fd5b8f0478c961caba1600ff565b7457a10feafc9d020c3b`  
		Last Modified: Fri, 16 Nov 2018 10:55:57 GMT  
		Size: 2.1 MB (2069948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7120255de7f0a638ac3a8b9179bfdc269304d983b0bc86b05cea29ec24e1caf4`  
		Last Modified: Fri, 16 Nov 2018 10:55:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0755355443596504805d3e9407390b9d93bae3d9e89b3b0c07dcc908e88a15`  
		Last Modified: Fri, 16 Nov 2018 10:55:58 GMT  
		Size: 9.1 MB (9070548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d48237eb98197d53ae2d359ffe366a8c0d34de30248128dd5b281e29518fe0`  
		Last Modified: Fri, 16 Nov 2018 10:55:55 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e107fc5265845fa75b3df1cb363f35f0bc105dcb1c7b23eb039821a9f8a7fcc`  
		Last Modified: Fri, 16 Nov 2018 10:55:56 GMT  
		Size: 1.2 MB (1201448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051da8dd9462f85e32bfe5897fda8d5d646b51321b4dcf9fb707835b9d4c789e`  
		Last Modified: Fri, 16 Nov 2018 10:55:55 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.0.1-php5.6` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:8302cbe25087b035a0f81d404fd8d99da59d28b3823962ef655cd014e13a4b12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37400780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4834154c5b1bb4f3ffa29edd63caa01229bf9a3d6f8d2cf583a446b2ab8a1741`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:04:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 08:04:39 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 08:04:40 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 08:04:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 08:04:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 08:04:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:04:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:04:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:13:42 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 09:37:22 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 09:37:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 09:37:23 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 09:37:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 09:37:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:40:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Nov 2018 09:01:11 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Thu, 15 Nov 2018 09:01:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 09:01:12 GMT
CMD ["php" "-a"]
# Thu, 15 Nov 2018 09:38:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 15 Nov 2018 09:38:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 09:39:01 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Thu, 15 Nov 2018 09:39:03 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 15 Nov 2018 09:39:03 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 09:39:03 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 09:39:04 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 15 Nov 2018 09:39:04 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Thu, 15 Nov 2018 09:39:05 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Fri, 16 Nov 2018 10:12:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 16 Nov 2018 10:12:32 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 16 Nov 2018 10:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 10:12:33 GMT
USER [www-data]
# Fri, 16 Nov 2018 10:12:33 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec04dbd9ec82b38fae009bdfadd7f0fb7bee63c5bb0e5097a0cd58f0cceceb1`  
		Last Modified: Sat, 15 Sep 2018 09:56:47 GMT  
		Size: 1.3 MB (1315120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b5cc2b10f5d05dc75db927902404c769345f28262497e2a81b5d772e452f55`  
		Last Modified: Sat, 15 Sep 2018 09:56:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652b4cff16833433471b4d932fb39c78c844f379cc8e2f073bc1b83a6d0c7fb6`  
		Last Modified: Sat, 15 Sep 2018 09:56:46 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319e6c8cab8a524f8c24fd1d28f7fd2f16ee520d2df512e6d5329b6e02f15be9`  
		Last Modified: Sat, 15 Sep 2018 10:08:29 GMT  
		Size: 12.5 MB (12486452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64579e3397ca50653b5122c094da0313ecc83968e4df125e534f815a26b072ad`  
		Last Modified: Sat, 15 Sep 2018 10:08:28 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edd30e838fa447edd8407a88f8ca5d861c0802ba8c9c03d28714338e8ee0037`  
		Last Modified: Sat, 15 Sep 2018 10:08:31 GMT  
		Size: 9.6 MB (9621181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb37ef72e7e714d0531b37b9331bb25175b52260227fd6a3c8ce9e1a68ed170`  
		Last Modified: Thu, 15 Nov 2018 09:10:58 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d63e665072e3c3cf62c0e6260a5cf3f10d3b0a88fa2d192379c6eab5bce4e8`  
		Last Modified: Thu, 15 Nov 2018 09:48:37 GMT  
		Size: 2.0 MB (1971623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa0d973cd36c6a0b541501e8219b39d65fb9a11724f8d2fe6d1daf4f8aad84`  
		Last Modified: Thu, 15 Nov 2018 09:48:36 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90abf6238ed5eab332ceb95ade1bfb3f98fd03884091f691c6f0cd23e77a091b`  
		Last Modified: Thu, 15 Nov 2018 09:48:39 GMT  
		Size: 8.7 MB (8653754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee30c3d34a6b6ca83b08c68cfdd89ee1b36341e7a8f6eab7a6f435e0cf0e9a16`  
		Last Modified: Thu, 15 Nov 2018 09:48:34 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e384188a1d87dc1c8f1dc89a8c51dba9f243bac46d6dea99090e02307078cb99`  
		Last Modified: Fri, 16 Nov 2018 10:17:40 GMT  
		Size: 1.2 MB (1200954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fec69f23c737c0c0057a1fcf7fb4f3f79010cd71610a5ffff7d4dd641aa5fe4`  
		Last Modified: Fri, 16 Nov 2018 10:17:40 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.0.1-php5.6` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:a92f09771a9e5d43e4ec3dcfa47df08e7a6cf3bd4de9d2c2a22f20688a692ed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37528840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b705a7aa5c1c396716e90f7f9a1492f4183df75d311bf580e3f3a31688edee0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 14 Sep 2018 16:18:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 14 Sep 2018 20:08:17 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 14 Sep 2018 20:08:19 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 14 Sep 2018 20:08:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 14 Sep 2018 20:08:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 14 Sep 2018 20:08:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 20:08:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 20:08:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 15 Sep 2018 00:40:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 17:16:47 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 17:16:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 17:16:48 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Fri, 16 Nov 2018 18:52:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 18:52:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:58:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 18:58:47 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:58:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 18:58:49 GMT
CMD ["php" "-a"]
# Sat, 17 Nov 2018 00:51:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 00:51:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 00:51:39 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 17 Nov 2018 00:51:41 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 17 Nov 2018 00:51:42 GMT
WORKDIR /var/www/html
# Sat, 17 Nov 2018 00:51:43 GMT
VOLUME [/var/www/html]
# Sat, 17 Nov 2018 00:51:44 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 17 Nov 2018 00:51:45 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Sat, 17 Nov 2018 00:51:46 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Sat, 17 Nov 2018 00:51:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 17 Nov 2018 00:51:55 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 17 Nov 2018 00:51:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:52:01 GMT
USER [www-data]
# Sat, 17 Nov 2018 00:52:05 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5d5b62245e8bd9b245068e83382734295b3d4cb9ca04771d79c339cdc4e5b8`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 1.3 MB (1273934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c22e7722871e7a01dcb303698a0114f084259f51352de3601bb74ef6b3169`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d847fcef0e6a77d8f66872ce91022501ba8c4b6b7bc8028e7af971ea15298`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3462a1db65ec7bc7e522bdff19a668daacff1c2fdf7959b542de5d5ab253b3f4`  
		Last Modified: Fri, 16 Nov 2018 20:26:12 GMT  
		Size: 12.5 MB (12486459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87351d5e6c40eb85626fa4e8c06948a95129258847488a4131c5edb6878755ce`  
		Last Modified: Fri, 16 Nov 2018 20:26:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c22fa993ad0cfbd1b4ce6b721fb5a85688362fee548ae28e92b47ce672ddd91`  
		Last Modified: Fri, 16 Nov 2018 20:26:15 GMT  
		Size: 9.7 MB (9688735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e3eebbda2a910bedf77397fe185951c827edd9e7135bb0221ffc55a447d510`  
		Last Modified: Fri, 16 Nov 2018 20:26:10 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2fe06f94de165a269e9b3648463d5d0dcd1c9f09949c3553e349609fcca598`  
		Last Modified: Sat, 17 Nov 2018 01:35:28 GMT  
		Size: 2.0 MB (1970838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467ad21c66ed3caa3f8a0aab465956f8396fd6a803b2312d4ae303de3b5e5803`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca9b6ef64fd83720100717e75735047ffcbb076555de6cec31a0f18acc81318`  
		Last Modified: Sat, 17 Nov 2018 01:35:28 GMT  
		Size: 8.8 MB (8803471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850363fcaf9f3f80ca4eb850782f67cd13962e7bf03538c9ff344b74c976c285`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c7341af1595f77b99f22c542956ce8feca20c789689819b47b4e8248fa5968`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 1.2 MB (1200490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc932b79a613aa7fa939574965ed541724fa02c26c7562815fde80f26f357f4`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.0.1-php5.6` - linux; 386

```console
$ docker pull wordpress@sha256:a63cec22c3cce44e690c3f1e5e20e9768a37b1a3a6184a4df89ea2bf57051ac5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39589120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c88d1658157992c2fa9070211e9d443b190d0c8aa70dd04efce2c61d80fa88a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:37:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 12:37:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 12:37:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 12:37:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 12:37:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 12:37:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:37:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:37:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 14:57:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 15:47:25 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 15:47:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 15:47:25 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 17 Nov 2018 01:08:57 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 17 Nov 2018 01:08:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 17 Nov 2018 01:15:08 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 17 Nov 2018 01:15:09 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Sat, 17 Nov 2018 01:15:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 17 Nov 2018 01:15:09 GMT
CMD ["php" "-a"]
# Sat, 17 Nov 2018 10:14:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 10:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 10:14:57 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 17 Nov 2018 10:14:57 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 17 Nov 2018 10:14:58 GMT
WORKDIR /var/www/html
# Sat, 17 Nov 2018 10:14:58 GMT
VOLUME [/var/www/html]
# Sat, 17 Nov 2018 10:14:58 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 17 Nov 2018 10:14:58 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Sat, 17 Nov 2018 10:14:59 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Sat, 17 Nov 2018 10:15:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 17 Nov 2018 10:15:04 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 17 Nov 2018 10:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 10:15:04 GMT
USER [www-data]
# Sat, 17 Nov 2018 10:15:05 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d4abd9cb4c79c6416ce455ee2493d28f7a114950d8f4396d08b79ad55cc24f`  
		Last Modified: Wed, 12 Sep 2018 15:33:01 GMT  
		Size: 1.5 MB (1452991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88d2bb459bda03d7dd027aabfa163a3736e158569f1fffbb07ab53ecf02ec91`  
		Last Modified: Wed, 12 Sep 2018 15:33:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998bc629b0e38631ba000bc16dd2fe77dc82e42852090c93177e58eaf779abd8`  
		Last Modified: Wed, 12 Sep 2018 15:33:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bd2c5313f53050e11dd97283091744667b5ab244564d529850ed99b719e8bb`  
		Last Modified: Sat, 17 Nov 2018 02:56:19 GMT  
		Size: 12.5 MB (12486457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1211bdef327238a54ede59d5d2b017ec03b1ae3013f5b3f2800679f39e7468d`  
		Last Modified: Sat, 17 Nov 2018 02:56:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037fa20b4a22b0137e91158529e7eb3a0486d9baa34960048549ec0a1bbd226c`  
		Last Modified: Sat, 17 Nov 2018 02:56:22 GMT  
		Size: 10.9 MB (10850551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82acd21d01f66b587084a3c96725d8a6af86dc938e46b0f14de54f99b303174`  
		Last Modified: Sat, 17 Nov 2018 02:56:16 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c832575b04583cf53e0806eedd8bf2b867709a18be5b0f899104938c5e808a`  
		Last Modified: Sat, 17 Nov 2018 10:53:28 GMT  
		Size: 2.1 MB (2098774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3e3090f5267249ae2c1ed62cee8314a21276f2227e84823e44a648d100eeea`  
		Last Modified: Sat, 17 Nov 2018 10:53:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cf7bbf3692144f9241ef2359490ef6d61c6d3fe8c399e1700eac5702b7ca6f`  
		Last Modified: Sat, 17 Nov 2018 10:53:32 GMT  
		Size: 9.2 MB (9223101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbea88b54b6e504607695423a4e8b69cb5402c1945acafcde1c358830089670`  
		Last Modified: Sat, 17 Nov 2018 10:53:26 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa127b4ea3a8cd7b1b9cbf50d630f65dc93c6c4fa3eac1c1f677408477901f91`  
		Last Modified: Sat, 17 Nov 2018 10:53:27 GMT  
		Size: 1.2 MB (1200634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcc6c630a6721ba4acd68ef9ba97077969c6233dbeb5483468158b3dd734f51`  
		Last Modified: Sat, 17 Nov 2018 10:53:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.0.1-php5.6` - linux; ppc64le

```console
$ docker pull wordpress@sha256:3b1d288b23483e4f14a8ebd912a69ff5f619ea24071106e896d838a87d738557
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38370369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a19a25a1162556da7f89e475843a6056a0fbf537e7edfee41cc8ee0d212cb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:47:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 10:47:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 10:47:45 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 10:47:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 10:48:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 10:48:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 10:48:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 10:48:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 13:10:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 12:36:42 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 12:36:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:36:44 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Fri, 16 Nov 2018 16:23:44 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 16:23:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:26:41 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 16:26:43 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:26:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 16:26:46 GMT
CMD ["php" "-a"]
# Fri, 16 Nov 2018 18:19:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 16 Nov 2018 18:19:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Nov 2018 18:19:20 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Fri, 16 Nov 2018 18:19:25 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 16 Nov 2018 18:19:28 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 18:19:30 GMT
VOLUME [/var/www/html]
# Fri, 16 Nov 2018 18:19:31 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 16 Nov 2018 18:19:33 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Fri, 16 Nov 2018 18:19:35 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Fri, 16 Nov 2018 18:19:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 16 Nov 2018 18:19:45 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:19:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:19:50 GMT
USER [www-data]
# Fri, 16 Nov 2018 18:19:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2065b998114051b7b227afdf3beaf87ddb601622e26d66a153bda4a465c0dd4d`  
		Last Modified: Wed, 12 Sep 2018 13:55:29 GMT  
		Size: 1.3 MB (1322110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeb3707e07380790bc01a39b06ae1a0d8e055a505ede356982b61829e58312f`  
		Last Modified: Wed, 12 Sep 2018 13:55:28 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1992446f59e7d0ec448fc0276afa9cdc55467e5ce7ae99d4a0567c9b8e7ce3`  
		Last Modified: Wed, 12 Sep 2018 13:55:27 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7738fea3d58fd688724ba921689841c2659b79b94cfdf2d9f0a914789c8f135b`  
		Last Modified: Fri, 16 Nov 2018 17:39:49 GMT  
		Size: 12.5 MB (12486468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e8491cf57f8f7d6328fed4fc5a23d04934cd5812fd79bac1619ed47c48dd5`  
		Last Modified: Fri, 16 Nov 2018 17:39:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c670fa8ed0d34f59537d087f2efd2b86f90be4a1508fb77006a83e8a7b4fd7`  
		Last Modified: Fri, 16 Nov 2018 17:39:58 GMT  
		Size: 10.1 MB (10141448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded40cbb68000c5a9d6a95912859e4a7c3ac84bff7135e6b1e26123969186286`  
		Last Modified: Fri, 16 Nov 2018 17:39:47 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c368bd4846706e5de71829e242b300845e3783072aaaa3c0ee62cee0ac69f72`  
		Last Modified: Fri, 16 Nov 2018 18:48:22 GMT  
		Size: 2.0 MB (2046401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73ea4537353dd6ff39d420829f9305b7a18d494fba2f8c6729bfdaf5c12a09`  
		Last Modified: Fri, 16 Nov 2018 18:48:18 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90db0583852fdc9b9e25eb0c836a9e5b61c3f626d0662960673b5e95c0df82f3`  
		Last Modified: Fri, 16 Nov 2018 18:48:22 GMT  
		Size: 9.0 MB (8972202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf98c48e190486aa380b64f341c7d51da0863c2a4e1d17e78c41c6e1be0350b`  
		Last Modified: Fri, 16 Nov 2018 18:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa0f28ab8514184340148f3137698a5240779aee22b2bb863372e69df47d58f`  
		Last Modified: Fri, 16 Nov 2018 18:48:19 GMT  
		Size: 1.2 MB (1201265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c831dcc57a1ae6c6d96390056037bd78a1b3fefa1492fa67dab0220f9f5dcc`  
		Last Modified: Fri, 16 Nov 2018 18:48:18 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
