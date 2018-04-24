## `wordpress:cli-1.5-php7.1`

```console
$ docker pull wordpress@sha256:8e1d89823f90544cdf84c565d062468d09ef3ae40e5ad9f5dbf9a77dd950eaa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.5-php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:fd74f738ba30a744c2f5029f36e5082bf3e0344cb3cf6245427db64a0ba6cbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36751881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c209348d7401a861027134eb7108cb63636d6e2d89212b32c4ff32ea83ee7f75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:00:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Jan 2018 03:00:28 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Jan 2018 03:00:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Jan 2018 03:00:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Jan 2018 03:00:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 Jan 2018 03:00:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 03:00:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 03:00:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Jan 2018 03:00:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 05 Apr 2018 04:21:40 GMT
ENV PHP_VERSION=7.1.16
# Thu, 05 Apr 2018 04:21:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Thu, 05 Apr 2018 04:21:40 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Thu, 05 Apr 2018 04:22:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 05 Apr 2018 04:22:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 05 Apr 2018 04:26:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 02:00:24 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Tue, 24 Apr 2018 02:00:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 02:00:25 GMT
CMD ["php" "-a"]
# Tue, 24 Apr 2018 08:17:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 08:17:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 08:17:04 GMT
RUN apk add --no-cache 		less 		mysql-client
# Tue, 24 Apr 2018 08:17:05 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 24 Apr 2018 08:17:06 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 08:17:06 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 08:17:06 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Tue, 24 Apr 2018 08:17:06 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Tue, 24 Apr 2018 08:17:07 GMT
ENV WORDPRESS_CLI_SHA512=8693cdbc06cca37be9976c4f76aa81c111095f88bb121277cbdfa85f8a2ada3b9133cd9641c439e6f5579d3469a1a44488e872ecbff3d3eba0488bbc8033d6d8
# Tue, 24 Apr 2018 08:17:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 24 Apr 2018 08:17:18 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:17:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 08:17:18 GMT
USER [www-data]
# Tue, 24 Apr 2018 08:17:19 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347280e4401ec27a2af6bcded9c9fe28c0acbe751f69f1d47c4fd6d2c82ba034`  
		Last Modified: Wed, 10 Jan 2018 04:40:03 GMT  
		Size: 1.3 MB (1324983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575b1e17046fe1c06043ae027f4599ed64f34196604a884d74c8942cdf71873e`  
		Last Modified: Wed, 10 Jan 2018 04:40:02 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c263d6f029c4ccdfe4f8da176f53cbf3870d7d83f852d8b05ec3a606374d9`  
		Last Modified: Wed, 10 Jan 2018 04:40:00 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41fd17f73193c5a28f640851168879c460aa4f8b452809ff8c1b8320b953692`  
		Last Modified: Thu, 05 Apr 2018 08:07:54 GMT  
		Size: 12.2 MB (12230405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9e8ec6303f7230a538e16b65bbfaf93991eba2f2b093260f87cc39b126dc35`  
		Last Modified: Thu, 05 Apr 2018 08:07:48 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7fe18e3b974cfd6f7432f575228c4711bbecebb3eeb26a9674603fad6f128`  
		Last Modified: Thu, 05 Apr 2018 08:07:52 GMT  
		Size: 11.1 MB (11135108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0d61781b05a9ee008d7b00ee76997e162df3e01ff5ad9339415f9388de3396`  
		Last Modified: Tue, 24 Apr 2018 03:27:46 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acb8a56d4bf8d651b83eff5de4856fd1c6bc3e7920d4e0699e8c98e4d42ca1f`  
		Last Modified: Tue, 24 Apr 2018 09:17:55 GMT  
		Size: 830.5 KB (830501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845b9df03726089f57c364e11b59a602f408c80fc3bc744eb6771b12dc21c99e`  
		Last Modified: Tue, 24 Apr 2018 09:17:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae6ce4261056e061c2242dd5cdeff51f23a530e77cdebef112b2df429143322`  
		Last Modified: Tue, 24 Apr 2018 09:17:54 GMT  
		Size: 7.8 MB (7758702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c47b03d1a6e6dffb110db8483f3965e84d5dcc447153c6ffb5112a66646554`  
		Last Modified: Tue, 24 Apr 2018 09:17:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0393aad448fba7e79396426362ef954e7767e4d53993a3faa2ed31b6a1d850`  
		Last Modified: Tue, 24 Apr 2018 09:17:53 GMT  
		Size: 1.1 MB (1079608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3fd61ff30861306dfa046f823f8ef3edef9763496fe82e1a500194a775e212`  
		Last Modified: Tue, 24 Apr 2018 09:17:52 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
