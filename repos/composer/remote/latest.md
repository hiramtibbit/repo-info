## `composer:latest`

```console
$ docker pull composer@sha256:12835c676f1fa03ea7fd93209d37a6011ce0d2d3f355efaba6a145a49de9e3e9
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
$ docker pull composer@sha256:81a69eec0816eb5ba15ce5b736bfee904ac77156aa391cd345df03eeb30d220a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59942498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa169f1046e07df26e75c60764522e28d242d9aa5f42dc30b0b2bd0f6e6fef0f`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Wed, 12 Sep 2018 01:27:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 02:56:24 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 02:56:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 02:56:24 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 02:56:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 02:56:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:01:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:01:20 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:01:21 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 03:01:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:01:21 GMT
CMD ["php" "-a"]
# Sat, 15 Sep 2018 07:17:28 GMT
RUN apk --no-cache add git subversion openssh mercurial tini bash patch
# Sat, 15 Sep 2018 07:17:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 15 Sep 2018 07:17:53 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev  && docker-php-ext-install zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 15 Sep 2018 07:17:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 15 Sep 2018 07:17:53 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 15 Sep 2018 07:17:53 GMT
ENV COMPOSER_VERSION=1.7.2
# Sat, 15 Sep 2018 07:17:55 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Sat, 15 Sep 2018 07:17:55 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Sat, 15 Sep 2018 07:17:55 GMT
WORKDIR /app
# Sat, 15 Sep 2018 07:17:55 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 07:17:55 GMT
CMD ["composer"]
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
	-	`sha256:ea820e270bcb362f3af2363d3038c3cf5bf57b3997dd27e4f5dcaf9ccc5e277f`  
		Last Modified: Sat, 15 Sep 2018 06:36:23 GMT  
		Size: 12.2 MB (12180242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a216566b36ab6d1a9e6b6d216b89fbcaecf01e3415059258f4986ebcc51ba4f`  
		Last Modified: Sat, 15 Sep 2018 06:36:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3572a6bb87388499f20c487e6f9211693e094593dfa897c4ea1edef26332970`  
		Last Modified: Sat, 15 Sep 2018 06:36:26 GMT  
		Size: 15.8 MB (15758034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841468e0531ef3428ec26358541e112354926da378502aa6b73fc7f2e454712b`  
		Last Modified: Sat, 15 Sep 2018 06:36:22 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c3f6ef177e3ef8dc8f20276f3b446f55a2641fdfc2ec0f5bd53828202acd22`  
		Last Modified: Sat, 15 Sep 2018 06:36:22 GMT  
		Size: 70.8 KB (70839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48c2e892ad1a5643f84446bafd23934e4bcae743ca4dcfc0809fc8d1873479a`  
		Last Modified: Sat, 15 Sep 2018 07:18:36 GMT  
		Size: 26.6 MB (26631347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6274de18a60051e3fc9a3c5bfbba2167583abcc1bcd2440c1830f8502a4d1d77`  
		Last Modified: Sat, 15 Sep 2018 07:18:30 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33607de8e57073cdc5aa44b5b3e776368482b627b3d3e84556cf11a81d935a20`  
		Last Modified: Sat, 15 Sep 2018 07:18:30 GMT  
		Size: 1.5 MB (1451883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5925fcb676ac6f91bf79954e7b841226dbd2c39e9aa18e10b6ea3a78baf0955a`  
		Last Modified: Sat, 15 Sep 2018 07:18:30 GMT  
		Size: 477.1 KB (477092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deb1f7501ba88d29773c418dbc289e9e9e799edc95af7675ce0101ea499ff7b`  
		Last Modified: Sat, 15 Sep 2018 07:18:30 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25630525e4db11cfce93c9280e675042047c2d4b9daff6cc4936625596be231`  
		Last Modified: Sat, 15 Sep 2018 07:18:30 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; arm variant v6

```console
$ docker pull composer@sha256:fc86bbe8ae5c743f2cf826bc3d148eebb421f56d12a7052ddf7303bb198fe083
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58200943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ceef8e4cc6a1b5bfb9c009db4b54b46516d02bf53dd181f051a3fb284e87a12`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Wed, 12 Sep 2018 08:06:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 08:43:51 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 08:43:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 08:43:52 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 08:43:58 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 08:43:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 08:46:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 08:47:00 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 15 Sep 2018 08:47:01 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 08:47:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 08:47:02 GMT
CMD ["php" "-a"]
# Sat, 15 Sep 2018 10:36:23 GMT
RUN apk --no-cache add git subversion openssh mercurial tini bash patch
# Sat, 15 Sep 2018 10:36:24 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 15 Sep 2018 10:37:03 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev  && docker-php-ext-install zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 15 Sep 2018 10:37:04 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 15 Sep 2018 10:37:04 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 15 Sep 2018 10:37:04 GMT
ENV COMPOSER_VERSION=1.7.2
# Sat, 15 Sep 2018 10:37:06 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Sat, 15 Sep 2018 10:37:06 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Sat, 15 Sep 2018 10:37:07 GMT
WORKDIR /app
# Sat, 15 Sep 2018 10:37:07 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:37:07 GMT
CMD ["composer"]
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
	-	`sha256:cc03df66447c9a462c7cbe07a3e84e030b494c968e43eaf12547ac8314fb54a8`  
		Last Modified: Sat, 15 Sep 2018 10:01:28 GMT  
		Size: 12.2 MB (12180270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5d1670c75cca29012a2e60304633674b925bf04bf99a15f60c35565a91b131`  
		Last Modified: Sat, 15 Sep 2018 10:01:26 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76abe4bf49a324e1e8857f2024fdf0dc6d694713b5d12c66e46c6d3f27b350ea`  
		Last Modified: Sat, 15 Sep 2018 10:01:32 GMT  
		Size: 14.7 MB (14738356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f14f5476adb20ddb4bc8a695321077ea948892e44fad89ebc457ce16b4a38ef`  
		Last Modified: Sat, 15 Sep 2018 10:01:26 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb85f0ffe43839bcaffa32fc79ab9c1497968545dd895e1b9232f0d98910f330`  
		Last Modified: Sat, 15 Sep 2018 10:01:26 GMT  
		Size: 70.3 KB (70348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51834feb8fdd28f377a93352744650f42a4c12b7a1a5b7ed9b544473bae2f7f9`  
		Last Modified: Sat, 15 Sep 2018 10:37:46 GMT  
		Size: 26.0 MB (26023373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd534fb521dd2ce1109fc0ddee44a00dd68959b29a20fec2074830f9cbbb4a8`  
		Last Modified: Sat, 15 Sep 2018 10:37:37 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf88421d34df9261533cb295f2f57a02d522a3119408e689a4a1372238ce5ed2`  
		Last Modified: Sat, 15 Sep 2018 10:37:37 GMT  
		Size: 1.4 MB (1418740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a509cdfcb58342b96b2be38a9b2474af743974357d6bcc7e1a1adb6dabdc9e2`  
		Last Modified: Sat, 15 Sep 2018 10:37:37 GMT  
		Size: 477.1 KB (477096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38e6fc16e92f708665f9a1e393174d9f6241a1905f993bc42f73d375238535d`  
		Last Modified: Sat, 15 Sep 2018 10:37:37 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a35b530a353fab94c342efe1a2256325e53db9f536d99944a6bb66df079ddf`  
		Last Modified: Sat, 15 Sep 2018 10:37:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:3eda838215cdc3f52ed8d22fd31840744b277a38c9beee3f9347b1be46391c33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57564274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef715f0fc1b3c056b79974da1a2d32ce067fb6a8a0cc7545061987ed37d2487`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Fri, 14 Sep 2018 21:26:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 14 Sep 2018 21:26:31 GMT
ENV PHP_VERSION=7.2.9
# Fri, 14 Sep 2018 21:26:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Fri, 14 Sep 2018 21:26:32 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Fri, 14 Sep 2018 21:26:44 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 14 Sep 2018 21:26:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 14 Sep 2018 21:33:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 14 Sep 2018 21:33:55 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Fri, 14 Sep 2018 21:33:57 GMT
RUN docker-php-ext-enable sodium
# Fri, 14 Sep 2018 21:33:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 14 Sep 2018 21:33:58 GMT
CMD ["php" "-a"]
# Sat, 15 Sep 2018 03:59:54 GMT
RUN apk --no-cache add git subversion openssh mercurial tini bash patch
# Sat, 15 Sep 2018 03:59:57 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 15 Sep 2018 04:00:47 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev  && docker-php-ext-install zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 15 Sep 2018 04:00:48 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 15 Sep 2018 04:00:48 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 15 Sep 2018 04:00:49 GMT
ENV COMPOSER_VERSION=1.7.2
# Sat, 15 Sep 2018 04:00:54 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Sat, 15 Sep 2018 04:00:55 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Sat, 15 Sep 2018 04:00:56 GMT
WORKDIR /app
# Sat, 15 Sep 2018 04:00:57 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 04:00:58 GMT
CMD ["composer"]
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
	-	`sha256:ed10bd84c9dd85578fc3c5b4b5d9a471697455b8d48857f7a6f1e86793669062`  
		Last Modified: Sat, 15 Sep 2018 01:41:14 GMT  
		Size: 12.1 MB (12146111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d4245f4795794e1738a99de098436942c2a12d33668dda3cd11561b586b45f`  
		Last Modified: Sat, 15 Sep 2018 01:41:12 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d8dae3f675258ea3fefae85c0e8c33418bb67ffac878f862888d9be64a4014`  
		Last Modified: Sat, 15 Sep 2018 01:41:18 GMT  
		Size: 14.6 MB (14618477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcef121679b9d9eb080a2d97826b2c05852ebda8cf3d26c97e842219cd6ff6a`  
		Last Modified: Sat, 15 Sep 2018 01:41:13 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8bbb5fa32c7c4ed3efdbfa41d90bbc0f0208f743a30f3412b6ee202a4e72d1`  
		Last Modified: Sat, 15 Sep 2018 01:41:12 GMT  
		Size: 69.8 KB (69759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60168cd4cc39ab7410845f739885de0a1158841a5029acac99bd2aa599794fbc`  
		Last Modified: Sat, 15 Sep 2018 04:02:15 GMT  
		Size: 25.6 MB (25635032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb32073faf9b53b19e519d7f1e9ade5879e2c43bbba54c7e08c47dbcf833b3c1`  
		Last Modified: Sat, 15 Sep 2018 04:02:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557b0ef9c067ef2bb0d4a228130e65870e76e275b0faf2b55dfb8fb9d99a2c77`  
		Last Modified: Sat, 15 Sep 2018 04:02:03 GMT  
		Size: 1.4 MB (1412224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e92c235540fce01aff9f6c4d8894d18fe2095d7674e3d9d60a482679a703c5`  
		Last Modified: Sat, 15 Sep 2018 04:02:04 GMT  
		Size: 477.1 KB (477095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1967c587f8291a038e403500d4244550b06ce44d5e0ffb8e7f7d0d87882b6cf`  
		Last Modified: Sat, 15 Sep 2018 04:02:04 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496d38696c7f7c93c10ce277e23c8434378a1d99e423ce9efbbc0613e7348528`  
		Last Modified: Sat, 15 Sep 2018 04:02:03 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; 386

```console
$ docker pull composer@sha256:db63c6df86f20f96cc36f1538e7dab6dc73b625cb47a08fdb531cc5d3f38e4b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62110950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c809738405ea52e7d599186ee2d1c7b1c7ed5a4598ff32c771cecb7dd048689`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Wed, 12 Sep 2018 13:19:29 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 12 Sep 2018 13:19:29 GMT
ENV PHP_VERSION=7.2.9
# Wed, 12 Sep 2018 13:19:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 12 Sep 2018 13:19:29 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 12 Sep 2018 13:19:34 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 12 Sep 2018 13:19:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 12 Sep 2018 13:26:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 12 Sep 2018 13:26:01 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Wed, 12 Sep 2018 13:26:02 GMT
RUN docker-php-ext-enable sodium
# Wed, 12 Sep 2018 13:26:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 12 Sep 2018 13:26:02 GMT
CMD ["php" "-a"]
# Wed, 12 Sep 2018 19:02:32 GMT
RUN apk --no-cache add git subversion openssh mercurial tini bash patch
# Wed, 12 Sep 2018 19:02:33 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Wed, 12 Sep 2018 19:02:56 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev  && docker-php-ext-install zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Wed, 12 Sep 2018 19:02:56 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 12 Sep 2018 19:02:56 GMT
ENV COMPOSER_HOME=/tmp
# Wed, 12 Sep 2018 19:02:57 GMT
ENV COMPOSER_VERSION=1.7.2
# Wed, 12 Sep 2018 19:02:58 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Wed, 12 Sep 2018 19:02:58 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Wed, 12 Sep 2018 19:02:59 GMT
WORKDIR /app
# Wed, 12 Sep 2018 19:02:59 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 19:02:59 GMT
CMD ["composer"]
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
	-	`sha256:5214f845bdddd603112c56c482108279eb9aca787dc2ffb1d68082057c1682ff`  
		Last Modified: Wed, 12 Sep 2018 15:38:24 GMT  
		Size: 12.1 MB (12146100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7de2fa768e4c781eab3e03a8c97a851ba5f54f8faf68631623d34f6e6691e42`  
		Last Modified: Wed, 12 Sep 2018 15:38:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76c71295fb5660de4b0002f634f6e8580b08e91ccb9bafed09cb8d50f2a42bc`  
		Last Modified: Wed, 12 Sep 2018 15:38:28 GMT  
		Size: 16.2 MB (16208303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33648a44500f78b3eabe4065c39665773df239206ae53c310438bc1534ac05ec`  
		Last Modified: Wed, 12 Sep 2018 15:38:23 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ab53a5cf92764a429a471a185d7aa2379e729765a077ade156f8ed3d56ce6`  
		Last Modified: Wed, 12 Sep 2018 15:38:23 GMT  
		Size: 69.9 KB (69939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebdc0bf0d97addfe1c4cbf515b61c51917d09e91601fb9e5f9959e7b67f88d6`  
		Last Modified: Wed, 12 Sep 2018 19:03:39 GMT  
		Size: 28.2 MB (28232348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278a7f20edabc5d8be5aebece94c48f909a8fb5bd07691631cdd85e007f2ae87`  
		Last Modified: Wed, 12 Sep 2018 19:03:31 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25facfa30badc944bea0d8947d3a831e7aa29669494e609afa2ac1f185fc20bf`  
		Last Modified: Wed, 12 Sep 2018 19:03:31 GMT  
		Size: 1.4 MB (1448390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3473ac1b1ab79103795f9aac95bfa6136fe16c3e3a36fd8e00c129aaccd6f5e3`  
		Last Modified: Wed, 12 Sep 2018 19:03:31 GMT  
		Size: 477.1 KB (477096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aae9338be80faddbeadd51375e0f419440598080592223e5995cde0ab795683`  
		Last Modified: Wed, 12 Sep 2018 19:03:31 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0fa83a08cf191ee84711a62efa7827ed236ea13d0146e35d6ffb851121bb90`  
		Last Modified: Wed, 12 Sep 2018 19:03:31 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; ppc64le

```console
$ docker pull composer@sha256:b5a039d768a4b5167ea86caecbbabe1c1442c26ab210a858f59a75987dd9828a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59465008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bb04c88f7cb6b48a90074d4a0831860cdf6a7fc47da00e8d963f084ed7d50b`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Wed, 12 Sep 2018 11:35:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 10:44:40 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 10:44:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 10:44:42 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 10:44:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 10:44:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:48:29 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 10:48:31 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:48:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 10:48:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 10:48:35 GMT
CMD ["php" "-a"]
# Sat, 15 Sep 2018 14:27:49 GMT
RUN apk --no-cache add git subversion openssh mercurial tini bash patch
# Sat, 15 Sep 2018 14:27:52 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Sat, 15 Sep 2018 14:28:36 GMT
RUN apk add --no-cache --virtual .build-deps zlib-dev  && docker-php-ext-install zip  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions     | tr ',' '\n'     | sort -u     | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps
# Sat, 15 Sep 2018 14:28:39 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 15 Sep 2018 14:28:40 GMT
ENV COMPOSER_HOME=/tmp
# Sat, 15 Sep 2018 14:28:43 GMT
ENV COMPOSER_VERSION=1.7.2
# Sat, 15 Sep 2018 14:28:48 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Sat, 15 Sep 2018 14:28:49 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Sat, 15 Sep 2018 14:28:50 GMT
WORKDIR /app
# Sat, 15 Sep 2018 14:28:51 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 14:28:51 GMT
CMD ["composer"]
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
	-	`sha256:da44e0375b525d8d6cf93ea2b0571ffa483e8ffccfae13f60d2d73412b604e53`  
		Last Modified: Sat, 15 Sep 2018 13:29:17 GMT  
		Size: 12.2 MB (12180280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90717e5d871c89a79002b33fe3b9ae44220c5c2103966f08885c9a7fdbfe078e`  
		Last Modified: Sat, 15 Sep 2018 13:29:15 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b866586038f81b9c6ba07f4c6bf3592dbe6275d66f2a91031277cfd5e5987f`  
		Last Modified: Sat, 15 Sep 2018 13:29:22 GMT  
		Size: 15.4 MB (15439968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec8e83eb8cc9e4830a894b80eb2a739b648b23bb31dcdb639bc6d29e6307b`  
		Last Modified: Sat, 15 Sep 2018 13:29:15 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c67ebe8319212f4d392387103e7733abc8d85fd1c9ccc0044704f203eb6a8a`  
		Last Modified: Sat, 15 Sep 2018 13:29:15 GMT  
		Size: 70.7 KB (70661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccabbbd6009a2f01793ec971d355c26f175609f925898a7987141b041da4565`  
		Last Modified: Sat, 15 Sep 2018 14:31:13 GMT  
		Size: 26.5 MB (26525491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77fb91ab6ecfd296c5a37aa58565880c64928c69fecad54c549cb8ad67d146b`  
		Last Modified: Sat, 15 Sep 2018 14:31:02 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e18c4c166ef14fe5e6b2b08b5fb7d6248be367c5a543a0d6c6d3da084055a15`  
		Last Modified: Sat, 15 Sep 2018 14:31:04 GMT  
		Size: 1.4 MB (1423230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7686b501684c55bf4cb12c76d7be0e3133c49aa1b122142a6cfb191aa60aebb1`  
		Last Modified: Sat, 15 Sep 2018 14:31:01 GMT  
		Size: 477.1 KB (477093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2a706de4aa89808f5fe41e409a85f381d6178a8e5d6eb9cc5cc55f56aa696f`  
		Last Modified: Sat, 15 Sep 2018 14:31:01 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787c8f875e5d2391065f39ab28bc2b15b6c83b3bc3b463f8ac017e4d8fabf619`  
		Last Modified: Sat, 15 Sep 2018 14:31:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
