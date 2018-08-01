## `wordpress:cli-1.5.1-php5.6`

```console
$ docker pull wordpress@sha256:f9b1bb937853f5789d7c8f4f63df67f619e937c3373e49f00cae01d3be58a1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-1.5.1-php5.6` - linux; amd64

```console
$ docker pull wordpress@sha256:29279d313d1b2540b04b5460a05b5daef6a20434286fd7a335eee690b89e25ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38253432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7d270dca65389434d0acdebae7704168ec4c67fec49f594b1ae38458aaa3be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:18:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 06 Jul 2018 16:18:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 06 Jul 2018 16:18:41 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 16:18:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 06 Jul 2018 16:18:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 06 Jul 2018 16:18:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:18:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:18:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 06 Jul 2018 17:41:58 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 10:41:39 GMT
ENV PHP_VERSION=5.6.37
# Sat, 21 Jul 2018 10:41:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.37.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.37.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 10:41:40 GMT
ENV PHP_SHA256=5000d82610f9134aaedef28854ec3591f68dedf26a17b8935727dac2843bd256 PHP_MD5=
# Sat, 21 Jul 2018 10:41:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 21 Jul 2018 10:41:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 10:44:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 10:45:02 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 21 Jul 2018 10:45:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 10:45:03 GMT
CMD ["php" "-a"]
# Sat, 21 Jul 2018 13:28:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 21 Jul 2018 13:28:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 13:28:03 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 21 Jul 2018 13:28:05 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 21 Jul 2018 13:28:05 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 13:28:06 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 13:28:06 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 21 Jul 2018 13:28:06 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Sat, 21 Jul 2018 13:28:07 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Tue, 31 Jul 2018 17:48:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 31 Jul 2018 17:48:33 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:48:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:48:34 GMT
USER [www-data]
# Tue, 31 Jul 2018 17:48:34 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527cc05836df8b883384a19f35597b62f1e1ef30211c870fb5527e3080a6f58`  
		Last Modified: Fri, 06 Jul 2018 18:03:03 GMT  
		Size: 1.3 MB (1256023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3299172a2d6d097e545dc05d7704c6a14168c66aa3e250a41ab825f94ab90b63`  
		Last Modified: Fri, 06 Jul 2018 18:03:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05782106624fe89fa24d92965e55266bc688607d27223c74ced4be2fcaedb024`  
		Last Modified: Fri, 06 Jul 2018 18:03:01 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a91d7751ba7c4221eb3f3808368b27bf8b1ab9d9c26e3906f066eed17a0b4f`  
		Last Modified: Sat, 21 Jul 2018 12:06:52 GMT  
		Size: 13.7 MB (13708184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e58e239bb37db461c0efa4d6c79542a10540a15656a70ad6d700e3d26a3d1`  
		Last Modified: Sat, 21 Jul 2018 12:06:50 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34c8a19910df552fc07a927bed8c100476a902ffb6a19ec8c4e7e866e2c62d4`  
		Last Modified: Sat, 21 Jul 2018 12:06:54 GMT  
		Size: 10.3 MB (10317872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a2030e947783d21ef8cb65a556014bd0a821a236a953e1f885a5a01368e287`  
		Last Modified: Sat, 21 Jul 2018 12:06:50 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9d3ef830a5c69cc13c78c7e999a4d949986fe713b981d6c1b3ff094a7c1239`  
		Last Modified: Sat, 21 Jul 2018 14:04:32 GMT  
		Size: 784.6 KB (784607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc645ed6ed8c5db20e77d0792938bd9d89e54e92e8d9fb9a85ca70c2a38f83`  
		Last Modified: Sat, 21 Jul 2018 14:04:32 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a639b13f43ecba4150e0fcca2e49f58990f24a36626ed1ba2081ace103ac8e51`  
		Last Modified: Sat, 21 Jul 2018 14:04:31 GMT  
		Size: 7.8 MB (7771990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e4c9645afa436e0f7619bea662f45f7b0a88b3be4cadeb287a651e5d6b89ce`  
		Last Modified: Sat, 21 Jul 2018 14:04:29 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348639af7fa29e0b8054f4f0bc5862db425386d3e787a5c0f97d17fe7bc24f6e`  
		Last Modified: Tue, 31 Jul 2018 18:19:39 GMT  
		Size: 2.3 MB (2306224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86b46adf1be07499697da57f2b1b71efea825b539b4d2cb0261ef5eb4a689da`  
		Last Modified: Tue, 31 Jul 2018 18:19:39 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-1.5.1-php5.6` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:0fa7033b2b113d4f1f41c4cbfcbb26124ac18d2a250dc2b19164305c9d05617d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36150203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da465feb8419446ecf0371634af63126f72ad1c25ee7d89affa85aa054d9935e`
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
# Fri, 25 May 2018 12:27:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 15:05:06 GMT
ENV PHP_VERSION=5.6.37
# Sat, 21 Jul 2018 15:05:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.37.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.37.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 15:05:08 GMT
ENV PHP_SHA256=5000d82610f9134aaedef28854ec3591f68dedf26a17b8935727dac2843bd256 PHP_MD5=
# Sat, 21 Jul 2018 15:05:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 21 Jul 2018 15:05:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 15:12:25 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 15:12:26 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 21 Jul 2018 15:12:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 15:12:28 GMT
CMD ["php" "-a"]
# Sat, 21 Jul 2018 18:59:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 21 Jul 2018 18:59:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 18:59:49 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 21 Jul 2018 18:59:51 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 21 Jul 2018 18:59:51 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 18:59:52 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 18:59:53 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 21 Jul 2018 18:59:54 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Sat, 21 Jul 2018 18:59:54 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Wed, 01 Aug 2018 10:52:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Wed, 01 Aug 2018 10:52:40 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Wed, 01 Aug 2018 10:52:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 10:52:42 GMT
USER [www-data]
# Wed, 01 Aug 2018 10:52:43 GMT
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
	-	`sha256:111a4687aaa6c125bac425848fffe1f382fb822ef7d33101993e6f3050b0933f`  
		Last Modified: Sat, 21 Jul 2018 16:37:10 GMT  
		Size: 12.5 MB (12486686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7066e3da86fb2543ac9f1dd4d46ced3eb8be481a76f46b58c222857d8fc2c94`  
		Last Modified: Sat, 21 Jul 2018 16:37:08 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdc78886404b1ba01a68295ef64cd1bb2681de181f02605ca092c488c50cfe0`  
		Last Modified: Sat, 21 Jul 2018 16:37:12 GMT  
		Size: 11.0 MB (11040311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58848b74da2453657738e08262108d710bd06cf84ea7dcff88f6454ea081fce8`  
		Last Modified: Sat, 21 Jul 2018 16:37:08 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a16071f53749652736b255ee24854b67030875211fe17c1d26a1209c01cf6a`  
		Last Modified: Sat, 21 Jul 2018 19:46:22 GMT  
		Size: 720.4 KB (720441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6e128fd39803e7f7fff1bcbb281185f8df41425a053d5022ccaec18c0a5a65`  
		Last Modified: Sat, 21 Jul 2018 19:46:20 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eaa0e08e3954e15718143c4ffcb7f1685fbbdc6cbfbd2a302bd27013b1789a6`  
		Last Modified: Sat, 21 Jul 2018 19:46:23 GMT  
		Size: 7.6 MB (7611939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a91bba9541c9e33775cc02f0d0a0235f67c5282ab973d06bdacd75bc50897a`  
		Last Modified: Sat, 21 Jul 2018 19:46:20 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e196577dc70a30001b8d1f3da772247df0de85b738e3acc34d73eaf99dee37c`  
		Last Modified: Wed, 01 Aug 2018 11:27:44 GMT  
		Size: 1.1 MB (1082757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af3cdb53051951584d683550c6c8cb7ec561af29712b842fc4fcc9ced2e12a`  
		Last Modified: Wed, 01 Aug 2018 11:27:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-1.5.1-php5.6` - linux; 386

```console
$ docker pull wordpress@sha256:6089b72965798be8936fd37a0cf01ac5c441fd5ccf651d13bf9bf0ffd290a896
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38194606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19bd7c43f85e8ede340f1fcfbb3367238b740854743dd7a2535b0c9e50040087`
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
# Fri, 01 Jun 2018 11:32:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 14:57:57 GMT
ENV PHP_VERSION=5.6.37
# Sat, 21 Jul 2018 14:57:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.37.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.37.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 14:57:57 GMT
ENV PHP_SHA256=5000d82610f9134aaedef28854ec3591f68dedf26a17b8935727dac2843bd256 PHP_MD5=
# Sat, 21 Jul 2018 14:58:06 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 21 Jul 2018 14:58:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 15:01:30 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 15:01:33 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 21 Jul 2018 15:01:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 15:01:33 GMT
CMD ["php" "-a"]
# Sat, 21 Jul 2018 18:00:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 21 Jul 2018 18:00:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 18:00:43 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 21 Jul 2018 18:00:44 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 21 Jul 2018 18:00:45 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 18:00:45 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 18:00:45 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 21 Jul 2018 18:00:45 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Sat, 21 Jul 2018 18:00:46 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Wed, 01 Aug 2018 12:01:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Wed, 01 Aug 2018 12:01:50 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Wed, 01 Aug 2018 12:01:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:01:50 GMT
USER [www-data]
# Wed, 01 Aug 2018 12:01:51 GMT
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
	-	`sha256:e2d63e79984616ddc756cc9ad863fafb0b7bf791a0a2d2e3897adbccdf3cb69d`  
		Last Modified: Sat, 21 Jul 2018 16:20:58 GMT  
		Size: 12.5 MB (12486736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a2ad676e559c53858565f468d9975549fce0b35df0f0ca69e0b2be318ec10`  
		Last Modified: Sat, 21 Jul 2018 16:20:55 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e6c8b51b5074b910530b67ef15539d8887b2eff9a70a1d375ce0a1396e75c`  
		Last Modified: Sat, 21 Jul 2018 16:21:02 GMT  
		Size: 12.4 MB (12353087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ad0cd69991872ab4ca32f91ffb5a69b2364548cfe923e648ecedff36fce094`  
		Last Modified: Sat, 21 Jul 2018 16:20:55 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6a50de1b0c3427e4f90e57ee2167462b9713dfbf24abdb78ac1a68f63c83c1`  
		Last Modified: Sat, 21 Jul 2018 18:36:19 GMT  
		Size: 841.4 KB (841438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772e23cb3788b74a7b993a8f0724480e43c78f4e28b6940be927879489cbac67`  
		Last Modified: Sat, 21 Jul 2018 18:36:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5dfdee2ebde3c3dee52515fa8783af195d47d9e84192584733d2284d92391`  
		Last Modified: Sat, 21 Jul 2018 18:36:20 GMT  
		Size: 7.9 MB (7930290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc100a65c251157638ab2bd938d63d4fc420b8ead52d0bd6967cba5c26fb7f0`  
		Last Modified: Sat, 21 Jul 2018 18:36:16 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ab1f4da05edc31904b7a528dae2366caada30307fce79f9efea315d0ca4741`  
		Last Modified: Wed, 01 Aug 2018 12:28:47 GMT  
		Size: 1.1 MB (1082975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0476bec7c226243e7437bda48ecb2ab827b441357555d41728e98c3600050c3`  
		Last Modified: Wed, 01 Aug 2018 12:28:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-1.5.1-php5.6` - linux; ppc64le

```console
$ docker pull wordpress@sha256:7ce0cf088690cd1834d6039c9833b60a76f252452de3ecd94093fd96392b47ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36907628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af27a1ddb99a5c522d4f58715150c10796cbd921e98253bbbf73a2574d27d148`
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
# Thu, 24 May 2018 10:01:50 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 11:22:31 GMT
ENV PHP_VERSION=5.6.37
# Sat, 21 Jul 2018 11:22:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.37.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.37.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 11:22:40 GMT
ENV PHP_SHA256=5000d82610f9134aaedef28854ec3591f68dedf26a17b8935727dac2843bd256 PHP_MD5=
# Sat, 21 Jul 2018 11:22:54 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 21 Jul 2018 11:22:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 11:26:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 11:26:06 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 21 Jul 2018 11:26:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 11:26:09 GMT
CMD ["php" "-a"]
# Sat, 21 Jul 2018 15:23:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 21 Jul 2018 15:23:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 15:23:42 GMT
RUN apk add --no-cache 		less 		mysql-client
# Sat, 21 Jul 2018 15:23:43 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 21 Jul 2018 15:23:44 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 15:23:45 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 15:23:45 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 21 Jul 2018 15:23:53 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Sat, 21 Jul 2018 15:23:54 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Sat, 21 Jul 2018 15:24:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 21 Jul 2018 15:24:05 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 21 Jul 2018 15:24:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 15:24:14 GMT
USER [www-data]
# Sat, 21 Jul 2018 15:24:15 GMT
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
	-	`sha256:01493ced15ebd3438230458635f7d89aed03b6b49d726ba04c09f9aec4d1e9a3`  
		Last Modified: Sat, 21 Jul 2018 12:11:53 GMT  
		Size: 12.5 MB (12486735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dda78253f520f89758c204eab776d4176839644b9d901634c1a7b86e9cdc6ed`  
		Last Modified: Sat, 21 Jul 2018 12:11:52 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1503d71a6e3228d7dfe66bab243aacaf3edfcd3e7be495959dc845a8949301`  
		Last Modified: Sat, 21 Jul 2018 12:12:00 GMT  
		Size: 11.5 MB (11549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0b822103385efee85b081d56383db18e6fd239f29abe7f2bf6f79ac9d73348`  
		Last Modified: Sat, 21 Jul 2018 12:11:52 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365062dccf5f5c6d9803a59ddb136cefdcfbd14bdbe75e5ba677669c1a7b575e`  
		Last Modified: Sat, 21 Jul 2018 15:47:18 GMT  
		Size: 790.8 KB (790766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb628266a335fcdf5fb6ced374ebd6a7084c08f92aa6aa35d4dd464a98f4c85d`  
		Last Modified: Sat, 21 Jul 2018 15:47:15 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6ce9be71b410985a6f36e8afec951653e5a8b62392e3a42ec7bb335e73f725`  
		Last Modified: Sat, 21 Jul 2018 15:47:17 GMT  
		Size: 7.7 MB (7654438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b8ee26108ea830cb6d48f9c25609bc291cfc15a537ee12fd844c209f9274e1`  
		Last Modified: Sat, 21 Jul 2018 15:47:15 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b662af811b49a335a2c4019d4d0acb3ab21fc2f92ed12a73d07d1f53474017`  
		Last Modified: Sat, 21 Jul 2018 15:47:15 GMT  
		Size: 1.1 MB (1083450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d735395885b90d88dff4d79e6dbe0be1ea3da1da51b22ffc8b62ef829ca84656`  
		Last Modified: Sat, 21 Jul 2018 15:47:15 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
