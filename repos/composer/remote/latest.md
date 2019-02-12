## `composer:latest`

```console
$ docker pull composer@sha256:3526149d2a5e8cee22999895f4ab3df26df2a930a2804d9a59ee3fccadd3c3cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

```console
$ docker pull composer@sha256:83dc6a83eb6242aa3b6c7c8bc577d414ed99f741298323b08b148ab1caa187c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61232349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803583e27ea7a7b232b4ca4420a83d2ec15da0e2ad3a9307dc2d5ceb229dfa28`
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
# Tue, 12 Feb 2019 00:21:19 GMT
ENV COMPOSER_VERSION=1.8.4
# Tue, 12 Feb 2019 00:21:20 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/cb19f2aa3aeaa2006c0cd69a7ef011eb31463067/web/installer  && php -r "     \$signature = '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5';     \$hash = hash('sha384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php
# Tue, 12 Feb 2019 00:21:20 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Tue, 12 Feb 2019 00:21:21 GMT
WORKDIR /app
# Tue, 12 Feb 2019 00:21:21 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:21:21 GMT
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
	-	`sha256:b5ed7e23b7a51b4bb04086929e6aa39fd86c682c7d58a6ba78f54cfa0859373c`  
		Last Modified: Tue, 12 Feb 2019 00:21:36 GMT  
		Size: 489.9 KB (489942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96115591ab1b9edfc92590d0efcc05dea73c6bd1c571cba5c2dda234214785f`  
		Last Modified: Tue, 12 Feb 2019 00:21:32 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70242fa8648118cd0097a56f6f48156260f729b003b7ba5a8492282bfc57162`  
		Last Modified: Tue, 12 Feb 2019 00:21:32 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
