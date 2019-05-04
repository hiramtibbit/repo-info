## `wordpress:cli-2.2-php7.3`

```console
$ docker pull wordpress@sha256:94b004c4297517e6ebb4e06aa9c9f012e8ef4fb0f650a6d26855db01cc0ae962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-2.2-php7.3` - linux; amd64

```console
$ docker pull wordpress@sha256:12a68e98e15668ed902804287e0d200c46466dcbd5e839384b99e2e724725aff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44942922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30fb1bf205e9233cea9d70dd59d549bacfd7768b36aa8aac9e699d99ad7f4428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:00:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 00:00:05 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 00:00:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 00:00:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 00:00:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 00:00:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 00:00:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 00:00:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 00:00:08 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 00:00:08 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 00:00:08 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 00:00:08 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 00:00:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 00:00:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 00:07:02 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 00:07:03 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 00:07:04 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 00:07:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 00:07:05 GMT
CMD ["php" "-a"]
# Wed, 10 Apr 2019 02:56:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 10 Apr 2019 02:56:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 10 Apr 2019 02:56:18 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Wed, 10 Apr 2019 02:56:19 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Wed, 10 Apr 2019 02:56:19 GMT
WORKDIR /var/www/html
# Wed, 10 Apr 2019 02:56:19 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 02:56:19 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 25 Apr 2019 23:28:47 GMT
ENV WORDPRESS_CLI_VERSION=2.2.0
# Thu, 25 Apr 2019 23:28:47 GMT
ENV WORDPRESS_CLI_SHA512=2103f04a5014d629eaa42755815c9cec6bb489ed7b0ea6e77dedb309e8af098ab902b2f9c6369ae4b7cb8cc1f20fbb4dedcda83eb1d0c34b880fa6e8a3ae249d
# Thu, 25 Apr 2019 23:28:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 25 Apr 2019 23:28:49 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Thu, 25 Apr 2019 23:28:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:28:50 GMT
USER www-data
# Thu, 25 Apr 2019 23:28:50 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6e561c50e026054b7413aa88834a7ed97292eb60663ab45930f71ce6d05873`  
		Last Modified: Wed, 10 Apr 2019 01:17:36 GMT  
		Size: 1.4 MB (1437164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f581654c6ada4fba71ebfbfe4cd96430abe7b5dabebd92a6a62c11391a79cc98`  
		Last Modified: Wed, 10 Apr 2019 01:17:35 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f205a73992503ad7da02dbaf0a635da1604dec99f89f056c8db161ff3da6f514`  
		Last Modified: Wed, 10 Apr 2019 01:17:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ad34df7c2d8efa201abf3f95fe0dac034084cedd4e67b48ee3841ad508cf2d`  
		Last Modified: Wed, 10 Apr 2019 01:17:36 GMT  
		Size: 12.0 MB (11996606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8142e0973977b5fd3bd96d2e51a132a62d86f7a599fd8fb7f55c3eacd007ed`  
		Last Modified: Wed, 10 Apr 2019 01:17:35 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d06269c6333e5a5d576ca25fa8d48b837b0afbdfd1f060fd94236ec2025c25c`  
		Last Modified: Wed, 10 Apr 2019 01:17:40 GMT  
		Size: 16.1 MB (16076261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb60d04da7478c4ffcac8138466a9d82a0489e7d629d30507dd6ba628276bddf`  
		Last Modified: Wed, 10 Apr 2019 01:17:34 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3dcfb1ff395f9fbc16d283275508adc9890a954fc62c2f52339dc59bf4aba`  
		Last Modified: Wed, 10 Apr 2019 01:17:34 GMT  
		Size: 72.0 KB (71957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa4d89380d74a41830e6cc8642ed8342270849930c308c2fa3a803ea2bfa4eb`  
		Last Modified: Wed, 10 Apr 2019 02:57:53 GMT  
		Size: 2.3 MB (2281657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40acf552da0bdaad73c597897c973d1328f5af4153106ace04694b02f54462b`  
		Last Modified: Wed, 10 Apr 2019 02:57:52 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503afd7db8213d10be3f4a761a0b803515d571e9480e8913ddccfc5df54e3f42`  
		Last Modified: Wed, 10 Apr 2019 02:57:54 GMT  
		Size: 9.1 MB (9080256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f23b1a1185091330e6e2a43773858bbde3638d1343aa7f6b7ac3caaafe71ff`  
		Last Modified: Wed, 10 Apr 2019 02:57:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52315a04cd546cb03305c230a26f02be6d31a712b41b30d11ef89888125d2c`  
		Last Modified: Thu, 25 Apr 2019 23:29:39 GMT  
		Size: 1.2 MB (1236974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f925dfe248008dce4acfff0e4d4a0442935c6e4ba727187241c4bb9ace118a1`  
		Last Modified: Thu, 25 Apr 2019 23:29:39 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.2-php7.3` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:281109c6ded420f2e5ae395febcd6cd28445f3c2f4703e8cec891c85e5f4bc57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42979356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298c18b391159a42717b13876f4efe554eb80fc05ac081617d01441a034112cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:47:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 08:47:20 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 08:47:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 08:47:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 08:47:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 08:47:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 08:47:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 08:47:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 08:47:24 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 04 May 2019 01:10:20 GMT
ENV PHP_VERSION=7.3.5
# Sat, 04 May 2019 01:10:20 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.5.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.5.tar.xz.asc/from/this/mirror
# Sat, 04 May 2019 01:10:21 GMT
ENV PHP_SHA256=e1011838a46fd4a195c8453b333916622d7ff5bce4aca2d9d99afac142db2472 PHP_MD5=
# Sat, 04 May 2019 01:10:28 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 04 May 2019 01:10:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 04 May 2019 01:14:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 May 2019 01:14:56 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 04 May 2019 01:14:58 GMT
RUN docker-php-ext-enable sodium
# Sat, 04 May 2019 01:14:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 May 2019 01:14:59 GMT
CMD ["php" "-a"]
# Sat, 04 May 2019 03:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 May 2019 03:24:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 04 May 2019 03:24:15 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 04 May 2019 03:24:16 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 04 May 2019 03:24:16 GMT
WORKDIR /var/www/html
# Sat, 04 May 2019 03:24:17 GMT
VOLUME [/var/www/html]
# Sat, 04 May 2019 03:24:17 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 04 May 2019 03:24:18 GMT
ENV WORDPRESS_CLI_VERSION=2.2.0
# Sat, 04 May 2019 03:24:18 GMT
ENV WORDPRESS_CLI_SHA512=2103f04a5014d629eaa42755815c9cec6bb489ed7b0ea6e77dedb309e8af098ab902b2f9c6369ae4b7cb8cc1f20fbb4dedcda83eb1d0c34b880fa6e8a3ae249d
# Sat, 04 May 2019 03:24:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 04 May 2019 03:24:22 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Sat, 04 May 2019 03:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 May 2019 03:24:23 GMT
USER www-data
# Sat, 04 May 2019 03:24:24 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced3a278b93563da486745edb7c10cb2410a4ec84163ba38336d42d25a745b4c`  
		Last Modified: Wed, 10 Apr 2019 09:23:11 GMT  
		Size: 1.4 MB (1382897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3adad16834c492476bdc5cbb5edb76b259959079fb55b5b14e0fa0a349f54`  
		Last Modified: Wed, 10 Apr 2019 09:23:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f253a87727f214296da38d6a2752cdc4c00e2fb333fbdc0c05e3151ef6d7f0`  
		Last Modified: Wed, 10 Apr 2019 09:23:10 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20bd32dd19e621f13137dd172575c4c4f8bcbf55fca968faec5be70ec235786`  
		Last Modified: Sat, 04 May 2019 02:28:51 GMT  
		Size: 12.0 MB (12000776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458eee35d68f3a20bf1bfd63f351ed9f379c3545b3834ec32a77f8b85870d955`  
		Last Modified: Sat, 04 May 2019 02:28:49 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd88c33e2b15b2ef2470cd5f2fc063078f77957e0b51e4624362a4326e25d99c`  
		Last Modified: Sat, 04 May 2019 02:28:56 GMT  
		Size: 14.9 MB (14863445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f8672d1c1ef223f2a1a1ac5d1c7824a28c900eed2a05c73f7ab0f3b95843e6`  
		Last Modified: Sat, 04 May 2019 02:28:49 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b611f81add9e17147229101eeca76d0b32fb556abe1b586bdd40d3dbd6075c99`  
		Last Modified: Sat, 04 May 2019 02:28:50 GMT  
		Size: 71.5 KB (71488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118a32664eb37d166e72db0e287c965bd2fd2eef5c2c76c7da2808a8688603f`  
		Last Modified: Sat, 04 May 2019 03:26:20 GMT  
		Size: 2.2 MB (2160553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1f680cb2dc75692ce2f2171b4750d23313634dcd5305bea0ce74616ed3a061`  
		Last Modified: Sat, 04 May 2019 03:26:20 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e732004d8828b6c29633c6bcdbf157abc2061e11421a90fa3ab105fe0ab6cab`  
		Last Modified: Sat, 04 May 2019 03:26:23 GMT  
		Size: 8.7 MB (8715037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb28f464aa8f3ee6e95959c918adb238bf7689c563fe41244b455443e23a0ad`  
		Last Modified: Wed, 10 Apr 2019 10:27:14 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf716d2b52f61beb75bf1d1c42f7277c256fe5527ceb86e1ac5e464173141c`  
		Last Modified: Sat, 04 May 2019 03:26:20 GMT  
		Size: 1.2 MB (1236599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76841c63bf949a3caf0deac414c78fb9566bf7b0f4351cc2dfb9668098a23aa`  
		Last Modified: Sat, 04 May 2019 03:26:19 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.2-php7.3` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:356ba019de25ab982bd620ca7574f3ed83a0f7d044321a315d40a697b4142803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41349626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a8dc64af4fd6f0861677233c9e1f817a2a6181e7c5fb26e2121f3c038ca107`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:34:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 12:34:04 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 12:34:05 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 12:34:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 12:34:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 12:34:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 12:34:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 12:34:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 12:34:09 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 04 May 2019 01:35:23 GMT
ENV PHP_VERSION=7.3.5
# Sat, 04 May 2019 01:35:24 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.5.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.5.tar.xz.asc/from/this/mirror
# Sat, 04 May 2019 01:35:24 GMT
ENV PHP_SHA256=e1011838a46fd4a195c8453b333916622d7ff5bce4aca2d9d99afac142db2472 PHP_MD5=
# Sat, 04 May 2019 01:35:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 04 May 2019 01:35:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 04 May 2019 01:39:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 May 2019 01:39:29 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 04 May 2019 01:39:31 GMT
RUN docker-php-ext-enable sodium
# Sat, 04 May 2019 01:39:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 May 2019 01:39:32 GMT
CMD ["php" "-a"]
# Sat, 04 May 2019 04:37:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 May 2019 04:37:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 04 May 2019 04:37:27 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 04 May 2019 04:37:28 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 04 May 2019 04:37:28 GMT
WORKDIR /var/www/html
# Sat, 04 May 2019 04:37:29 GMT
VOLUME [/var/www/html]
# Sat, 04 May 2019 04:37:29 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 04 May 2019 04:37:29 GMT
ENV WORDPRESS_CLI_VERSION=2.2.0
# Sat, 04 May 2019 04:37:30 GMT
ENV WORDPRESS_CLI_SHA512=2103f04a5014d629eaa42755815c9cec6bb489ed7b0ea6e77dedb309e8af098ab902b2f9c6369ae4b7cb8cc1f20fbb4dedcda83eb1d0c34b880fa6e8a3ae249d
# Sat, 04 May 2019 04:37:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 04 May 2019 04:37:33 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Sat, 04 May 2019 04:37:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 May 2019 04:37:34 GMT
USER www-data
# Sat, 04 May 2019 04:37:35 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290fbbeb521916af184ad411258d4647357db9b1888c2c813b6166d4434e397c`  
		Last Modified: Wed, 10 Apr 2019 13:09:50 GMT  
		Size: 1.3 MB (1285862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48c5a841b0e749e4463fad378132a3806b9ffafec4a7e833f7a1f7fe8cdd369`  
		Last Modified: Wed, 10 Apr 2019 13:09:49 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec286cecc784f0d32189c5a3500f91cb766332725cfda487be3cea6db0e97b4d`  
		Last Modified: Wed, 10 Apr 2019 13:09:49 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ffe729e82d7f230223c65cbb5eae7203130dd5f756e71340227adec70a92e`  
		Last Modified: Sat, 04 May 2019 03:11:17 GMT  
		Size: 12.0 MB (12000751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a42dcc08059bf5ceff736ad059820a71e56dcdb62f7f7f3f204687c80842a2`  
		Last Modified: Sat, 04 May 2019 03:11:16 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100c78ca01f333c66de78da8e2dbc845b25552d72fb04a60468a3c3ab74038e5`  
		Last Modified: Sat, 04 May 2019 03:11:23 GMT  
		Size: 13.9 MB (13856853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdc8baffe66e22cd23fc97caadb5c8e6d2aa9f7f85ff9a894c2310c0c0933a3`  
		Last Modified: Sat, 04 May 2019 03:11:16 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbad0208af8d9effbab5949a7e7d5b754ffa8c2cebd580102676f023db28ac86`  
		Last Modified: Sat, 04 May 2019 03:11:16 GMT  
		Size: 71.5 KB (71475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1342dc90152acac96e8b4bc86344338612f10d2867014a6c9487fe1fb6d277`  
		Last Modified: Sat, 04 May 2019 04:42:24 GMT  
		Size: 2.1 MB (2093109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156795274604831b9714f80c4743c47b6997ef50d6237b3497b4c27ac4709de4`  
		Last Modified: Sat, 04 May 2019 04:42:23 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f65105c8bda01019fd0a2ce33d10b5b4a2c09656a1f2ccaf55b00cc4484fc3`  
		Last Modified: Sat, 04 May 2019 04:42:26 GMT  
		Size: 8.4 MB (8449152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1162e301921b3996af0b723e71337c6da4f00075ba86ad6ebf153d789849889`  
		Last Modified: Fri, 12 Apr 2019 04:36:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23cb977dc3f9992dd51df08f498fe70d4f570dbd85acf6ecf95a60b2cc6a5921`  
		Last Modified: Sat, 04 May 2019 04:42:23 GMT  
		Size: 1.2 MB (1236547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc014a46f26a6aaea2747866a2203a00c4a2c70fb281b33985082b4ff03deb4`  
		Last Modified: Sat, 04 May 2019 04:42:23 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.2-php7.3` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:bd735dd36f710d9827d80d3b75b5d9da6651efac3c362931cf3231c8f98eb0e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44667570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c9f0ba197100a944197847d6566fcfa25305863a31518bf42eb02f9b19f06b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:16:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 10:16:53 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 10:16:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 10:16:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 10:16:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 10:16:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 10:17:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 10:17:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 10:17:02 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 10:17:03 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 10:17:04 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 10:17:05 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 10:17:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 10:17:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 10:29:49 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:52 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 10:29:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 10:29:53 GMT
CMD ["php" "-a"]
# Wed, 10 Apr 2019 15:41:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 10 Apr 2019 15:41:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 10 Apr 2019 15:41:53 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Wed, 10 Apr 2019 15:41:55 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Wed, 10 Apr 2019 15:41:55 GMT
WORKDIR /var/www/html
# Wed, 10 Apr 2019 15:41:56 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 15:41:57 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 26 Apr 2019 09:02:17 GMT
ENV WORDPRESS_CLI_VERSION=2.2.0
# Fri, 26 Apr 2019 09:02:20 GMT
ENV WORDPRESS_CLI_SHA512=2103f04a5014d629eaa42755815c9cec6bb489ed7b0ea6e77dedb309e8af098ab902b2f9c6369ae4b7cb8cc1f20fbb4dedcda83eb1d0c34b880fa6e8a3ae249d
# Fri, 26 Apr 2019 09:02:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 26 Apr 2019 09:02:33 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Fri, 26 Apr 2019 09:02:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 09:02:35 GMT
USER www-data
# Fri, 26 Apr 2019 09:02:37 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4d4c058c9484c09aacc75aaa536438be79ddf1dc96911b12d5f8e2431702fb`  
		Last Modified: Wed, 10 Apr 2019 12:21:57 GMT  
		Size: 1.4 MB (1444145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce60bb4176934f2b0ff58c1f7a464f8ba6123b120897beaed2a2a3098e264fe`  
		Last Modified: Wed, 10 Apr 2019 12:21:57 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad719ebf6954aaef148a134fc6e945814a86bc1e16f21ef9963221a226707bd`  
		Last Modified: Wed, 10 Apr 2019 12:21:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ad07ccbb4293773c5143bebbc7da51fa55ca45bb70583be95d71bced5abf32`  
		Last Modified: Wed, 10 Apr 2019 12:21:57 GMT  
		Size: 12.0 MB (11996623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c013624e88548043c4ead7e8dc82d824b87f012c91c8cede940022f4ddbb5f0d`  
		Last Modified: Wed, 10 Apr 2019 12:21:55 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff4fd962fcedbfd7941038f3f47a816728fd68d0f0dbc00bc53b7b5bc9db64e`  
		Last Modified: Wed, 10 Apr 2019 12:22:02 GMT  
		Size: 15.8 MB (15843684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f19fb1cff763dd3a61a7fb30802415bbbcf1d54a073fbe6ae0f4e5114f8b81`  
		Last Modified: Wed, 10 Apr 2019 12:21:55 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc11cdd1a6ad42c78c842ee8b62cc5155b3eeb24272119185c68991358517d0`  
		Last Modified: Wed, 10 Apr 2019 12:21:55 GMT  
		Size: 71.0 KB (70979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f3a1511c7f9e3a6aacfed0a176791a65b28475b794575735ac90d99d92e1e3`  
		Last Modified: Wed, 10 Apr 2019 15:45:47 GMT  
		Size: 2.2 MB (2235189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c18c64aa804e0e43f60a2050afd36cf12a60de1f3d6fe9373ea9830e41e7d94`  
		Last Modified: Wed, 10 Apr 2019 15:45:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95d9eab1aad05a81e97301e15f8f25f780ab4c5475f81fcb23ff392b86b04ba`  
		Last Modified: Wed, 10 Apr 2019 15:45:49 GMT  
		Size: 9.1 MB (9147070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497a88ca2209b967f09b47c57f285638cd4167a0909479aa6523553adfa07a30`  
		Last Modified: Wed, 10 Apr 2019 15:44:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cceb9e59826cde654280a898138071f6093addcdd3752c3209234450692d8e`  
		Last Modified: Fri, 26 Apr 2019 09:04:50 GMT  
		Size: 1.2 MB (1236052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31767de1cea209724853f29bb8772947249994e3a758dc527710ba52fcb3e079`  
		Last Modified: Fri, 26 Apr 2019 09:04:49 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.2-php7.3` - linux; 386

```console
$ docker pull wordpress@sha256:c9c6fd4a409b02a4cb8ea656318fccf62b0df90c5914995ef30d115dab353c86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45669512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c407fc99d59f0d76739153868b4ad37b53fb95cd73d1b9907001478222e5acd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:26:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 13:26:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 13:26:44 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 13:26:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 13:26:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 13:26:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 13:26:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 13:26:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 13:26:46 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 13:26:46 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 13:26:46 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 13:26:47 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 13:26:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 13:26:50 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:33:02 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 13:33:02 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:33:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 13:33:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 13:33:04 GMT
CMD ["php" "-a"]
# Wed, 10 Apr 2019 15:35:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 10 Apr 2019 15:35:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 10 Apr 2019 15:35:12 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Wed, 10 Apr 2019 15:35:13 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Wed, 10 Apr 2019 15:35:13 GMT
WORKDIR /var/www/html
# Wed, 10 Apr 2019 15:35:14 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 15:35:14 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 26 Apr 2019 10:43:54 GMT
ENV WORDPRESS_CLI_VERSION=2.2.0
# Fri, 26 Apr 2019 10:43:54 GMT
ENV WORDPRESS_CLI_SHA512=2103f04a5014d629eaa42755815c9cec6bb489ed7b0ea6e77dedb309e8af098ab902b2f9c6369ae4b7cb8cc1f20fbb4dedcda83eb1d0c34b880fa6e8a3ae249d
# Fri, 26 Apr 2019 10:43:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 26 Apr 2019 10:43:57 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Fri, 26 Apr 2019 10:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 10:43:57 GMT
USER www-data
# Fri, 26 Apr 2019 10:43:57 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41db8e405680ca3dffe0c52a20bbbdec6175a393e1cabe2983144683429a58e`  
		Last Modified: Wed, 10 Apr 2019 14:25:49 GMT  
		Size: 1.5 MB (1535398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1e9e870287e47a824e2b26ad2f46ad64aeee38c40342457131450453daa95b`  
		Last Modified: Wed, 10 Apr 2019 14:25:49 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d5742a8d83243f5336ce5e656cd7c080f9f1152f7f88a138b899b606e4976`  
		Last Modified: Wed, 10 Apr 2019 14:25:49 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5b35e0e92e9fcd433c423e7d954b07e456da2a8c02da6eb0980b202c2591e1`  
		Last Modified: Wed, 10 Apr 2019 14:25:49 GMT  
		Size: 12.0 MB (11996611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d85c9a5c07e2fcf8f81a889ef81b91400d3cec0c86f742dbb16e2372613e5`  
		Last Modified: Wed, 10 Apr 2019 14:25:48 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b163d0f94fb2b401677e04c67254bbd5c91bceffc3cf83387ba58957b76c4b`  
		Last Modified: Wed, 10 Apr 2019 14:25:52 GMT  
		Size: 16.5 MB (16508507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ec1a46a175b8dc1afa7d5b37c497e0d250847c7a9f4d567763f3482552bc81`  
		Last Modified: Wed, 10 Apr 2019 14:25:48 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4986866f85cffc34b28c703a85f6ac57ce2530ac97b75c457f941086f9668`  
		Last Modified: Wed, 10 Apr 2019 14:25:47 GMT  
		Size: 71.1 KB (71088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcd35d75fe4b1cc4b2ccd98e05af18a8df74fd755f30dc625325f534f80717`  
		Last Modified: Wed, 10 Apr 2019 15:36:49 GMT  
		Size: 2.3 MB (2321380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf864289b9a1e235d426226ec9b9af95ad378ef598fda494c9c874825dc5ad9`  
		Last Modified: Wed, 10 Apr 2019 15:36:48 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026e3f473642c68a555f33a116a0252d3a4cd76348ad3821e38f7db7120d9bf9`  
		Last Modified: Wed, 10 Apr 2019 15:36:51 GMT  
		Size: 9.2 MB (9243156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a17e031596799f8309f59b1d4fd77d2bbf436b0c8c3e184341fc9f33d996f6`  
		Last Modified: Wed, 10 Apr 2019 15:36:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d6b8fb02373488d225bda2ed0e8001d9411c9e0d83d5387065b28909b5485b`  
		Last Modified: Fri, 26 Apr 2019 10:45:05 GMT  
		Size: 1.2 MB (1236172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deca0207a11cbcc66611aa14ac2819e4dec0113f734b623ef43f84bb9c6bac13`  
		Last Modified: Fri, 26 Apr 2019 10:45:04 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-2.2-php7.3` - linux; ppc64le

```console
$ docker pull wordpress@sha256:629ace0c9269c7226a6470af896ef77e454da96c6eb9e7e1c60c72595a9a4cd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46633836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a5be68297b87e61420d8fd88ac25aafc2704aea6e8e065ba87663babc0e2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:08:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 11:08:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 11:08:37 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 11:08:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 11:08:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 11:08:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 11:08:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 11:09:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 11:09:04 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 10 Apr 2019 11:09:07 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 11:09:10 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 11:09:13 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 11:09:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 11:09:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 11:14:15 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 11:14:21 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 11:14:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 11:14:36 GMT
CMD ["php" "-a"]
# Wed, 10 Apr 2019 13:20:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 10 Apr 2019 13:20:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 10 Apr 2019 13:20:17 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Wed, 10 Apr 2019 13:20:24 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Wed, 10 Apr 2019 13:20:27 GMT
WORKDIR /var/www/html
# Wed, 10 Apr 2019 13:20:29 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 13:20:31 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 26 Apr 2019 08:28:20 GMT
ENV WORDPRESS_CLI_VERSION=2.2.0
# Fri, 26 Apr 2019 08:28:22 GMT
ENV WORDPRESS_CLI_SHA512=2103f04a5014d629eaa42755815c9cec6bb489ed7b0ea6e77dedb309e8af098ab902b2f9c6369ae4b7cb8cc1f20fbb4dedcda83eb1d0c34b880fa6e8a3ae249d
# Fri, 26 Apr 2019 08:28:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 26 Apr 2019 08:28:38 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Fri, 26 Apr 2019 08:28:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 08:28:43 GMT
USER www-data
# Fri, 26 Apr 2019 08:28:46 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27aba49f624392c74b92208a142e5b8394873221e656f091124cd19d954e9cc`  
		Last Modified: Wed, 10 Apr 2019 12:01:42 GMT  
		Size: 1.5 MB (1485215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779f53629e964458fcd4e8c7ff34a6d1336293b1d512a1d04b1bfe2a994333be`  
		Last Modified: Wed, 10 Apr 2019 12:01:41 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e21fde3ed1193487bcdd4168ca2a75d7d8d6ad56516877c0967488813e43d7`  
		Last Modified: Wed, 10 Apr 2019 12:01:41 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2169dc585381979506915ed9899684307eff1fa16d035e699d087985f0dc68`  
		Last Modified: Wed, 10 Apr 2019 12:01:41 GMT  
		Size: 12.0 MB (11996633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5356787e1bdc7c7c04906659c3d494c93897ce657278c5e6be19165734bf9df`  
		Last Modified: Wed, 10 Apr 2019 12:01:37 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fce6a593dd540f6c1c67823930fe3f1780cea3dcef9a70f1a9f7d6117e394e9`  
		Last Modified: Wed, 10 Apr 2019 12:01:48 GMT  
		Size: 17.4 MB (17440717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be88eb28938c4a303092614105940b4212b228b5fdfd6f6115f40cb7a55b86d9`  
		Last Modified: Wed, 10 Apr 2019 12:01:37 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee2eb83dd915653df4b68b226f11e2ea6a0a1a842a3e0868e7b96f1077f6a9e`  
		Last Modified: Wed, 10 Apr 2019 12:01:37 GMT  
		Size: 71.8 KB (71780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2937ec819f12da9290edf1191d5d0c7e2fae47f0a1d54caabf52745f466b775e`  
		Last Modified: Wed, 10 Apr 2019 13:25:21 GMT  
		Size: 2.4 MB (2355193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070fb715d1d17be60a4071156892fc7304b8f3753d571b4ebf915c8f93532d7f`  
		Last Modified: Wed, 10 Apr 2019 13:25:20 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e726418ac4b30c9b9d55401b942983e87f69bbfc9faaac272605e466bc80660f`  
		Last Modified: Wed, 10 Apr 2019 13:25:22 GMT  
		Size: 9.3 MB (9261307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b38c56a30fe710da55502e9a012bc92e09f8f2dc94b2a08605b7313ba8f579`  
		Last Modified: Wed, 10 Apr 2019 13:24:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75da86c380e39322dc7723bc759ca2de003cbe44e0c9bcec0cbe2c417c46adc7`  
		Last Modified: Fri, 26 Apr 2019 08:32:15 GMT  
		Size: 1.2 MB (1236852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd20e3906d93508a7cccef564681c55f61dbf11a61931915fff9dc6b38b3d65`  
		Last Modified: Fri, 26 Apr 2019 08:32:15 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
