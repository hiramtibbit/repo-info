## `composer:latest`

```console
$ docker pull composer@sha256:f3c4d2d2f19211ca89c81b0afb6b0a9589aa8074bee702662b172b3b0a43d710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `composer:latest` - linux; amd64

```console
$ docker pull composer@sha256:9280e4d4434145357c1251c2f1777eb07100c47421a9a8427070e224df75aeb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61182494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1e08c5501290368f42a08b8e79fc7bd7e57791c42a6eb3df8f1a2e583e2742`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:04:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 03:04:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 03:04:45 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 03:04:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 03:04:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 03:04:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 03:04:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 03:04:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 03:04:48 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 31 May 2019 23:40:19 GMT
ENV PHP_VERSION=7.3.6
# Fri, 31 May 2019 23:40:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Fri, 31 May 2019 23:40:19 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Fri, 31 May 2019 23:40:22 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Fri, 31 May 2019 23:40:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 31 May 2019 23:50:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 00:20:21 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:20:22 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 00:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 00:20:23 GMT
CMD ["php" "-a"]
# Thu, 13 Jun 2019 00:50:13 GMT
RUN apk add --no-cache --virtual .composer-rundeps git subversion openssh-client mercurial tini bash patch make zip unzip coreutils  && apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip opcache  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --no-cache --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps  && printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\nopcache.enable_cli=1\n" > $PHP_INI_DIR/php-cli.ini
# Thu, 13 Jun 2019 00:50:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 13 Jun 2019 00:50:13 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 13 Jun 2019 00:50:13 GMT
ENV COMPOSER_VERSION=1.8.6
# Thu, 13 Jun 2019 00:50:15 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/cb19f2aa3aeaa2006c0cd69a7ef011eb31463067/web/installer  && php -r "     \$signature = '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5';     \$hash = hash('sha384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {       unlink('/tmp/installer.php');       echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;       exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php  && find /tmp -type d -exec chmod -v 1777 {} +
# Thu, 13 Jun 2019 00:50:15 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Thu, 13 Jun 2019 00:50:15 GMT
WORKDIR /app
# Thu, 13 Jun 2019 00:50:15 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 00:50:16 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7270d632124c8dabb3e1a1422cb5be11fd258bc4b112d4117d29780cc65fed4c`  
		Last Modified: Sat, 11 May 2019 04:11:49 GMT  
		Size: 1.4 MB (1437188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13605bac8660f61b690b20fbd38fa9e88b99f50a7ffc860a9fd4a16030ac9113`  
		Last Modified: Sat, 11 May 2019 04:11:49 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5ed3c35631399f4c4ee0510f76c329ef4ceedfb838d8548e5ad5a82beebece`  
		Last Modified: Sat, 11 May 2019 04:11:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afdd81f5e69d4ae047f740bc260335d3afa1e415e35ec6aebc6ab8ded6ec5ec`  
		Last Modified: Sat, 01 Jun 2019 04:29:26 GMT  
		Size: 12.0 MB (12008700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4794886df32f28f1ddc5b528a48364bac52d25985fbf5eab08b3bb22db36223`  
		Last Modified: Sat, 01 Jun 2019 04:29:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c0c36e4ad72150df7b42c3a818fe298b86bdca09cb61fc16a5aa48a1de821c`  
		Last Modified: Sat, 01 Jun 2019 04:29:29 GMT  
		Size: 16.1 MB (16079009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3648dace62c2504422eb326c4b82cd4ffc14d72034dd1206684e778823c3efe`  
		Last Modified: Thu, 13 Jun 2019 00:25:03 GMT  
		Size: 2.2 KB (2207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2e86f046f51ff096c332138d31e0b1edc009f124369f30b994008cbefcad28`  
		Last Modified: Thu, 13 Jun 2019 00:25:03 GMT  
		Size: 72.0 KB (71976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92178d8fbd90fff040e61f4b77c483e8b242d6f99262de4adc0dc8eea05bb47a`  
		Last Modified: Thu, 13 Jun 2019 00:50:38 GMT  
		Size: 28.3 MB (28332454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8887c4b6833c4efc36f8e58dab3de7aca90dfd8b2a6238bc7bb59427f5b1a4c0`  
		Last Modified: Thu, 13 Jun 2019 00:50:31 GMT  
		Size: 491.3 KB (491310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8d4820ee3d55c6c004a2c5b28d5eab654d5cef365e669c6d7669aa10b92f3`  
		Last Modified: Thu, 13 Jun 2019 00:50:31 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a65cd93401b8922cf0d19b1dbee7b4154890d1348e29bd842d4204d5aa304c`  
		Last Modified: Thu, 13 Jun 2019 00:50:31 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; arm variant v6

```console
$ docker pull composer@sha256:290eba0f4c7fd031dab6d8dd5c08c8716628140239729df1d7456c82a7a0a6e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58847354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413c21162ffcc2ad3c8771975641e1fcfb4a6d32488653ed28e114e41f69a709`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 08:06:02 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 08:06:04 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 08:06:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 08:06:05 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 08:06:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 08:06:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 08:06:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 08:06:07 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 31 May 2019 23:49:35 GMT
ENV PHP_VERSION=7.3.6
# Fri, 31 May 2019 23:49:35 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Fri, 31 May 2019 23:49:35 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Fri, 31 May 2019 23:49:39 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Fri, 31 May 2019 23:49:40 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 31 May 2019 23:53:15 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 01:07:18 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Thu, 13 Jun 2019 01:07:22 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 01:07:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 01:07:24 GMT
CMD ["php" "-a"]
# Thu, 13 Jun 2019 01:36:12 GMT
RUN apk add --no-cache --virtual .composer-rundeps git subversion openssh-client mercurial tini bash patch make zip unzip coreutils  && apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip opcache  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --no-cache --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps  && printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\nopcache.enable_cli=1\n" > $PHP_INI_DIR/php-cli.ini
# Thu, 13 Jun 2019 01:36:15 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 13 Jun 2019 01:36:16 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 13 Jun 2019 01:36:18 GMT
ENV COMPOSER_VERSION=1.8.6
# Thu, 13 Jun 2019 01:36:23 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/cb19f2aa3aeaa2006c0cd69a7ef011eb31463067/web/installer  && php -r "     \$signature = '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5';     \$hash = hash('sha384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {       unlink('/tmp/installer.php');       echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;       exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php  && find /tmp -type d -exec chmod -v 1777 {} +
# Thu, 13 Jun 2019 01:36:25 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Thu, 13 Jun 2019 01:36:25 GMT
WORKDIR /app
# Thu, 13 Jun 2019 01:36:26 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 01:36:27 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d9d1dbeac19280c3964daa9f19dc5176bc3a1f68a182c50a2828c61a7c0956`  
		Last Modified: Sat, 11 May 2019 08:42:31 GMT  
		Size: 1.4 MB (1382917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c333226d9b15dde04c8d0d6ca49e5993dbfc5ef7a9aba068c18804d666eab6e`  
		Last Modified: Sat, 11 May 2019 08:42:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e43ebfd6d6825d1a9fa88ded3dc046a3d7f3143e78919119999ee188ee528`  
		Last Modified: Sat, 11 May 2019 08:42:31 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62de03d88a8b8da7b009c07f524da952c4f4fdb93431cd5be7835be91b96ba`  
		Last Modified: Sat, 01 Jun 2019 01:04:21 GMT  
		Size: 12.0 MB (12008726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fddbae272f75ddcbc24096291078543323ca8eafacb72a85606d3c5f71445937`  
		Last Modified: Sat, 01 Jun 2019 01:04:20 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14054a5314a3c5eed338dd4b80ab8d24a67564b54b42f35fd229a4a51148dc9d`  
		Last Modified: Sat, 01 Jun 2019 01:04:26 GMT  
		Size: 14.9 MB (14864280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c78424af66c9d1f3277ce571a9e1926a6096bb34396a72dcdee03e381473d8`  
		Last Modified: Thu, 13 Jun 2019 01:12:01 GMT  
		Size: 2.2 KB (2207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d951b4fd6c0deb71a0265e08ccaf460f0796f4c00b38a0861fd807cb188597`  
		Last Modified: Thu, 13 Jun 2019 01:12:01 GMT  
		Size: 71.5 KB (71505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954310fa5dae37d74de4931cdcb881241b620d48c3146f4f261a2edae38be126`  
		Last Modified: Thu, 13 Jun 2019 01:37:32 GMT  
		Size: 27.5 MB (27480206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b039f788afb548a9191202bbecb543f5b1936ba73b270a9a7bcb4b313be6dd3`  
		Last Modified: Thu, 13 Jun 2019 01:37:17 GMT  
		Size: 491.4 KB (491360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be95939929d24b0946cc1c9c891e21a7889e0e0c93c37d07f166f9317d128d8`  
		Last Modified: Thu, 13 Jun 2019 01:37:17 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb735bf097f3e57a6321205f6d0dcbf964483a36eee01689a4369e636fd2aa7`  
		Last Modified: Thu, 13 Jun 2019 01:37:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; arm variant v7

```console
$ docker pull composer@sha256:2750237d1f08624a2c3a18058e3c3a61d8f01d8ae7e922ab9d07d18ba34e5e0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56086507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70b728256301d3b4b72160f930b2e6b2a179ecafccd110af1d2e6e9d1ec1572`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:29:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 12:29:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 12:29:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 12:29:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 12:29:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 12:29:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 12:29:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 12:29:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 12:29:21 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 01 Jun 2019 00:16:26 GMT
ENV PHP_VERSION=7.3.6
# Sat, 01 Jun 2019 00:16:26 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:16:27 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Sat, 01 Jun 2019 00:16:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 01 Jun 2019 00:16:31 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:20:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 03:19:01 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Thu, 13 Jun 2019 03:19:04 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 03:19:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 03:19:05 GMT
CMD ["php" "-a"]
# Thu, 13 Jun 2019 03:32:41 GMT
RUN apk add --no-cache --virtual .composer-rundeps git subversion openssh-client mercurial tini bash patch make zip unzip coreutils  && apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip opcache  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --no-cache --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps  && printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\nopcache.enable_cli=1\n" > $PHP_INI_DIR/php-cli.ini
# Thu, 13 Jun 2019 03:32:43 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 13 Jun 2019 03:32:43 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 13 Jun 2019 03:32:44 GMT
ENV COMPOSER_VERSION=1.8.6
# Thu, 13 Jun 2019 03:32:47 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/cb19f2aa3aeaa2006c0cd69a7ef011eb31463067/web/installer  && php -r "     \$signature = '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5';     \$hash = hash('sha384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {       unlink('/tmp/installer.php');       echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;       exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php  && find /tmp -type d -exec chmod -v 1777 {} +
# Thu, 13 Jun 2019 03:32:47 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Thu, 13 Jun 2019 03:32:48 GMT
WORKDIR /app
# Thu, 13 Jun 2019 03:32:49 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 03:32:49 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d155f61954409b6a14bf8848b56aabd95029cf4f2a893160c4152d228d54d89`  
		Last Modified: Sat, 11 May 2019 13:07:07 GMT  
		Size: 1.3 MB (1285862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a751981240934e3d6db04cb9c42cf9338b0693bcfc27d4aa372d40ebbdc61c1`  
		Last Modified: Sat, 11 May 2019 13:07:07 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4d65835cf797d271224e4ac0400015fe43ca2575d405541bd1b376d758a27b`  
		Last Modified: Sat, 11 May 2019 13:07:07 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be266ec0d483becd3bccea3066a1575c3975dc3f47b7566b0ab98acf405f867a`  
		Last Modified: Sat, 01 Jun 2019 01:54:28 GMT  
		Size: 12.0 MB (12008716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc5f115e15149e1fc2ddcaaad0b7f6b0d3afbec5e92125c8da9a82b4ef8af3f`  
		Last Modified: Sat, 01 Jun 2019 01:54:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b3b2d8347b6a6659b0298e1fbb291286e67ebf9db22342092dbc21ddf1038`  
		Last Modified: Sat, 01 Jun 2019 01:54:30 GMT  
		Size: 13.9 MB (13857735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861d03b01012bb20b99e10878b1cd2b207ba3c084c1b2f9a6cafd5f95fcc7a4c`  
		Last Modified: Thu, 13 Jun 2019 03:25:22 GMT  
		Size: 2.2 KB (2208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89477cdb506f6b9848be6accb5f1091551fb04dbfe8fc52c28fa33f4cb683547`  
		Last Modified: Thu, 13 Jun 2019 03:25:22 GMT  
		Size: 71.5 KB (71488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7441b58f83ececca2fac16f349bd807f2e27f852aee57af5f084a3065e915a6`  
		Last Modified: Thu, 13 Jun 2019 03:33:22 GMT  
		Size: 26.0 MB (26015744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43d93852393e55acbd9e4615e56451669b09c8d7d37fa06d104cbf1780aea53`  
		Last Modified: Thu, 13 Jun 2019 03:33:13 GMT  
		Size: 491.4 KB (491360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434470cee57984937f88ac7b3bc7c84183fbd3be2eb7947dd03bf10bf36ff7d3`  
		Last Modified: Thu, 13 Jun 2019 03:33:12 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4b87d2b7c679652d0a4cbde9a801f4d68145132c17fd32173c97a1945e8828`  
		Last Modified: Thu, 13 Jun 2019 03:33:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:8af8362387803adb4528618b9f4108fc83e7ca8c5cb073b42802c85566b73d39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61247151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d215eb0be117725cb0e3339bc79078ea57a9713f4d534b74d3e05858db7c3a15`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Fri, 31 May 2019 23:57:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 31 May 2019 23:57:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 31 May 2019 23:57:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 31 May 2019 23:57:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 31 May 2019 23:57:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Fri, 31 May 2019 23:57:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 31 May 2019 23:57:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 31 May 2019 23:57:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 31 May 2019 23:57:28 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 31 May 2019 23:57:29 GMT
ENV PHP_VERSION=7.3.6
# Fri, 31 May 2019 23:57:29 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Fri, 31 May 2019 23:57:30 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Fri, 31 May 2019 23:57:34 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Fri, 31 May 2019 23:57:34 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:01:39 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 05:11:26 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Thu, 13 Jun 2019 05:11:28 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 05:11:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 05:11:29 GMT
CMD ["php" "-a"]
# Thu, 13 Jun 2019 05:38:54 GMT
RUN apk add --no-cache --virtual .composer-rundeps git subversion openssh-client mercurial tini bash patch make zip unzip coreutils  && apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip opcache  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --no-cache --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps  && printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\nopcache.enable_cli=1\n" > $PHP_INI_DIR/php-cli.ini
# Thu, 13 Jun 2019 05:38:55 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 13 Jun 2019 05:38:55 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 13 Jun 2019 05:38:56 GMT
ENV COMPOSER_VERSION=1.8.6
# Thu, 13 Jun 2019 05:38:58 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/cb19f2aa3aeaa2006c0cd69a7ef011eb31463067/web/installer  && php -r "     \$signature = '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5';     \$hash = hash('sha384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {       unlink('/tmp/installer.php');       echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;       exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php  && find /tmp -type d -exec chmod -v 1777 {} +
# Thu, 13 Jun 2019 05:38:59 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Thu, 13 Jun 2019 05:38:59 GMT
WORKDIR /app
# Thu, 13 Jun 2019 05:39:00 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 05:39:00 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16f3b53022c0e3d9f8c28c4a0bbc9b73f4fb9af038a93b32fc5e7b7dcafb2dc`  
		Last Modified: Sat, 01 Jun 2019 01:49:12 GMT  
		Size: 1.4 MB (1444233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9b1ce4b8de210dd491d88b2e5d17aa56ddcd43e7b0c1198ad40227ecab037b`  
		Last Modified: Sat, 01 Jun 2019 01:49:11 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464bf3145cfeb6eda3a8f7eb92496ab05e70cd0ca922cedf894246e4d3d28f0c`  
		Last Modified: Sat, 01 Jun 2019 01:49:11 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0480bbfe5cdebef6b8e2e544aef230c45130bb8aae2172e359be031c25a8db9`  
		Last Modified: Sat, 01 Jun 2019 01:49:11 GMT  
		Size: 12.0 MB (12008742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b122c5c62d4fd173cdf9698c0f76d190be461d1b175521f759b7ad4752dd702b`  
		Last Modified: Sat, 01 Jun 2019 01:49:10 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ecc7ef1e4d82e2893a985efc5598e74eb172348dbd81afc96bd274edae273fe`  
		Last Modified: Sat, 01 Jun 2019 01:49:15 GMT  
		Size: 15.8 MB (15848529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675b7c28f2ff3e214815b942f979abaeaa748a1700bc63c349f618853a274e70`  
		Last Modified: Thu, 13 Jun 2019 05:18:00 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431dbd7aada5bc41991f454e07415b0fd48ac356c350052b15d61f6657300fbf`  
		Last Modified: Thu, 13 Jun 2019 05:17:59 GMT  
		Size: 71.0 KB (70995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b6a42073933fb2748a8daf0c56381f916e4a88453d29a36504bca53968adf3`  
		Last Modified: Thu, 13 Jun 2019 05:39:31 GMT  
		Size: 28.7 MB (28689581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7217bc1a4273544e9dabfd0215034ca023f7ee716a5f3dfb83c3ad5e0f7820bd`  
		Last Modified: Thu, 13 Jun 2019 05:39:19 GMT  
		Size: 491.4 KB (491360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315adc34db4b0edbbec3578a65ccca4fed7555b2c45b751d177764363639df7c`  
		Last Modified: Thu, 13 Jun 2019 05:39:19 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3a281835889afa9965b8bacf46024963e660457a59eaf2c7b66ec783056249`  
		Last Modified: Thu, 13 Jun 2019 05:39:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; 386

```console
$ docker pull composer@sha256:fbe56715bbb4773db474977e7cabf0bf5d83219bb334dfce1c76600c029e8d6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63289080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6e2f41e6f46b5909e218366e8cfc800826f263d3258601adb8824ddbc128b`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:23:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 11 May 2019 14:23:32 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 11 May 2019 14:23:33 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 11 May 2019 14:23:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 11 May 2019 14:23:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 11 May 2019 14:23:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 14:23:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 11 May 2019 14:23:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 11 May 2019 14:23:34 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 01 Jun 2019 00:14:37 GMT
ENV PHP_VERSION=7.3.6
# Sat, 01 Jun 2019 00:14:37 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:14:37 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Sat, 01 Jun 2019 00:14:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 01 Jun 2019 00:14:42 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:25:21 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 12 Jun 2019 23:53:04 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Wed, 12 Jun 2019 23:53:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 12 Jun 2019 23:53:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 12 Jun 2019 23:53:05 GMT
CMD ["php" "-a"]
# Thu, 13 Jun 2019 01:32:31 GMT
RUN apk add --no-cache --virtual .composer-rundeps git subversion openssh-client mercurial tini bash patch make zip unzip coreutils  && apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip opcache  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --no-cache --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps  && printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\nopcache.enable_cli=1\n" > $PHP_INI_DIR/php-cli.ini
# Thu, 13 Jun 2019 01:32:32 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 13 Jun 2019 01:32:32 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 13 Jun 2019 01:32:32 GMT
ENV COMPOSER_VERSION=1.8.6
# Thu, 13 Jun 2019 01:32:34 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/cb19f2aa3aeaa2006c0cd69a7ef011eb31463067/web/installer  && php -r "     \$signature = '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5';     \$hash = hash('sha384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {       unlink('/tmp/installer.php');       echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;       exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php  && find /tmp -type d -exec chmod -v 1777 {} +
# Thu, 13 Jun 2019 01:32:34 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Thu, 13 Jun 2019 01:32:34 GMT
WORKDIR /app
# Thu, 13 Jun 2019 01:32:35 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 01:32:35 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ff3d9753e7cf69bb0f3f759c29130dcdc9164fbd0f97c70570bfdd13684a9d`  
		Last Modified: Sat, 11 May 2019 15:22:24 GMT  
		Size: 1.5 MB (1535403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62ecb381a0a97aeaef290553ea1e5da3a2ae7d6e38433e768845967b989c288`  
		Last Modified: Sat, 11 May 2019 15:22:24 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bc88c4decc663daffc30ca08294291292d6c5d2b4426abfacb6115cf4b59d8`  
		Last Modified: Sat, 11 May 2019 15:22:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7768ff8ff92ea7201920dc7ede78a5b71474fb6b12bd0f6a3132f962b7a83c29`  
		Last Modified: Sat, 01 Jun 2019 05:14:39 GMT  
		Size: 12.0 MB (12008711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f087780965c4320cda46c3e4021680d8454d6872a9990895443f975b2cfc2816`  
		Last Modified: Sat, 01 Jun 2019 05:14:37 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4817f7c6f7fead01a792925e3a51637e2936d1a2598b3b85b0eb0cbc40f50474`  
		Last Modified: Sat, 01 Jun 2019 05:14:45 GMT  
		Size: 16.5 MB (16511537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1830516de5ce41ed262bd0b597e6654c4b06e40175c7181b5c71274b8e1743`  
		Last Modified: Wed, 12 Jun 2019 23:57:05 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baec8741e4d49512805fc6a6145b21304e0e6c64705f65f385f5617c38667cb1`  
		Last Modified: Wed, 12 Jun 2019 23:57:05 GMT  
		Size: 71.1 KB (71109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e42afdb3a99115a58a6d19b209c3d0e9e469517ceede4de0a2b29976a5be98`  
		Last Modified: Thu, 13 Jun 2019 01:33:12 GMT  
		Size: 29.9 MB (29914091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271ef43445618fcfdb2b17ccbe3b39600585a54d893c76eaa91b849e853b13a4`  
		Last Modified: Thu, 13 Jun 2019 01:32:56 GMT  
		Size: 491.3 KB (491315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465d8e0ac7044a8116263985de099833a8625d73a4ee494411542b13e656a90a`  
		Last Modified: Thu, 13 Jun 2019 01:32:56 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e370d752e59b34d20ea485882d4026eed961b675ba26ad5d8e0e67bc55338225`  
		Last Modified: Thu, 13 Jun 2019 01:32:56 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `composer:latest` - linux; ppc64le

```console
$ docker pull composer@sha256:1ebb576fe3ed75ed8cb2a9f4774fb746c416a6defdfcefca5572995eaf596139
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63893968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8604136bcc0e649cef5592d6733e85e2f30b7a20a648cb660f528525fa430cef`
-	Entrypoint: `["\/bin\/sh","\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Fri, 31 May 2019 23:50:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 31 May 2019 23:50:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 31 May 2019 23:50:14 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 31 May 2019 23:50:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 31 May 2019 23:50:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Fri, 31 May 2019 23:50:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 31 May 2019 23:50:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 31 May 2019 23:50:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 31 May 2019 23:50:31 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 31 May 2019 23:50:32 GMT
ENV PHP_VERSION=7.3.6
# Fri, 31 May 2019 23:50:34 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Fri, 31 May 2019 23:50:37 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Fri, 31 May 2019 23:50:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Fri, 31 May 2019 23:50:50 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 31 May 2019 23:55:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 00:40:00 GMT
COPY multi:287fef6856464a54cd9ef266c5fea3bd820d4cf2e2666723e9d9ddd1afc6db67 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:40:06 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 00:40:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 00:40:10 GMT
CMD ["php" "-a"]
# Thu, 13 Jun 2019 02:34:48 GMT
RUN apk add --no-cache --virtual .composer-rundeps git subversion openssh-client mercurial tini bash patch make zip unzip coreutils  && apk add --no-cache --virtual .build-deps zlib-dev libzip-dev  && docker-php-ext-configure zip --with-libzip  && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) zip opcache  && runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )"  && apk add --no-cache --virtual .composer-phpext-rundeps $runDeps  && apk del .build-deps  && printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\nopcache.enable_cli=1\n" > $PHP_INI_DIR/php-cli.ini
# Thu, 13 Jun 2019 02:34:56 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 13 Jun 2019 02:35:01 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 13 Jun 2019 02:35:03 GMT
ENV COMPOSER_VERSION=1.8.6
# Thu, 13 Jun 2019 02:35:14 GMT
RUN curl --silent --fail --location --retry 3 --output /tmp/installer.php --url https://raw.githubusercontent.com/composer/getcomposer.org/cb19f2aa3aeaa2006c0cd69a7ef011eb31463067/web/installer  && php -r "     \$signature = '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5';     \$hash = hash('sha384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {       unlink('/tmp/installer.php');       echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;       exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -f /tmp/installer.php  && find /tmp -type d -exec chmod -v 1777 {} +
# Thu, 13 Jun 2019 02:35:17 GMT
COPY file:098af1c9d6ed00c2f357827391da1b2b0978915db35f033349301c7cbe78010d in /docker-entrypoint.sh 
# Thu, 13 Jun 2019 02:35:24 GMT
WORKDIR /app
# Thu, 13 Jun 2019 02:35:27 GMT
ENTRYPOINT ["/bin/sh" "/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 02:35:31 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efff90199929310a29ba7dd6e3e88afa99e3a3ed439506da9799b44d0d224d46`  
		Last Modified: Sat, 01 Jun 2019 02:19:14 GMT  
		Size: 1.5 MB (1485216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2450f3797c2ce335515a99ca6268a4ac25771669b76aecb80546125de5aad8b3`  
		Last Modified: Sat, 01 Jun 2019 02:19:12 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851525000977a3fb6ad317500243aea2b6f423a04b9ba21663e0efb815ae409`  
		Last Modified: Sat, 01 Jun 2019 02:19:12 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8a13ab58c174c13ae9ad07cea5ff1adcd1f0cbb0d63128f048b4a1a4f9b633`  
		Last Modified: Sat, 01 Jun 2019 02:19:11 GMT  
		Size: 12.0 MB (12008730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc383238761d17bde335f8e710132bc9009b423b4ed961513d725e18b3b05063`  
		Last Modified: Sat, 01 Jun 2019 02:19:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1277b7449a14508a2579c5fc9a5422e1131ce40e556cf23eb58ebd67b8fe920`  
		Last Modified: Sat, 01 Jun 2019 02:19:19 GMT  
		Size: 17.4 MB (17445521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f3e63b1991ac1abf2ecec4400aa78248ef3ed75909240f3ed4b51225578d24`  
		Last Modified: Thu, 13 Jun 2019 00:52:05 GMT  
		Size: 2.2 KB (2208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a42f1937a20b98a72b72465e99effad377ebb73d6143d502b066ded230c082`  
		Last Modified: Thu, 13 Jun 2019 00:52:06 GMT  
		Size: 71.8 KB (71791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c7e1fa36a85ace42c6205baf5b58c9111a8d71f2bd447d6e4826f1a71a67c3`  
		Last Modified: Thu, 13 Jun 2019 02:36:35 GMT  
		Size: 29.6 MB (29605391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f5f5465a93be555d4d9e816057fa6db531ea32130de31ff6c9b94a9a98f886`  
		Last Modified: Thu, 13 Jun 2019 02:36:33 GMT  
		Size: 491.4 KB (491367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d992a4c88ae925b5fa9bb6e922456d7bdd16e3a9b1df0926a3b75c152ce6b2e`  
		Last Modified: Thu, 13 Jun 2019 02:36:33 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5580a49a61473db59185c153a39971cf19ced62652a0ddae77b923f29fc73b3a`  
		Last Modified: Thu, 13 Jun 2019 02:36:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
