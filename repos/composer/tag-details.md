<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `composer`

-	[`composer:1`](#composer1)
-	[`composer:1.7`](#composer17)
-	[`composer:1.7.3`](#composer173)
-	[`composer:1.8`](#composer18)
-	[`composer:1.8.4`](#composer184)
-	[`composer:latest`](#composerlatest)

## `composer:1`

```console
$ docker pull composer@sha256:f749604717d3b95fda063a0774980571f3626f362871357ddf2e802c4aaee86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `composer:1` - linux; amd64

```console
$ docker pull composer@sha256:28dd22347f90cd5e729b0f29c08fe5a96ee998208db5e30f505cf1a6c0f3bfa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61231774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e976bea85041d8846a907f9a6a644af13e5e863bc4a95506de1f980c9ef4d8`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Feb 2019 21:20:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Feb 2019 21:20:10 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:20:14 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:20:18 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:20:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 02:25:38 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 02:25:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 02:25:39 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 03:56:46 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 03:56:47 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 03:56:59 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 03:57:00 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 03:57:01 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 03:57:01 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 03:57:02 GMT
WORKDIR /app
# Sat, 09 Feb 2019 03:57:02 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 03:57:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1f380f08e5c95b99e40b71c50050f887355b25216ef7aa69e4800316e56c0`  
		Last Modified: Tue, 05 Feb 2019 23:39:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8229df1e1058bbacb314c1ff1b2c74bd1d302aa533711da7d363b08a082166`  
		Last Modified: Sat, 09 Feb 2019 03:37:22 GMT  
		Size: 12.0 MB (11986353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225f5b49904c9d491ab08e72318362ce9c9c439a2837f2cdaa185f1de61b007c`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48d1762e413dfb33e9d9ae94f1c29d847859e792fa52162b7cb38e472b0052`  
		Last Modified: Sat, 09 Feb 2019 03:37:25 GMT  
		Size: 16.1 MB (16114078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033234594da1ce42a856740a64a833e4633ca662e9e7914cc898d77a5aa65d9e`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983c171dbf8c6a9f0b17747ce3f8cff19c161099f942b239dc5a70b66781cf1d`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 71.8 KB (71836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4136c3207d2f3f1d2ce05cff00fce60a2a182f1d8b282d0cd7c9c49c157fdb`  
		Last Modified: Sat, 09 Feb 2019 03:57:24 GMT  
		Size: 27.5 MB (27483609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bce1b1da649af197cb3c16d6e7ce78488ed5d1ed387383bfabb89ab2d6f0a`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b056504afb6467bb1c940683576b626e17d31a56b55ac9ff9b9369e4f7101`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 1.5 MB (1517168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38ae947c1aa589355e5a48fd872ac02920627f535982e09429e834f828e8940`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 489.4 KB (489366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d767410e7d31c6d7df89523c5a59d3ad7143f6d55a2655954bf77716bf098132`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce5c5a24bb60556c9ff76f1e3077151e0a4d5f671a1b1ec07aa03b9274a7a13`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1` - linux; arm variant v6

```console
$ docker pull composer@sha256:657ddb415975d35f73cd1133307e26d580ab99c9afcd7ef4775ac016290bb8e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59193809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab602e40270769209eaed9b70a375c618a996401ad5e435aae5f3436a343150d`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:24:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:24:30 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:14:46 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:14:52 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:14:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:18:06 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:18:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:18:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:08:53 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 10:08:55 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 10:09:14 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 10:09:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 10:09:17 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 10:09:17 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 10:09:18 GMT
WORKDIR /app
# Sat, 09 Feb 2019 10:09:18 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 10:09:19 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66176624f8585d27e168038f877a3f5411e3960de1e8f1378d0d5e5e695394b`  
		Last Modified: Wed, 06 Feb 2019 10:21:36 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7697509bb3132b52e6a065279111a4336b17207cd0729ba9b9b70cdbf789271e`  
		Last Modified: Sat, 09 Feb 2019 09:48:48 GMT  
		Size: 12.0 MB (11986382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fae9b1c109124de4bfb41aab147e19daa6660e1f4ba853c701815b6d26858`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c764f98343905040035ee486879ebc8bad84fddcb3df8ea2c4b3d326a81aa36`  
		Last Modified: Sat, 09 Feb 2019 09:48:51 GMT  
		Size: 15.1 MB (15087277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cc900111e9ab08144c5db2279263dda0ca1f82969f44ef902f280fdf816e0`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837b4601598c473d1f87ed2701a606ecb9fd15686e8dd5ef7aaad0458393ca6`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 71.4 KB (71385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80ab74e73829770b43d84d9dcd53fe84b20cab3a683c58e7da971228e1df38`  
		Last Modified: Sat, 09 Feb 2019 10:09:52 GMT  
		Size: 26.6 MB (26618320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6bb11fd78d8a4e9bfdc0f11967f7d0415645cac67d74b28a41aa8942a6ce2`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b5eca2459fcc9b968b8cc7aa5ca6c01617832aecff7910b47c9249e75ba5c`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 1.5 MB (1474589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8422f659c6d866dae1a767c83234d1f36b8bc97a233f4b0e7aa09b59f2d48ac`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 489.4 KB (489398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74716af879dce65bc74de204ab07c628d8b6606622572d3c32f904b7ec08ebe6`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c257ef3e01ef5619f7e4339fd67eedd220c94ecdf5a703b91541d0d1f07b447`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:4e3656e01457a83d375b6e2005997b581c38d30e36d3f02c7227c2b537cc5155
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58578128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e9429a1c68df77bd02b3dd4cb67dd02f8bfd202c3f3ab2f373fc0760b80b21`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 13:45:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:45:13 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:37:03 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:37:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:37:05 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:37:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:37:15 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:47:24 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:47:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:47:29 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 14:06:11 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 14:06:13 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 14:06:35 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 14:06:35 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 14:06:36 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 14:06:38 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 14:06:41 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 14:06:41 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 14:06:43 GMT
WORKDIR /app
# Sat, 09 Feb 2019 14:06:44 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 14:06:44 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1515c42bace64618b2d8e97b39653c928c26cbdc061b83bbd17d2063d85847d`  
		Last Modified: Wed, 06 Feb 2019 17:25:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6819919b542fa7d2b367754abd068b89b075e96c7de2578bb9c9c4663e1227f`  
		Last Modified: Sat, 09 Feb 2019 13:45:54 GMT  
		Size: 12.0 MB (11986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c968a37074e1bac1f5701a4097fbcb6798cf5930f55f86e53a29b5e1214269f`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d860e3cbdefbb6a39ec3d3df8418293aac82599201de0f0fa4ed265dbaa2ed8`  
		Last Modified: Sat, 09 Feb 2019 13:46:00 GMT  
		Size: 14.9 MB (14936661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b805a928ebb076b4dcb93e75f928290cbd38ef5c0ea26bb3f90181a2772d211b`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ef5dbbd1dbbe102d18b5ef6c54740ba8b4f9ad4abfff987f1e33b784cc27b6`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 70.9 KB (70873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5a9b714fcc1d3953f0252908691bd17d5355d64786f1bbdb14a0f1c8334f2`  
		Last Modified: Sat, 09 Feb 2019 14:07:26 GMT  
		Size: 26.2 MB (26236664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2b2bf73f241a123461e84ebb9488b4fed851d7de51286bc1ce518fa5d08ece`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237b447254a25523a33842593e4d5253171c94642b212083852df7b1fcabb780`  
		Last Modified: Sat, 09 Feb 2019 14:07:14 GMT  
		Size: 1.5 MB (1479073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ebdf3c7e2d20dd7e612fada9c7fa27aacd3c3de5c3f072ebcb4b01ebfc90fb`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 489.4 KB (489366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1375558319162532e9fd4b481a3107d6a764546b80f34bd8b50575b3100f6fee`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3b526c0e95a8151308f9a0405a4b8379c62761fb9e092e2fec75f6057cc588`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1` - linux; 386

```console
$ docker pull composer@sha256:62a438a260358aec5f75985d25d3b3cf4ad5c2fea386bfd6ddd07f58fe9ad94d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63462333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df42d6e25d05ec5049ae1cb980cb24ceebca10331c515107661393e9e1b51b7`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 15:01:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 15:01:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 15:01:12 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:41:39 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:41:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:47:08 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:47:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:47:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:17:09 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 15:17:10 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 15:17:22 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 15:17:24 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 15:17:24 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 15:17:24 GMT
WORKDIR /app
# Sat, 09 Feb 2019 15:17:24 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 15:17:24 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed9844383f8707ed2d7a91112083631ad565fbc4c0df4bca97764f154e4216a`  
		Last Modified: Wed, 06 Feb 2019 20:21:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af16d1972063b8994c6870ecd653582057bf45ed871e04032cd2a02d36ac4a3`  
		Last Modified: Sat, 09 Feb 2019 14:01:04 GMT  
		Size: 12.0 MB (11986384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c8ec139c48369737822eb5159dc1f15d8dc1ea3cc033e4344e462df4906386`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d3d9c325e83657444f643698cf6aac954dfc55de533695670b589fdd277c0`  
		Last Modified: Sat, 09 Feb 2019 14:01:08 GMT  
		Size: 16.6 MB (16569899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042f4b235754779ed160e9e3ae7e3b93f1110d55b18b1ef89680dceb86e80835`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b648e23da371cadc80723eeb99e21fe46f44ad81016cd5646655acdc7a7212`  
		Last Modified: Sat, 09 Feb 2019 14:01:02 GMT  
		Size: 71.0 KB (70998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd6066b09944c0519a06ae329852245e82826dac449400e0effa0ff31be5a6f`  
		Last Modified: Sat, 09 Feb 2019 15:17:46 GMT  
		Size: 29.1 MB (29102893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224957e1116d2de3326c20b408ed75234bd8e20aae37098eaada858bc8ec9cfa`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dcd5aa8d2d1d092d254f2e7abf8fa35c5d8efbaa1161fade75580997382389`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 1.5 MB (1512802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12ad13e51b4e622ddba0f2f8b5828d7a26aa45dc911b71e8674123a4835effc`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 489.4 KB (489354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d703794850c79e6bfbd1dbddab80e6b1ab82aa564830b6d7c97c2a3b95b27a60`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1123ab179c0190a92b407cba8077df378fec03b99505d433dd677836b07d8dea`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1` - linux; ppc64le

```console
$ docker pull composer@sha256:02807c95947c0199a2a7d5680b397bf090416e5cb0294d2fa86bc11b26f3806c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60515717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b87db6fc873cab016d0db57d16bc0e150c2d1f0764bcb1d7d49064e3997248`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:26:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:26:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:26:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:30:07 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:30:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:30:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:30:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:30:28 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:34:03 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:34:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:34:18 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 12:23:14 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 12:23:21 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 12:23:45 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 12:23:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 12:23:54 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 12:23:59 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 12:24:15 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 12:24:19 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 12:24:28 GMT
WORKDIR /app
# Sat, 09 Feb 2019 12:24:32 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 12:24:37 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72767b73c467a60d30e6d180584997ea1be506c9126cea9c00346bfa9cdb14b`  
		Last Modified: Wed, 06 Feb 2019 14:36:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5695398e94db0a265456755c4ff0f08bf23346f111db69888f7fde49d0d0e9`  
		Last Modified: Sat, 09 Feb 2019 11:39:19 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f3d304db61ca5341b84f861610a4b4eaab72c6b5bf4341ce74d799ec77863`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb3e808d52d11a38d64adcbb8209f7c464e2b3f0b537ea7303da0f8f4f5b0aa`  
		Last Modified: Sat, 09 Feb 2019 11:39:28 GMT  
		Size: 15.8 MB (15794250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91099992b9f887b03704d480d44c4875cda6b160ec4ba04ee236130834ad0337`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42e601ea73c4eda11659ffa901bba61f29a1b8a5d2754d78c23b89e4ce885a5`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 71.6 KB (71641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741bf5e88a6fa20ee7757413378f613221009f0c0df478581f16fa6b8e402f2`  
		Last Modified: Sat, 09 Feb 2019 12:25:22 GMT  
		Size: 27.2 MB (27160292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13096ff0962a182b9ded6584aac19625797ac02b4ea624c9ab811534c7baa2a1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6447f28b3dff16ddecbb5a9ab7c108cdd6b16126884a76778f28d4faeb0a69`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 1.5 MB (1491272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11af9fe1bb878830ee8e87828fd0345276bce10242b4f19781e75b38ce148b51`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 489.4 KB (489396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d53539d8f4ddda8adf55a2c84797e57fc3cefb8f46b8ea40d3410b5ad99b1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bd59f588c7db463a504ff5107768f2903bd01764ff1d54169d0776ec52533b`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.7`

```console
$ docker pull composer@sha256:9e119a0ac282f198b0207511c87a4d195578359a373423b26177b84629a13a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `composer:1.7` - linux; amd64

```console
$ docker pull composer@sha256:3661797e278e460e0f319f82538df213c819dd28309600fc8b797b0fa5404005
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61219255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706012b75113ad2956f3d9606ea08788a0f6f8f8b6b16f7e596f7682aaa0ea16`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Feb 2019 21:20:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Feb 2019 21:20:10 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:20:14 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:20:18 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:20:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 02:25:38 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 02:25:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 02:25:39 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 03:56:46 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 03:56:47 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 03:56:59 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 03:57:06 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 03:57:07 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 03:57:07 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 03:57:07 GMT
WORKDIR /app
# Sat, 09 Feb 2019 03:57:08 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 03:57:08 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1f380f08e5c95b99e40b71c50050f887355b25216ef7aa69e4800316e56c0`  
		Last Modified: Tue, 05 Feb 2019 23:39:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8229df1e1058bbacb314c1ff1b2c74bd1d302aa533711da7d363b08a082166`  
		Last Modified: Sat, 09 Feb 2019 03:37:22 GMT  
		Size: 12.0 MB (11986353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225f5b49904c9d491ab08e72318362ce9c9c439a2837f2cdaa185f1de61b007c`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48d1762e413dfb33e9d9ae94f1c29d847859e792fa52162b7cb38e472b0052`  
		Last Modified: Sat, 09 Feb 2019 03:37:25 GMT  
		Size: 16.1 MB (16114078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033234594da1ce42a856740a64a833e4633ca662e9e7914cc898d77a5aa65d9e`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983c171dbf8c6a9f0b17747ce3f8cff19c161099f942b239dc5a70b66781cf1d`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 71.8 KB (71836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4136c3207d2f3f1d2ce05cff00fce60a2a182f1d8b282d0cd7c9c49c157fdb`  
		Last Modified: Sat, 09 Feb 2019 03:57:24 GMT  
		Size: 27.5 MB (27483609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bce1b1da649af197cb3c16d6e7ce78488ed5d1ed387383bfabb89ab2d6f0a`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b056504afb6467bb1c940683576b626e17d31a56b55ac9ff9b9369e4f7101`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 1.5 MB (1517168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17836ee68199ef150ae3f12c39a8fa795e36cf9235e05825b4524a5c1c8bdd8c`  
		Last Modified: Sat, 09 Feb 2019 03:57:33 GMT  
		Size: 476.9 KB (476867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab17186a8e5dc24fa68781d6eefe86d05b0a775e00855554228e31b31d6d1c89`  
		Last Modified: Sat, 09 Feb 2019 03:57:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bb1023e47a92fb712182c3afd8e7d2f8a06b440a3f30e01c6ddbe4ab9647cb`  
		Last Modified: Sat, 09 Feb 2019 03:57:29 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7` - linux; arm variant v6

```console
$ docker pull composer@sha256:bd0424fc195fc10343ca806327e4162ab40aee9bbb9dae069df500c0f63790fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59181280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf80d4da26f6006eef461466e46307fff9d4a90809755e8106f85b41aba679b7`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:24:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:24:30 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:14:46 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:14:52 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:14:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:18:06 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:18:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:18:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:08:53 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 10:08:55 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 10:09:14 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 10:09:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 10:09:22 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 10:09:24 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 10:09:25 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 10:09:26 GMT
WORKDIR /app
# Sat, 09 Feb 2019 10:09:26 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 10:09:27 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66176624f8585d27e168038f877a3f5411e3960de1e8f1378d0d5e5e695394b`  
		Last Modified: Wed, 06 Feb 2019 10:21:36 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7697509bb3132b52e6a065279111a4336b17207cd0729ba9b9b70cdbf789271e`  
		Last Modified: Sat, 09 Feb 2019 09:48:48 GMT  
		Size: 12.0 MB (11986382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fae9b1c109124de4bfb41aab147e19daa6660e1f4ba853c701815b6d26858`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c764f98343905040035ee486879ebc8bad84fddcb3df8ea2c4b3d326a81aa36`  
		Last Modified: Sat, 09 Feb 2019 09:48:51 GMT  
		Size: 15.1 MB (15087277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cc900111e9ab08144c5db2279263dda0ca1f82969f44ef902f280fdf816e0`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837b4601598c473d1f87ed2701a606ecb9fd15686e8dd5ef7aaad0458393ca6`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 71.4 KB (71385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80ab74e73829770b43d84d9dcd53fe84b20cab3a683c58e7da971228e1df38`  
		Last Modified: Sat, 09 Feb 2019 10:09:52 GMT  
		Size: 26.6 MB (26618320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6bb11fd78d8a4e9bfdc0f11967f7d0415645cac67d74b28a41aa8942a6ce2`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b5eca2459fcc9b968b8cc7aa5ca6c01617832aecff7910b47c9249e75ba5c`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 1.5 MB (1474589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f15564c9162a796f516a5a6f316e1c3215a312cf3aed248e7543861a3d76436`  
		Last Modified: Sat, 09 Feb 2019 10:10:03 GMT  
		Size: 476.9 KB (476889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729110563f727a9cb0781d7516e0d900f2d20657b1b1681defc0eb1146ebab0e`  
		Last Modified: Sat, 09 Feb 2019 10:10:03 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7139175cedee557f8f83b3a9253cf77acf419131e27d23a333157b8033d265d0`  
		Last Modified: Sat, 09 Feb 2019 10:10:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:0f6bd9cc952cab59735ab9f4e69de4405d662c0d45e699dc504b69eb170891cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58565609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416d50bd550b3be131503d871b4034d6e3759c63b7a6f8d7a22c50beef2c1f3b`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 13:45:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:45:13 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:37:03 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:37:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:37:05 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:37:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:37:15 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:47:24 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:47:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:47:29 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 14:06:11 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 14:06:13 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 14:06:35 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 14:06:35 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 14:06:36 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 14:06:55 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 14:06:58 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 14:06:59 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 14:07:00 GMT
WORKDIR /app
# Sat, 09 Feb 2019 14:07:01 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 14:07:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1515c42bace64618b2d8e97b39653c928c26cbdc061b83bbd17d2063d85847d`  
		Last Modified: Wed, 06 Feb 2019 17:25:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6819919b542fa7d2b367754abd068b89b075e96c7de2578bb9c9c4663e1227f`  
		Last Modified: Sat, 09 Feb 2019 13:45:54 GMT  
		Size: 12.0 MB (11986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c968a37074e1bac1f5701a4097fbcb6798cf5930f55f86e53a29b5e1214269f`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d860e3cbdefbb6a39ec3d3df8418293aac82599201de0f0fa4ed265dbaa2ed8`  
		Last Modified: Sat, 09 Feb 2019 13:46:00 GMT  
		Size: 14.9 MB (14936661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b805a928ebb076b4dcb93e75f928290cbd38ef5c0ea26bb3f90181a2772d211b`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ef5dbbd1dbbe102d18b5ef6c54740ba8b4f9ad4abfff987f1e33b784cc27b6`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 70.9 KB (70873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5a9b714fcc1d3953f0252908691bd17d5355d64786f1bbdb14a0f1c8334f2`  
		Last Modified: Sat, 09 Feb 2019 14:07:26 GMT  
		Size: 26.2 MB (26236664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2b2bf73f241a123461e84ebb9488b4fed851d7de51286bc1ce518fa5d08ece`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237b447254a25523a33842593e4d5253171c94642b212083852df7b1fcabb780`  
		Last Modified: Sat, 09 Feb 2019 14:07:14 GMT  
		Size: 1.5 MB (1479073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e88e47d05124cb060d20e280b5ee6ffe2e6880d62cdd1d96aa2d8b9a97752b`  
		Last Modified: Sat, 09 Feb 2019 14:07:43 GMT  
		Size: 476.9 KB (476865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71ee8711f304e18ff9c3295bbee8d938ae5ac31179252efd78934620f8c094a`  
		Last Modified: Sat, 09 Feb 2019 14:07:43 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751ae3d365eaf055ab7051c11ef3e75875a8c2c2cc7136e031ac091af4fb60f8`  
		Last Modified: Sat, 09 Feb 2019 14:07:43 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7` - linux; 386

```console
$ docker pull composer@sha256:effdf80dffb928a8ab2d2ae55a8bdf4a585d7a3e65930ee1b228eab6d46d7781
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63449820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff405283787e437efe4f8a78d2a597ac89db70e955954cc38d8f0f379bb85e3a`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 15:01:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 15:01:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 15:01:12 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:41:39 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:41:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:47:08 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:47:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:47:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:17:09 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 15:17:10 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 15:17:22 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 15:17:28 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 15:17:29 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 15:17:30 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 15:17:30 GMT
WORKDIR /app
# Sat, 09 Feb 2019 15:17:30 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 15:17:30 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed9844383f8707ed2d7a91112083631ad565fbc4c0df4bca97764f154e4216a`  
		Last Modified: Wed, 06 Feb 2019 20:21:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af16d1972063b8994c6870ecd653582057bf45ed871e04032cd2a02d36ac4a3`  
		Last Modified: Sat, 09 Feb 2019 14:01:04 GMT  
		Size: 12.0 MB (11986384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c8ec139c48369737822eb5159dc1f15d8dc1ea3cc033e4344e462df4906386`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d3d9c325e83657444f643698cf6aac954dfc55de533695670b589fdd277c0`  
		Last Modified: Sat, 09 Feb 2019 14:01:08 GMT  
		Size: 16.6 MB (16569899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042f4b235754779ed160e9e3ae7e3b93f1110d55b18b1ef89680dceb86e80835`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b648e23da371cadc80723eeb99e21fe46f44ad81016cd5646655acdc7a7212`  
		Last Modified: Sat, 09 Feb 2019 14:01:02 GMT  
		Size: 71.0 KB (70998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd6066b09944c0519a06ae329852245e82826dac449400e0effa0ff31be5a6f`  
		Last Modified: Sat, 09 Feb 2019 15:17:46 GMT  
		Size: 29.1 MB (29102893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224957e1116d2de3326c20b408ed75234bd8e20aae37098eaada858bc8ec9cfa`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dcd5aa8d2d1d092d254f2e7abf8fa35c5d8efbaa1161fade75580997382389`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 1.5 MB (1512802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420ae8655c5353fadb814dd61d0cc2370835dc29519561e5833c2332315aa641`  
		Last Modified: Sat, 09 Feb 2019 15:17:53 GMT  
		Size: 476.9 KB (476861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89faef18f09a6f72229803eef1e4470ca3f0f26ecfd1e9306fd8f01db5a6ebe`  
		Last Modified: Sat, 09 Feb 2019 15:17:52 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5dcc6c36026b125734a2b0b474ef3fc2a95d6702aeac20dac2057d7fe34b42`  
		Last Modified: Sat, 09 Feb 2019 15:17:52 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7` - linux; ppc64le

```console
$ docker pull composer@sha256:ecda7b5a041aedd937a09225a0aaf3aab8dfe9c40569a68ba7ac614c86039582
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60503195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64bfe1f84f359fcc111471d99cde07234bd632094fa88a45dbb0176f01ebb699`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:26:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:26:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:26:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:30:07 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:30:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:30:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:30:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:30:28 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:34:03 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:34:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:34:18 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 12:23:14 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 12:23:21 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 12:23:45 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 12:23:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 12:23:54 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 12:24:45 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 12:24:52 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 12:24:54 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 12:24:56 GMT
WORKDIR /app
# Sat, 09 Feb 2019 12:24:58 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 12:24:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72767b73c467a60d30e6d180584997ea1be506c9126cea9c00346bfa9cdb14b`  
		Last Modified: Wed, 06 Feb 2019 14:36:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5695398e94db0a265456755c4ff0f08bf23346f111db69888f7fde49d0d0e9`  
		Last Modified: Sat, 09 Feb 2019 11:39:19 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f3d304db61ca5341b84f861610a4b4eaab72c6b5bf4341ce74d799ec77863`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb3e808d52d11a38d64adcbb8209f7c464e2b3f0b537ea7303da0f8f4f5b0aa`  
		Last Modified: Sat, 09 Feb 2019 11:39:28 GMT  
		Size: 15.8 MB (15794250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91099992b9f887b03704d480d44c4875cda6b160ec4ba04ee236130834ad0337`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42e601ea73c4eda11659ffa901bba61f29a1b8a5d2754d78c23b89e4ce885a5`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 71.6 KB (71641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741bf5e88a6fa20ee7757413378f613221009f0c0df478581f16fa6b8e402f2`  
		Last Modified: Sat, 09 Feb 2019 12:25:22 GMT  
		Size: 27.2 MB (27160292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13096ff0962a182b9ded6584aac19625797ac02b4ea624c9ab811534c7baa2a1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6447f28b3dff16ddecbb5a9ab7c108cdd6b16126884a76778f28d4faeb0a69`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 1.5 MB (1491272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ee618bef49d369089ffe1a3f676aeb740949222cb67e81a6a8374bd3ce52c`  
		Last Modified: Sat, 09 Feb 2019 12:25:40 GMT  
		Size: 476.9 KB (476896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c147166004ba5134938ce77bca7104551121948318628bae04ce75f0aba621`  
		Last Modified: Sat, 09 Feb 2019 12:25:40 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c83b0f6ded256fa7a5700707f933ab6b03cf07d96bace17eb393b7dbb335753`  
		Last Modified: Sat, 09 Feb 2019 12:25:40 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.7.3`

```console
$ docker pull composer@sha256:9e119a0ac282f198b0207511c87a4d195578359a373423b26177b84629a13a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `composer:1.7.3` - linux; amd64

```console
$ docker pull composer@sha256:3661797e278e460e0f319f82538df213c819dd28309600fc8b797b0fa5404005
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61219255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706012b75113ad2956f3d9606ea08788a0f6f8f8b6b16f7e596f7682aaa0ea16`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Feb 2019 21:20:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Feb 2019 21:20:10 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:20:14 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:20:18 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:20:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 02:25:38 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 02:25:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 02:25:39 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 03:56:46 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 03:56:47 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 03:56:59 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 03:57:06 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 03:57:07 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 03:57:07 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 03:57:07 GMT
WORKDIR /app
# Sat, 09 Feb 2019 03:57:08 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 03:57:08 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1f380f08e5c95b99e40b71c50050f887355b25216ef7aa69e4800316e56c0`  
		Last Modified: Tue, 05 Feb 2019 23:39:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8229df1e1058bbacb314c1ff1b2c74bd1d302aa533711da7d363b08a082166`  
		Last Modified: Sat, 09 Feb 2019 03:37:22 GMT  
		Size: 12.0 MB (11986353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225f5b49904c9d491ab08e72318362ce9c9c439a2837f2cdaa185f1de61b007c`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48d1762e413dfb33e9d9ae94f1c29d847859e792fa52162b7cb38e472b0052`  
		Last Modified: Sat, 09 Feb 2019 03:37:25 GMT  
		Size: 16.1 MB (16114078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033234594da1ce42a856740a64a833e4633ca662e9e7914cc898d77a5aa65d9e`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983c171dbf8c6a9f0b17747ce3f8cff19c161099f942b239dc5a70b66781cf1d`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 71.8 KB (71836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4136c3207d2f3f1d2ce05cff00fce60a2a182f1d8b282d0cd7c9c49c157fdb`  
		Last Modified: Sat, 09 Feb 2019 03:57:24 GMT  
		Size: 27.5 MB (27483609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bce1b1da649af197cb3c16d6e7ce78488ed5d1ed387383bfabb89ab2d6f0a`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b056504afb6467bb1c940683576b626e17d31a56b55ac9ff9b9369e4f7101`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 1.5 MB (1517168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17836ee68199ef150ae3f12c39a8fa795e36cf9235e05825b4524a5c1c8bdd8c`  
		Last Modified: Sat, 09 Feb 2019 03:57:33 GMT  
		Size: 476.9 KB (476867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab17186a8e5dc24fa68781d6eefe86d05b0a775e00855554228e31b31d6d1c89`  
		Last Modified: Sat, 09 Feb 2019 03:57:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bb1023e47a92fb712182c3afd8e7d2f8a06b440a3f30e01c6ddbe4ab9647cb`  
		Last Modified: Sat, 09 Feb 2019 03:57:29 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7.3` - linux; arm variant v6

```console
$ docker pull composer@sha256:bd0424fc195fc10343ca806327e4162ab40aee9bbb9dae069df500c0f63790fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59181280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf80d4da26f6006eef461466e46307fff9d4a90809755e8106f85b41aba679b7`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:24:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:24:30 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:14:46 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:14:52 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:14:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:18:06 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:18:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:18:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:08:53 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 10:08:55 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 10:09:14 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 10:09:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 10:09:22 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 10:09:24 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 10:09:25 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 10:09:26 GMT
WORKDIR /app
# Sat, 09 Feb 2019 10:09:26 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 10:09:27 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66176624f8585d27e168038f877a3f5411e3960de1e8f1378d0d5e5e695394b`  
		Last Modified: Wed, 06 Feb 2019 10:21:36 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7697509bb3132b52e6a065279111a4336b17207cd0729ba9b9b70cdbf789271e`  
		Last Modified: Sat, 09 Feb 2019 09:48:48 GMT  
		Size: 12.0 MB (11986382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fae9b1c109124de4bfb41aab147e19daa6660e1f4ba853c701815b6d26858`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c764f98343905040035ee486879ebc8bad84fddcb3df8ea2c4b3d326a81aa36`  
		Last Modified: Sat, 09 Feb 2019 09:48:51 GMT  
		Size: 15.1 MB (15087277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cc900111e9ab08144c5db2279263dda0ca1f82969f44ef902f280fdf816e0`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837b4601598c473d1f87ed2701a606ecb9fd15686e8dd5ef7aaad0458393ca6`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 71.4 KB (71385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80ab74e73829770b43d84d9dcd53fe84b20cab3a683c58e7da971228e1df38`  
		Last Modified: Sat, 09 Feb 2019 10:09:52 GMT  
		Size: 26.6 MB (26618320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6bb11fd78d8a4e9bfdc0f11967f7d0415645cac67d74b28a41aa8942a6ce2`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b5eca2459fcc9b968b8cc7aa5ca6c01617832aecff7910b47c9249e75ba5c`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 1.5 MB (1474589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f15564c9162a796f516a5a6f316e1c3215a312cf3aed248e7543861a3d76436`  
		Last Modified: Sat, 09 Feb 2019 10:10:03 GMT  
		Size: 476.9 KB (476889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729110563f727a9cb0781d7516e0d900f2d20657b1b1681defc0eb1146ebab0e`  
		Last Modified: Sat, 09 Feb 2019 10:10:03 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7139175cedee557f8f83b3a9253cf77acf419131e27d23a333157b8033d265d0`  
		Last Modified: Sat, 09 Feb 2019 10:10:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7.3` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:0f6bd9cc952cab59735ab9f4e69de4405d662c0d45e699dc504b69eb170891cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58565609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416d50bd550b3be131503d871b4034d6e3759c63b7a6f8d7a22c50beef2c1f3b`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 13:45:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:45:13 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:37:03 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:37:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:37:05 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:37:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:37:15 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:47:24 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:47:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:47:29 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 14:06:11 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 14:06:13 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 14:06:35 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 14:06:35 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 14:06:36 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 14:06:55 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 14:06:58 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 14:06:59 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 14:07:00 GMT
WORKDIR /app
# Sat, 09 Feb 2019 14:07:01 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 14:07:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1515c42bace64618b2d8e97b39653c928c26cbdc061b83bbd17d2063d85847d`  
		Last Modified: Wed, 06 Feb 2019 17:25:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6819919b542fa7d2b367754abd068b89b075e96c7de2578bb9c9c4663e1227f`  
		Last Modified: Sat, 09 Feb 2019 13:45:54 GMT  
		Size: 12.0 MB (11986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c968a37074e1bac1f5701a4097fbcb6798cf5930f55f86e53a29b5e1214269f`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d860e3cbdefbb6a39ec3d3df8418293aac82599201de0f0fa4ed265dbaa2ed8`  
		Last Modified: Sat, 09 Feb 2019 13:46:00 GMT  
		Size: 14.9 MB (14936661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b805a928ebb076b4dcb93e75f928290cbd38ef5c0ea26bb3f90181a2772d211b`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ef5dbbd1dbbe102d18b5ef6c54740ba8b4f9ad4abfff987f1e33b784cc27b6`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 70.9 KB (70873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5a9b714fcc1d3953f0252908691bd17d5355d64786f1bbdb14a0f1c8334f2`  
		Last Modified: Sat, 09 Feb 2019 14:07:26 GMT  
		Size: 26.2 MB (26236664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2b2bf73f241a123461e84ebb9488b4fed851d7de51286bc1ce518fa5d08ece`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237b447254a25523a33842593e4d5253171c94642b212083852df7b1fcabb780`  
		Last Modified: Sat, 09 Feb 2019 14:07:14 GMT  
		Size: 1.5 MB (1479073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e88e47d05124cb060d20e280b5ee6ffe2e6880d62cdd1d96aa2d8b9a97752b`  
		Last Modified: Sat, 09 Feb 2019 14:07:43 GMT  
		Size: 476.9 KB (476865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71ee8711f304e18ff9c3295bbee8d938ae5ac31179252efd78934620f8c094a`  
		Last Modified: Sat, 09 Feb 2019 14:07:43 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751ae3d365eaf055ab7051c11ef3e75875a8c2c2cc7136e031ac091af4fb60f8`  
		Last Modified: Sat, 09 Feb 2019 14:07:43 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7.3` - linux; 386

```console
$ docker pull composer@sha256:effdf80dffb928a8ab2d2ae55a8bdf4a585d7a3e65930ee1b228eab6d46d7781
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63449820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff405283787e437efe4f8a78d2a597ac89db70e955954cc38d8f0f379bb85e3a`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 15:01:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 15:01:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 15:01:12 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:41:39 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:41:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:47:08 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:47:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:47:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:17:09 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 15:17:10 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 15:17:22 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 15:17:28 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 15:17:29 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 15:17:30 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 15:17:30 GMT
WORKDIR /app
# Sat, 09 Feb 2019 15:17:30 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 15:17:30 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed9844383f8707ed2d7a91112083631ad565fbc4c0df4bca97764f154e4216a`  
		Last Modified: Wed, 06 Feb 2019 20:21:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af16d1972063b8994c6870ecd653582057bf45ed871e04032cd2a02d36ac4a3`  
		Last Modified: Sat, 09 Feb 2019 14:01:04 GMT  
		Size: 12.0 MB (11986384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c8ec139c48369737822eb5159dc1f15d8dc1ea3cc033e4344e462df4906386`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d3d9c325e83657444f643698cf6aac954dfc55de533695670b589fdd277c0`  
		Last Modified: Sat, 09 Feb 2019 14:01:08 GMT  
		Size: 16.6 MB (16569899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042f4b235754779ed160e9e3ae7e3b93f1110d55b18b1ef89680dceb86e80835`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b648e23da371cadc80723eeb99e21fe46f44ad81016cd5646655acdc7a7212`  
		Last Modified: Sat, 09 Feb 2019 14:01:02 GMT  
		Size: 71.0 KB (70998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd6066b09944c0519a06ae329852245e82826dac449400e0effa0ff31be5a6f`  
		Last Modified: Sat, 09 Feb 2019 15:17:46 GMT  
		Size: 29.1 MB (29102893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224957e1116d2de3326c20b408ed75234bd8e20aae37098eaada858bc8ec9cfa`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dcd5aa8d2d1d092d254f2e7abf8fa35c5d8efbaa1161fade75580997382389`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 1.5 MB (1512802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420ae8655c5353fadb814dd61d0cc2370835dc29519561e5833c2332315aa641`  
		Last Modified: Sat, 09 Feb 2019 15:17:53 GMT  
		Size: 476.9 KB (476861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89faef18f09a6f72229803eef1e4470ca3f0f26ecfd1e9306fd8f01db5a6ebe`  
		Last Modified: Sat, 09 Feb 2019 15:17:52 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5dcc6c36026b125734a2b0b474ef3fc2a95d6702aeac20dac2057d7fe34b42`  
		Last Modified: Sat, 09 Feb 2019 15:17:52 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.7.3` - linux; ppc64le

```console
$ docker pull composer@sha256:ecda7b5a041aedd937a09225a0aaf3aab8dfe9c40569a68ba7ac614c86039582
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60503195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64bfe1f84f359fcc111471d99cde07234bd632094fa88a45dbb0176f01ebb699`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:26:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:26:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:26:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:30:07 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:30:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:30:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:30:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:30:28 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:34:03 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:34:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:34:18 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 12:23:14 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 12:23:21 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 12:23:45 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 12:23:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 12:23:54 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 12:24:45 GMT
ENV COMPOSER_VERSION=1.7.3
# Sat, 09 Feb 2019 12:24:52 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 12:24:54 GMT
COPY file:0bcb2d1c76549e38469db832f5bcfcb4c538b26748a9d4246cc64f35a23280d0 in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 12:24:56 GMT
WORKDIR /app
# Sat, 09 Feb 2019 12:24:58 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 12:24:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72767b73c467a60d30e6d180584997ea1be506c9126cea9c00346bfa9cdb14b`  
		Last Modified: Wed, 06 Feb 2019 14:36:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5695398e94db0a265456755c4ff0f08bf23346f111db69888f7fde49d0d0e9`  
		Last Modified: Sat, 09 Feb 2019 11:39:19 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f3d304db61ca5341b84f861610a4b4eaab72c6b5bf4341ce74d799ec77863`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb3e808d52d11a38d64adcbb8209f7c464e2b3f0b537ea7303da0f8f4f5b0aa`  
		Last Modified: Sat, 09 Feb 2019 11:39:28 GMT  
		Size: 15.8 MB (15794250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91099992b9f887b03704d480d44c4875cda6b160ec4ba04ee236130834ad0337`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42e601ea73c4eda11659ffa901bba61f29a1b8a5d2754d78c23b89e4ce885a5`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 71.6 KB (71641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741bf5e88a6fa20ee7757413378f613221009f0c0df478581f16fa6b8e402f2`  
		Last Modified: Sat, 09 Feb 2019 12:25:22 GMT  
		Size: 27.2 MB (27160292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13096ff0962a182b9ded6584aac19625797ac02b4ea624c9ab811534c7baa2a1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6447f28b3dff16ddecbb5a9ab7c108cdd6b16126884a76778f28d4faeb0a69`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 1.5 MB (1491272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ee618bef49d369089ffe1a3f676aeb740949222cb67e81a6a8374bd3ce52c`  
		Last Modified: Sat, 09 Feb 2019 12:25:40 GMT  
		Size: 476.9 KB (476896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c147166004ba5134938ce77bca7104551121948318628bae04ce75f0aba621`  
		Last Modified: Sat, 09 Feb 2019 12:25:40 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c83b0f6ded256fa7a5700707f933ab6b03cf07d96bace17eb393b7dbb335753`  
		Last Modified: Sat, 09 Feb 2019 12:25:40 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.8`

```console
$ docker pull composer@sha256:f749604717d3b95fda063a0774980571f3626f362871357ddf2e802c4aaee86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `composer:1.8` - linux; amd64

```console
$ docker pull composer@sha256:28dd22347f90cd5e729b0f29c08fe5a96ee998208db5e30f505cf1a6c0f3bfa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61231774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e976bea85041d8846a907f9a6a644af13e5e863bc4a95506de1f980c9ef4d8`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Feb 2019 21:20:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Feb 2019 21:20:10 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:20:14 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:20:18 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:20:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 02:25:38 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 02:25:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 02:25:39 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 03:56:46 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 03:56:47 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 03:56:59 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 03:57:00 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 03:57:01 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 03:57:01 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 03:57:02 GMT
WORKDIR /app
# Sat, 09 Feb 2019 03:57:02 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 03:57:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1f380f08e5c95b99e40b71c50050f887355b25216ef7aa69e4800316e56c0`  
		Last Modified: Tue, 05 Feb 2019 23:39:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8229df1e1058bbacb314c1ff1b2c74bd1d302aa533711da7d363b08a082166`  
		Last Modified: Sat, 09 Feb 2019 03:37:22 GMT  
		Size: 12.0 MB (11986353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225f5b49904c9d491ab08e72318362ce9c9c439a2837f2cdaa185f1de61b007c`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48d1762e413dfb33e9d9ae94f1c29d847859e792fa52162b7cb38e472b0052`  
		Last Modified: Sat, 09 Feb 2019 03:37:25 GMT  
		Size: 16.1 MB (16114078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033234594da1ce42a856740a64a833e4633ca662e9e7914cc898d77a5aa65d9e`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983c171dbf8c6a9f0b17747ce3f8cff19c161099f942b239dc5a70b66781cf1d`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 71.8 KB (71836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4136c3207d2f3f1d2ce05cff00fce60a2a182f1d8b282d0cd7c9c49c157fdb`  
		Last Modified: Sat, 09 Feb 2019 03:57:24 GMT  
		Size: 27.5 MB (27483609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bce1b1da649af197cb3c16d6e7ce78488ed5d1ed387383bfabb89ab2d6f0a`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b056504afb6467bb1c940683576b626e17d31a56b55ac9ff9b9369e4f7101`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 1.5 MB (1517168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38ae947c1aa589355e5a48fd872ac02920627f535982e09429e834f828e8940`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 489.4 KB (489366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d767410e7d31c6d7df89523c5a59d3ad7143f6d55a2655954bf77716bf098132`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce5c5a24bb60556c9ff76f1e3077151e0a4d5f671a1b1ec07aa03b9274a7a13`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.8` - linux; arm variant v6

```console
$ docker pull composer@sha256:657ddb415975d35f73cd1133307e26d580ab99c9afcd7ef4775ac016290bb8e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59193809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab602e40270769209eaed9b70a375c618a996401ad5e435aae5f3436a343150d`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:24:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:24:30 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:14:46 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:14:52 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:14:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:18:06 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:18:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:18:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:08:53 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 10:08:55 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 10:09:14 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 10:09:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 10:09:17 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 10:09:17 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 10:09:18 GMT
WORKDIR /app
# Sat, 09 Feb 2019 10:09:18 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 10:09:19 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66176624f8585d27e168038f877a3f5411e3960de1e8f1378d0d5e5e695394b`  
		Last Modified: Wed, 06 Feb 2019 10:21:36 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7697509bb3132b52e6a065279111a4336b17207cd0729ba9b9b70cdbf789271e`  
		Last Modified: Sat, 09 Feb 2019 09:48:48 GMT  
		Size: 12.0 MB (11986382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fae9b1c109124de4bfb41aab147e19daa6660e1f4ba853c701815b6d26858`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c764f98343905040035ee486879ebc8bad84fddcb3df8ea2c4b3d326a81aa36`  
		Last Modified: Sat, 09 Feb 2019 09:48:51 GMT  
		Size: 15.1 MB (15087277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cc900111e9ab08144c5db2279263dda0ca1f82969f44ef902f280fdf816e0`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837b4601598c473d1f87ed2701a606ecb9fd15686e8dd5ef7aaad0458393ca6`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 71.4 KB (71385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80ab74e73829770b43d84d9dcd53fe84b20cab3a683c58e7da971228e1df38`  
		Last Modified: Sat, 09 Feb 2019 10:09:52 GMT  
		Size: 26.6 MB (26618320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6bb11fd78d8a4e9bfdc0f11967f7d0415645cac67d74b28a41aa8942a6ce2`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b5eca2459fcc9b968b8cc7aa5ca6c01617832aecff7910b47c9249e75ba5c`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 1.5 MB (1474589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8422f659c6d866dae1a767c83234d1f36b8bc97a233f4b0e7aa09b59f2d48ac`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 489.4 KB (489398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74716af879dce65bc74de204ab07c628d8b6606622572d3c32f904b7ec08ebe6`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c257ef3e01ef5619f7e4339fd67eedd220c94ecdf5a703b91541d0d1f07b447`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.8` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:4e3656e01457a83d375b6e2005997b581c38d30e36d3f02c7227c2b537cc5155
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58578128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e9429a1c68df77bd02b3dd4cb67dd02f8bfd202c3f3ab2f373fc0760b80b21`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 13:45:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:45:13 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:37:03 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:37:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:37:05 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:37:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:37:15 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:47:24 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:47:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:47:29 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 14:06:11 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 14:06:13 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 14:06:35 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 14:06:35 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 14:06:36 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 14:06:38 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 14:06:41 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 14:06:41 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 14:06:43 GMT
WORKDIR /app
# Sat, 09 Feb 2019 14:06:44 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 14:06:44 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1515c42bace64618b2d8e97b39653c928c26cbdc061b83bbd17d2063d85847d`  
		Last Modified: Wed, 06 Feb 2019 17:25:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6819919b542fa7d2b367754abd068b89b075e96c7de2578bb9c9c4663e1227f`  
		Last Modified: Sat, 09 Feb 2019 13:45:54 GMT  
		Size: 12.0 MB (11986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c968a37074e1bac1f5701a4097fbcb6798cf5930f55f86e53a29b5e1214269f`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d860e3cbdefbb6a39ec3d3df8418293aac82599201de0f0fa4ed265dbaa2ed8`  
		Last Modified: Sat, 09 Feb 2019 13:46:00 GMT  
		Size: 14.9 MB (14936661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b805a928ebb076b4dcb93e75f928290cbd38ef5c0ea26bb3f90181a2772d211b`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ef5dbbd1dbbe102d18b5ef6c54740ba8b4f9ad4abfff987f1e33b784cc27b6`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 70.9 KB (70873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5a9b714fcc1d3953f0252908691bd17d5355d64786f1bbdb14a0f1c8334f2`  
		Last Modified: Sat, 09 Feb 2019 14:07:26 GMT  
		Size: 26.2 MB (26236664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2b2bf73f241a123461e84ebb9488b4fed851d7de51286bc1ce518fa5d08ece`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237b447254a25523a33842593e4d5253171c94642b212083852df7b1fcabb780`  
		Last Modified: Sat, 09 Feb 2019 14:07:14 GMT  
		Size: 1.5 MB (1479073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ebdf3c7e2d20dd7e612fada9c7fa27aacd3c3de5c3f072ebcb4b01ebfc90fb`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 489.4 KB (489366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1375558319162532e9fd4b481a3107d6a764546b80f34bd8b50575b3100f6fee`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3b526c0e95a8151308f9a0405a4b8379c62761fb9e092e2fec75f6057cc588`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.8` - linux; 386

```console
$ docker pull composer@sha256:62a438a260358aec5f75985d25d3b3cf4ad5c2fea386bfd6ddd07f58fe9ad94d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63462333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df42d6e25d05ec5049ae1cb980cb24ceebca10331c515107661393e9e1b51b7`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 15:01:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 15:01:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 15:01:12 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:41:39 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:41:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:47:08 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:47:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:47:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:17:09 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 15:17:10 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 15:17:22 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 15:17:24 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 15:17:24 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 15:17:24 GMT
WORKDIR /app
# Sat, 09 Feb 2019 15:17:24 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 15:17:24 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed9844383f8707ed2d7a91112083631ad565fbc4c0df4bca97764f154e4216a`  
		Last Modified: Wed, 06 Feb 2019 20:21:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af16d1972063b8994c6870ecd653582057bf45ed871e04032cd2a02d36ac4a3`  
		Last Modified: Sat, 09 Feb 2019 14:01:04 GMT  
		Size: 12.0 MB (11986384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c8ec139c48369737822eb5159dc1f15d8dc1ea3cc033e4344e462df4906386`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d3d9c325e83657444f643698cf6aac954dfc55de533695670b589fdd277c0`  
		Last Modified: Sat, 09 Feb 2019 14:01:08 GMT  
		Size: 16.6 MB (16569899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042f4b235754779ed160e9e3ae7e3b93f1110d55b18b1ef89680dceb86e80835`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b648e23da371cadc80723eeb99e21fe46f44ad81016cd5646655acdc7a7212`  
		Last Modified: Sat, 09 Feb 2019 14:01:02 GMT  
		Size: 71.0 KB (70998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd6066b09944c0519a06ae329852245e82826dac449400e0effa0ff31be5a6f`  
		Last Modified: Sat, 09 Feb 2019 15:17:46 GMT  
		Size: 29.1 MB (29102893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224957e1116d2de3326c20b408ed75234bd8e20aae37098eaada858bc8ec9cfa`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dcd5aa8d2d1d092d254f2e7abf8fa35c5d8efbaa1161fade75580997382389`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 1.5 MB (1512802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12ad13e51b4e622ddba0f2f8b5828d7a26aa45dc911b71e8674123a4835effc`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 489.4 KB (489354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d703794850c79e6bfbd1dbddab80e6b1ab82aa564830b6d7c97c2a3b95b27a60`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1123ab179c0190a92b407cba8077df378fec03b99505d433dd677836b07d8dea`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:1.8` - linux; ppc64le

```console
$ docker pull composer@sha256:02807c95947c0199a2a7d5680b397bf090416e5cb0294d2fa86bc11b26f3806c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60515717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b87db6fc873cab016d0db57d16bc0e150c2d1f0764bcb1d7d49064e3997248`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:26:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:26:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:26:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:30:07 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:30:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:30:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:30:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:30:28 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:34:03 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:34:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:34:18 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 12:23:14 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 12:23:21 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 12:23:45 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 12:23:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 12:23:54 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 12:23:59 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 12:24:15 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 12:24:19 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 12:24:28 GMT
WORKDIR /app
# Sat, 09 Feb 2019 12:24:32 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 12:24:37 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72767b73c467a60d30e6d180584997ea1be506c9126cea9c00346bfa9cdb14b`  
		Last Modified: Wed, 06 Feb 2019 14:36:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5695398e94db0a265456755c4ff0f08bf23346f111db69888f7fde49d0d0e9`  
		Last Modified: Sat, 09 Feb 2019 11:39:19 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f3d304db61ca5341b84f861610a4b4eaab72c6b5bf4341ce74d799ec77863`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb3e808d52d11a38d64adcbb8209f7c464e2b3f0b537ea7303da0f8f4f5b0aa`  
		Last Modified: Sat, 09 Feb 2019 11:39:28 GMT  
		Size: 15.8 MB (15794250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91099992b9f887b03704d480d44c4875cda6b160ec4ba04ee236130834ad0337`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42e601ea73c4eda11659ffa901bba61f29a1b8a5d2754d78c23b89e4ce885a5`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 71.6 KB (71641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741bf5e88a6fa20ee7757413378f613221009f0c0df478581f16fa6b8e402f2`  
		Last Modified: Sat, 09 Feb 2019 12:25:22 GMT  
		Size: 27.2 MB (27160292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13096ff0962a182b9ded6584aac19625797ac02b4ea624c9ab811534c7baa2a1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6447f28b3dff16ddecbb5a9ab7c108cdd6b16126884a76778f28d4faeb0a69`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 1.5 MB (1491272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11af9fe1bb878830ee8e87828fd0345276bce10242b4f19781e75b38ce148b51`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 489.4 KB (489396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d53539d8f4ddda8adf55a2c84797e57fc3cefb8f46b8ea40d3410b5ad99b1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bd59f588c7db463a504ff5107768f2903bd01764ff1d54169d0776ec52533b`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.8.4`

**does not exist** (yet?)

## `composer:latest`

```console
$ docker pull composer@sha256:f749604717d3b95fda063a0774980571f3626f362871357ddf2e802c4aaee86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `composer:latest` - linux; amd64

```console
$ docker pull composer@sha256:28dd22347f90cd5e729b0f29c08fe5a96ee998208db5e30f505cf1a6c0f3bfa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61231774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e976bea85041d8846a907f9a6a644af13e5e863bc4a95506de1f980c9ef4d8`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Feb 2019 21:20:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Feb 2019 21:20:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Feb 2019 21:20:10 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:20:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:20:14 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:20:18 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:20:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 02:25:38 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:25:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 02:25:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 02:25:39 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 03:56:46 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 03:56:47 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 03:56:59 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 03:56:59 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 03:57:00 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 03:57:01 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 03:57:01 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 03:57:02 GMT
WORKDIR /app
# Sat, 09 Feb 2019 03:57:02 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 03:57:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1f380f08e5c95b99e40b71c50050f887355b25216ef7aa69e4800316e56c0`  
		Last Modified: Tue, 05 Feb 2019 23:39:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8229df1e1058bbacb314c1ff1b2c74bd1d302aa533711da7d363b08a082166`  
		Last Modified: Sat, 09 Feb 2019 03:37:22 GMT  
		Size: 12.0 MB (11986353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225f5b49904c9d491ab08e72318362ce9c9c439a2837f2cdaa185f1de61b007c`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48d1762e413dfb33e9d9ae94f1c29d847859e792fa52162b7cb38e472b0052`  
		Last Modified: Sat, 09 Feb 2019 03:37:25 GMT  
		Size: 16.1 MB (16114078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033234594da1ce42a856740a64a833e4633ca662e9e7914cc898d77a5aa65d9e`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983c171dbf8c6a9f0b17747ce3f8cff19c161099f942b239dc5a70b66781cf1d`  
		Last Modified: Sat, 09 Feb 2019 03:37:21 GMT  
		Size: 71.8 KB (71836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4136c3207d2f3f1d2ce05cff00fce60a2a182f1d8b282d0cd7c9c49c157fdb`  
		Last Modified: Sat, 09 Feb 2019 03:57:24 GMT  
		Size: 27.5 MB (27483609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bce1b1da649af197cb3c16d6e7ce78488ed5d1ed387383bfabb89ab2d6f0a`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b056504afb6467bb1c940683576b626e17d31a56b55ac9ff9b9369e4f7101`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 1.5 MB (1517168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38ae947c1aa589355e5a48fd872ac02920627f535982e09429e834f828e8940`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 489.4 KB (489366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d767410e7d31c6d7df89523c5a59d3ad7143f6d55a2655954bf77716bf098132`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce5c5a24bb60556c9ff76f1e3077151e0a4d5f671a1b1ec07aa03b9274a7a13`  
		Last Modified: Sat, 09 Feb 2019 03:57:16 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; arm variant v6

```console
$ docker pull composer@sha256:657ddb415975d35f73cd1133307e26d580ab99c9afcd7ef4775ac016290bb8e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59193809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab602e40270769209eaed9b70a375c618a996401ad5e435aae5f3436a343150d`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:24:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:24:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:24:30 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:14:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:14:46 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:14:52 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:14:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:18:06 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:18:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:18:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:18:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:08:53 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 10:08:55 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 10:09:14 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 10:09:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 10:09:15 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 10:09:17 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 10:09:17 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 10:09:18 GMT
WORKDIR /app
# Sat, 09 Feb 2019 10:09:18 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 10:09:19 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66176624f8585d27e168038f877a3f5411e3960de1e8f1378d0d5e5e695394b`  
		Last Modified: Wed, 06 Feb 2019 10:21:36 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7697509bb3132b52e6a065279111a4336b17207cd0729ba9b9b70cdbf789271e`  
		Last Modified: Sat, 09 Feb 2019 09:48:48 GMT  
		Size: 12.0 MB (11986382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fae9b1c109124de4bfb41aab147e19daa6660e1f4ba853c701815b6d26858`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c764f98343905040035ee486879ebc8bad84fddcb3df8ea2c4b3d326a81aa36`  
		Last Modified: Sat, 09 Feb 2019 09:48:51 GMT  
		Size: 15.1 MB (15087277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cc900111e9ab08144c5db2279263dda0ca1f82969f44ef902f280fdf816e0`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837b4601598c473d1f87ed2701a606ecb9fd15686e8dd5ef7aaad0458393ca6`  
		Last Modified: Sat, 09 Feb 2019 09:48:45 GMT  
		Size: 71.4 KB (71385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80ab74e73829770b43d84d9dcd53fe84b20cab3a683c58e7da971228e1df38`  
		Last Modified: Sat, 09 Feb 2019 10:09:52 GMT  
		Size: 26.6 MB (26618320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6bb11fd78d8a4e9bfdc0f11967f7d0415645cac67d74b28a41aa8942a6ce2`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b5eca2459fcc9b968b8cc7aa5ca6c01617832aecff7910b47c9249e75ba5c`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 1.5 MB (1474589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8422f659c6d866dae1a767c83234d1f36b8bc97a233f4b0e7aa09b59f2d48ac`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 489.4 KB (489398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74716af879dce65bc74de204ab07c628d8b6606622572d3c32f904b7ec08ebe6`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c257ef3e01ef5619f7e4339fd67eedd220c94ecdf5a703b91541d0d1f07b447`  
		Last Modified: Sat, 09 Feb 2019 10:09:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:4e3656e01457a83d375b6e2005997b581c38d30e36d3f02c7227c2b537cc5155
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58578128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e9429a1c68df77bd02b3dd4cb67dd02f8bfd202c3f3ab2f373fc0760b80b21`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 13:45:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:45:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:45:13 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:37:03 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:37:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:37:05 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:37:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:37:15 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:47:24 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:47:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:47:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:47:29 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 14:06:11 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 14:06:13 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 14:06:35 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 14:06:35 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 14:06:36 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 14:06:38 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 14:06:41 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 14:06:41 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 14:06:43 GMT
WORKDIR /app
# Sat, 09 Feb 2019 14:06:44 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 14:06:44 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1515c42bace64618b2d8e97b39653c928c26cbdc061b83bbd17d2063d85847d`  
		Last Modified: Wed, 06 Feb 2019 17:25:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6819919b542fa7d2b367754abd068b89b075e96c7de2578bb9c9c4663e1227f`  
		Last Modified: Sat, 09 Feb 2019 13:45:54 GMT  
		Size: 12.0 MB (11986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c968a37074e1bac1f5701a4097fbcb6798cf5930f55f86e53a29b5e1214269f`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d860e3cbdefbb6a39ec3d3df8418293aac82599201de0f0fa4ed265dbaa2ed8`  
		Last Modified: Sat, 09 Feb 2019 13:46:00 GMT  
		Size: 14.9 MB (14936661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b805a928ebb076b4dcb93e75f928290cbd38ef5c0ea26bb3f90181a2772d211b`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ef5dbbd1dbbe102d18b5ef6c54740ba8b4f9ad4abfff987f1e33b784cc27b6`  
		Last Modified: Sat, 09 Feb 2019 13:45:52 GMT  
		Size: 70.9 KB (70873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5a9b714fcc1d3953f0252908691bd17d5355d64786f1bbdb14a0f1c8334f2`  
		Last Modified: Sat, 09 Feb 2019 14:07:26 GMT  
		Size: 26.2 MB (26236664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2b2bf73f241a123461e84ebb9488b4fed851d7de51286bc1ce518fa5d08ece`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237b447254a25523a33842593e4d5253171c94642b212083852df7b1fcabb780`  
		Last Modified: Sat, 09 Feb 2019 14:07:14 GMT  
		Size: 1.5 MB (1479073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ebdf3c7e2d20dd7e612fada9c7fa27aacd3c3de5c3f072ebcb4b01ebfc90fb`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 489.4 KB (489366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1375558319162532e9fd4b481a3107d6a764546b80f34bd8b50575b3100f6fee`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3b526c0e95a8151308f9a0405a4b8379c62761fb9e092e2fec75f6057cc588`  
		Last Modified: Sat, 09 Feb 2019 14:07:13 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; 386

```console
$ docker pull composer@sha256:62a438a260358aec5f75985d25d3b3cf4ad5c2fea386bfd6ddd07f58fe9ad94d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63462333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df42d6e25d05ec5049ae1cb980cb24ceebca10331c515107661393e9e1b51b7`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 15:01:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 15:01:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 15:01:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 15:01:12 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:41:33 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:41:39 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:41:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:47:08 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:47:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:47:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:47:09 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:17:09 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 15:17:10 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 15:17:22 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 15:17:22 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 15:17:24 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 15:17:24 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 15:17:24 GMT
WORKDIR /app
# Sat, 09 Feb 2019 15:17:24 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 15:17:24 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed9844383f8707ed2d7a91112083631ad565fbc4c0df4bca97764f154e4216a`  
		Last Modified: Wed, 06 Feb 2019 20:21:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af16d1972063b8994c6870ecd653582057bf45ed871e04032cd2a02d36ac4a3`  
		Last Modified: Sat, 09 Feb 2019 14:01:04 GMT  
		Size: 12.0 MB (11986384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c8ec139c48369737822eb5159dc1f15d8dc1ea3cc033e4344e462df4906386`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d3d9c325e83657444f643698cf6aac954dfc55de533695670b589fdd277c0`  
		Last Modified: Sat, 09 Feb 2019 14:01:08 GMT  
		Size: 16.6 MB (16569899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042f4b235754779ed160e9e3ae7e3b93f1110d55b18b1ef89680dceb86e80835`  
		Last Modified: Sat, 09 Feb 2019 14:01:03 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b648e23da371cadc80723eeb99e21fe46f44ad81016cd5646655acdc7a7212`  
		Last Modified: Sat, 09 Feb 2019 14:01:02 GMT  
		Size: 71.0 KB (70998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd6066b09944c0519a06ae329852245e82826dac449400e0effa0ff31be5a6f`  
		Last Modified: Sat, 09 Feb 2019 15:17:46 GMT  
		Size: 29.1 MB (29102893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224957e1116d2de3326c20b408ed75234bd8e20aae37098eaada858bc8ec9cfa`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dcd5aa8d2d1d092d254f2e7abf8fa35c5d8efbaa1161fade75580997382389`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 1.5 MB (1512802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12ad13e51b4e622ddba0f2f8b5828d7a26aa45dc911b71e8674123a4835effc`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 489.4 KB (489354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d703794850c79e6bfbd1dbddab80e6b1ab82aa564830b6d7c97c2a3b95b27a60`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1123ab179c0190a92b407cba8077df378fec03b99505d433dd677836b07d8dea`  
		Last Modified: Sat, 09 Feb 2019 15:17:38 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; ppc64le

```console
$ docker pull composer@sha256:02807c95947c0199a2a7d5680b397bf090416e5cb0294d2fa86bc11b26f3806c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60515717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b87db6fc873cab016d0db57d16bc0e150c2d1f0764bcb1d7d49064e3997248`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:26:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:26:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:26:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:26:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:30:07 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:30:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:30:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:30:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:30:28 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		libressl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:34:03 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:34:09 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:34:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:34:18 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 12:23:14 GMT
RUN apk --no-cache add --virtual .composer-rundeps git subversion openssh mercurial tini bash patch make zip unzip
# Sat, 09 Feb 2019 12:23:21 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 09 Feb 2019 12:23:45 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 09 Feb 2019 12:23:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 09 Feb 2019 12:23:54 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 09 Feb 2019 12:23:59 GMT
ENV COMPOSER_VERSION=1.8.3
# Sat, 09 Feb 2019 12:24:15 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Sat, 09 Feb 2019 12:24:19 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Sat, 09 Feb 2019 12:24:28 GMT
WORKDIR /app
# Sat, 09 Feb 2019 12:24:32 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 09 Feb 2019 12:24:37 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72767b73c467a60d30e6d180584997ea1be506c9126cea9c00346bfa9cdb14b`  
		Last Modified: Wed, 06 Feb 2019 14:36:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5695398e94db0a265456755c4ff0f08bf23346f111db69888f7fde49d0d0e9`  
		Last Modified: Sat, 09 Feb 2019 11:39:19 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f3d304db61ca5341b84f861610a4b4eaab72c6b5bf4341ce74d799ec77863`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb3e808d52d11a38d64adcbb8209f7c464e2b3f0b537ea7303da0f8f4f5b0aa`  
		Last Modified: Sat, 09 Feb 2019 11:39:28 GMT  
		Size: 15.8 MB (15794250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91099992b9f887b03704d480d44c4875cda6b160ec4ba04ee236130834ad0337`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42e601ea73c4eda11659ffa901bba61f29a1b8a5d2754d78c23b89e4ce885a5`  
		Last Modified: Sat, 09 Feb 2019 11:39:18 GMT  
		Size: 71.6 KB (71641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1741bf5e88a6fa20ee7757413378f613221009f0c0df478581f16fa6b8e402f2`  
		Last Modified: Sat, 09 Feb 2019 12:25:22 GMT  
		Size: 27.2 MB (27160292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13096ff0962a182b9ded6584aac19625797ac02b4ea624c9ab811534c7baa2a1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6447f28b3dff16ddecbb5a9ab7c108cdd6b16126884a76778f28d4faeb0a69`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 1.5 MB (1491272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11af9fe1bb878830ee8e87828fd0345276bce10242b4f19781e75b38ce148b51`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 489.4 KB (489396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d53539d8f4ddda8adf55a2c84797e57fc3cefb8f46b8ea40d3410b5ad99b1`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bd59f588c7db463a504ff5107768f2903bd01764ff1d54169d0776ec52533b`  
		Last Modified: Sat, 09 Feb 2019 12:25:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
