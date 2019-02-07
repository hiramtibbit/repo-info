## `wordpress:cli-php7.3`

```console
$ docker pull wordpress@sha256:0608b3e9a1cbd081df976b0c0eecad69ccc87a83b982a066266c91bc2ebb5a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-php7.3` - linux; amd64

```console
$ docker pull wordpress@sha256:115cc49900098c4c39b3f184daff0da93eefc979e3946004aa0723b88b326b1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45146685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d713df17d3f0ccbb134fd620a7d7372d1cdf8b9014037e9b874c39649fd0c52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 01:34:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 01:34:36 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 01:34:37 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 01:34:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 01:34:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 01:34:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:34:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:34:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 01:34:39 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 01:34:39 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 01:34:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 01:34:39 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 01:34:43 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 06 Feb 2019 01:34:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 01:41:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 01:41:25 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Wed, 06 Feb 2019 01:41:26 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 01:41:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 01:41:26 GMT
CMD ["php" "-a"]
# Wed, 06 Feb 2019 12:12:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 06 Feb 2019 12:12:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 06 Feb 2019 12:12:53 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Wed, 06 Feb 2019 12:12:54 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Wed, 06 Feb 2019 12:12:54 GMT
WORKDIR /var/www/html
# Wed, 06 Feb 2019 12:12:54 GMT
VOLUME [/var/www/html]
# Wed, 06 Feb 2019 12:12:54 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Wed, 06 Feb 2019 12:12:55 GMT
ENV WORDPRESS_CLI_VERSION=2.1.0
# Wed, 06 Feb 2019 12:12:55 GMT
ENV WORDPRESS_CLI_SHA512=c2ff556c21c85bbcf11be38d058224f53d3d57a1da45320ecf0079d480063dcdc11b5029b94b0b181c1e3bec84745300cd848d28065c0d3619f598980cc17244
# Wed, 06 Feb 2019 12:12:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Wed, 06 Feb 2019 12:12:58 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:12:58 GMT
USER www-data
# Wed, 06 Feb 2019 12:12:58 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af09669d6bc8dab39672c4c1ed2a997384de66938916cfe3710fef6de246d4`  
		Last Modified: Wed, 06 Feb 2019 03:34:41 GMT  
		Size: 1.4 MB (1434376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba64579e88cb1f6b3766ef916cc497ad1f0374d5a58418bcbad70c890a1f5152`  
		Last Modified: Wed, 06 Feb 2019 03:34:41 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54458d46b379418e5080ced2c6ac09dae496ad6528c04e57c787e20ebaec32`  
		Last Modified: Wed, 06 Feb 2019 03:34:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8893a3bf6c219f2d06c0ebed64a16b260e60cef758b0218ff29af79b357b1e5b`  
		Last Modified: Wed, 06 Feb 2019 03:34:40 GMT  
		Size: 12.0 MB (11964018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7376ed19765b06023fce43ca5eeb247ae1f87af349565343273c0fb58989bbf`  
		Last Modified: Wed, 06 Feb 2019 03:34:39 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddf1a3814756736c589e279c9765c27b7cc16df23166cf710db7a38e5d86fbe`  
		Last Modified: Wed, 06 Feb 2019 03:34:44 GMT  
		Size: 16.3 MB (16337046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ef81c7c3c7b18be642c6c9c7337d7e0a64e3dca421b4c30fc6cd0532e103b3`  
		Last Modified: Wed, 06 Feb 2019 03:34:39 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e99d7df3857d2cf73263252d621328ebc9ab5efddebfcf046c96ba6f84d3718`  
		Last Modified: Wed, 06 Feb 2019 03:34:39 GMT  
		Size: 72.1 KB (72097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5ff6552a7eee6bfe26bd566b2ed7729a061ea2c07d52766f33deaec7d71dc6`  
		Last Modified: Wed, 06 Feb 2019 12:16:02 GMT  
		Size: 2.3 MB (2283000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4d985e016468116a6af601e775ed0e056ed5e6a17877e71e103d4240854692`  
		Last Modified: Wed, 06 Feb 2019 12:16:02 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625f59954166748630f9000418be01c770689025fec348bcbd9f65b4cf598ace`  
		Last Modified: Wed, 06 Feb 2019 12:16:04 GMT  
		Size: 9.1 MB (9078554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3343968353bc5a3b6f497af5f621424da7d5ffcdf17af0d6d96fb2b8ce2749bb`  
		Last Modified: Wed, 06 Feb 2019 04:32:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601002e9b1db004e846031ad22c444f025e9261324b059846e8bd3a55ff9a540`  
		Last Modified: Wed, 06 Feb 2019 12:16:02 GMT  
		Size: 1.2 MB (1217840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084cf653c6ef35c6f63666be14e33aaff844f84a99f069b9e1667714b58a36f3`  
		Last Modified: Wed, 06 Feb 2019 12:16:02 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.3` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:71792f460be8c09bc8d40404f2eda3a3403efb960be30d6c031519ad30fbf5e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42562211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0acd1a293186bda4d19a3a7835179b7c97a402bdd8b5429bdddbfd99a0ce42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

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
# Fri, 21 Dec 2018 09:57:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 09:57:25 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 11 Jan 2019 08:54:16 GMT
ENV PHP_VERSION=7.3.1
# Fri, 11 Jan 2019 08:54:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 08:54:17 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Fri, 11 Jan 2019 08:54:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 08:54:24 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:57:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 08:57:39 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:57:41 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 08:57:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 08:57:42 GMT
CMD ["php" "-a"]
# Fri, 11 Jan 2019 09:01:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 11 Jan 2019 09:01:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 09:01:44 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Fri, 11 Jan 2019 09:01:46 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 11 Jan 2019 09:01:47 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 09:01:47 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 09:01:48 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 11 Jan 2019 09:01:48 GMT
ENV WORDPRESS_CLI_VERSION=2.1.0
# Fri, 11 Jan 2019 09:01:49 GMT
ENV WORDPRESS_CLI_SHA512=c2ff556c21c85bbcf11be38d058224f53d3d57a1da45320ecf0079d480063dcdc11b5029b94b0b181c1e3bec84745300cd848d28065c0d3619f598980cc17244
# Fri, 11 Jan 2019 09:01:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 11 Jan 2019 09:01:55 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:01:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:01:56 GMT
USER www-data
# Fri, 11 Jan 2019 09:01:56 GMT
CMD ["wp" "shell"]
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
	-	`sha256:01a2d87e934f6881656d209530a5523fac4c28881bb465188a3ad7a4d3e4ddcf`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c443263c644199b4f1e52db37b5c9b47a16309bcf35924e362b0d5c417c6a9b5`  
		Last Modified: Fri, 11 Jan 2019 09:03:20 GMT  
		Size: 12.0 MB (11963994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baaa4162305dd8cc9365e9ee82714844fdd022b83c686dbc30b7f34d3889d9de`  
		Last Modified: Fri, 11 Jan 2019 09:03:19 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5fe97b079788b12fcc2b6c6d959966a8fa65b6767f7764f8e63de519c3de16`  
		Last Modified: Fri, 11 Jan 2019 09:03:24 GMT  
		Size: 15.1 MB (15057916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a944ad312ee97b55b1fa2616e5d9b0d4a11122d4b958131fe6b246894dfb0cb8`  
		Last Modified: Fri, 11 Jan 2019 09:03:18 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21142fad48c46983b764f484eb7f08f7d13b313b0e1a12c84577e95272edc790`  
		Last Modified: Fri, 11 Jan 2019 09:03:18 GMT  
		Size: 71.4 KB (71380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643568d3cfc6c4d5a1e6f4200ad01d03a3ccd61a3657e8ea01d8ac93d45e5925`  
		Last Modified: Fri, 11 Jan 2019 09:03:18 GMT  
		Size: 2.1 MB (2132655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a195a83205efba44aae3eff39997e159fb2c26033d238ef1f9eb7e13890a2a6`  
		Last Modified: Fri, 11 Jan 2019 09:03:16 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952b6fac74e8b7d0b9c65625014a53b2a4c8cba51cce0044211fc71dcba79c7f`  
		Last Modified: Fri, 11 Jan 2019 09:03:19 GMT  
		Size: 8.7 MB (8652590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17aaf264c55b33330b6d7024d4de082a7fbb9e5228ea6261df065b67558f5715`  
		Last Modified: Fri, 11 Jan 2019 09:03:16 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff3ee432631b4b0016ca28994c78defed051a926c9ce750304c807120454600`  
		Last Modified: Fri, 11 Jan 2019 09:03:17 GMT  
		Size: 1.2 MB (1217339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a6445cad1bdaf81cc1223137b759fca749e89032bc10ed935d29ed5a980b9c`  
		Last Modified: Fri, 11 Jan 2019 09:03:16 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.3` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:c0c34766f9927b118e216d8e0cf1a2cd314e203a75501055e2fa85ee82de430b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44846198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2a8462dffcf837ff657ed3a1f7c6f6ecc3b17d56a1509d3ecc69b1e67e4d5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:15:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 13:15:32 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 13:15:34 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 13:15:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 13:15:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 13:15:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:15:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:15:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:15:40 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 13:15:40 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 13:15:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 13:15:42 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 13:15:51 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 06 Feb 2019 13:15:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:24:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 13:24:47 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:24:50 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 13:24:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 13:24:51 GMT
CMD ["php" "-a"]
# Wed, 06 Feb 2019 20:27:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 06 Feb 2019 20:27:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 06 Feb 2019 20:27:59 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Wed, 06 Feb 2019 20:28:02 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Wed, 06 Feb 2019 20:28:03 GMT
WORKDIR /var/www/html
# Wed, 06 Feb 2019 20:28:04 GMT
VOLUME [/var/www/html]
# Wed, 06 Feb 2019 20:28:05 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Wed, 06 Feb 2019 20:28:06 GMT
ENV WORDPRESS_CLI_VERSION=2.1.0
# Wed, 06 Feb 2019 20:28:07 GMT
ENV WORDPRESS_CLI_SHA512=c2ff556c21c85bbcf11be38d058224f53d3d57a1da45320ecf0079d480063dcdc11b5029b94b0b181c1e3bec84745300cd848d28065c0d3619f598980cc17244
# Wed, 06 Feb 2019 20:28:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Wed, 06 Feb 2019 20:28:13 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Wed, 06 Feb 2019 20:28:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 20:28:15 GMT
USER www-data
# Wed, 06 Feb 2019 20:28:16 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9219cab4202b95ccc80f79810b0329d0b975f528bfd39ed88d404154f0db4c94`  
		Last Modified: Wed, 06 Feb 2019 17:23:14 GMT  
		Size: 1.4 MB (1441125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b3060043b61a521ce741c4f44a18bff6588cfebd6d2418cb70dec6325b9150`  
		Last Modified: Wed, 06 Feb 2019 17:23:13 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b71d8bc79ec58aa2bcfaba708194363cf67c779bf860bf0b2459717dc6a8526`  
		Last Modified: Wed, 06 Feb 2019 17:23:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f221afbbd26a5c7cef57c7bae40d39cb027bef82ee6079eba1292d8c378d3c`  
		Last Modified: Wed, 06 Feb 2019 17:23:13 GMT  
		Size: 12.0 MB (11964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0416807117c476cfbe1192d0c999400164e77979b930c568f06b80d766c619e`  
		Last Modified: Wed, 06 Feb 2019 17:23:11 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e36c920af141fb3414c1d0f65d80b3635c3d183e9186f84552d19823fc7411`  
		Last Modified: Wed, 06 Feb 2019 17:23:20 GMT  
		Size: 16.1 MB (16082313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6047a95d793f9cbef2ac4af395485cf8d4fb8a0decc77ee521be4f0f3e3da090`  
		Last Modified: Wed, 06 Feb 2019 17:23:11 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e49a3f1164ce7aa823857587e58a5710900bc82bc432766adab3c46f1e0212`  
		Last Modified: Wed, 06 Feb 2019 17:23:11 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440958178303be7676fb36a570f26fe0e4c0c5bf234eb5ef9447ac9a64c641c0`  
		Last Modified: Wed, 06 Feb 2019 20:35:07 GMT  
		Size: 2.2 MB (2234333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e859830f2aabe769e5107187da9296fce12dfa2ccd099b2ffbb6b5ac8e28e6e2`  
		Last Modified: Wed, 06 Feb 2019 20:35:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea883f3d67f80c25b031e7756fbb428a3e977ea3068da7fee6d28240139d4d1`  
		Last Modified: Wed, 06 Feb 2019 20:35:10 GMT  
		Size: 9.1 MB (9142923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f139b081a8bedaafc1be30127b1f7589bad3387676df2ed9ed4c4b69b8f5d24`  
		Last Modified: Wed, 06 Feb 2019 20:34:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6581ed2ed0ee6d10d409c76902eca3147ac1d98e142830130ccfa0acf6a2d351`  
		Last Modified: Wed, 06 Feb 2019 20:35:07 GMT  
		Size: 1.2 MB (1217271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b7dd0f05d3ca1d0d7067d34fbaaf16be0a001d05b67d0749928e03a3657984`  
		Last Modified: Wed, 06 Feb 2019 20:35:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.3` - linux; 386

```console
$ docker pull wordpress@sha256:27284ce746f16c721c0441f603e06f821f91b02d4647f7adabe915acf395cfb0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45862677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091dd127e1b8f7545a2f4742c7b9727fe976d4e6b495550fd1272d5596d09ddd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:25:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 14:25:22 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 14:25:23 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 14:25:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 14:25:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:25:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:25:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:25:27 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 14:25:28 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 14:25:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 14:25:29 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 14:25:34 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 06 Feb 2019 14:25:34 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:36:09 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 14:36:10 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:36:12 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 14:36:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 14:36:13 GMT
CMD ["php" "-a"]
# Thu, 07 Feb 2019 01:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 07 Feb 2019 01:07:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 07 Feb 2019 01:07:32 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Thu, 07 Feb 2019 01:07:32 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 07 Feb 2019 01:07:33 GMT
WORKDIR /var/www/html
# Thu, 07 Feb 2019 01:07:33 GMT
VOLUME [/var/www/html]
# Thu, 07 Feb 2019 01:07:33 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 07 Feb 2019 01:07:33 GMT
ENV WORDPRESS_CLI_VERSION=2.1.0
# Thu, 07 Feb 2019 01:07:33 GMT
ENV WORDPRESS_CLI_SHA512=c2ff556c21c85bbcf11be38d058224f53d3d57a1da45320ecf0079d480063dcdc11b5029b94b0b181c1e3bec84745300cd848d28065c0d3619f598980cc17244
# Thu, 07 Feb 2019 01:07:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 07 Feb 2019 01:07:36 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:07:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:07:36 GMT
USER www-data
# Thu, 07 Feb 2019 01:07:36 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f842726a1729d985f971bd22539196c1f852084161965ca52fc56052885f752`  
		Last Modified: Wed, 06 Feb 2019 20:20:24 GMT  
		Size: 1.5 MB (1532605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707327a4ca7e821009424d9a8b701995ff85ae1def45da4bd6da135027d2c57f`  
		Last Modified: Wed, 06 Feb 2019 20:20:23 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa540dff88fa775abfc3d863ad71a12634b4974ec424305bec500879d8cbe4aa`  
		Last Modified: Wed, 06 Feb 2019 20:20:22 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04e99cf540c204b928f07133534270d458b646822ff5737be638b2a14078420`  
		Last Modified: Wed, 06 Feb 2019 20:20:25 GMT  
		Size: 12.0 MB (11964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4eb5a7917a929852420a6cbc5c102416ab4bd22ec10d859073bfe0ee4e0e0f3`  
		Last Modified: Wed, 06 Feb 2019 20:20:21 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20c96286aff7482295ad899f456a75d0ff2bb634cc8e7cf6c86c8980a7626a2`  
		Last Modified: Wed, 06 Feb 2019 20:20:33 GMT  
		Size: 16.8 MB (16761838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2088b5f0bb6f0037e0e63abc10e8747f35cc21fe57df06f365014f1cf4bb2b3`  
		Last Modified: Wed, 06 Feb 2019 20:20:21 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c49fe04667eb0f1e97163f36ffc9cb36a831b22de2c316e80f43f5fb593441`  
		Last Modified: Wed, 06 Feb 2019 20:20:21 GMT  
		Size: 71.2 KB (71235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbadf7a808e9300162c9b05fff6cc1bffdc75ca603c8d7065447b35fda9c316`  
		Last Modified: Thu, 07 Feb 2019 01:10:20 GMT  
		Size: 2.3 MB (2321385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00bdf08a7cb4a19ab2306714a57922bfbaf0ab84609812c45dd06200ccfa9f`  
		Last Modified: Thu, 07 Feb 2019 01:10:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b58002dada0c1c3fea5e99db6a34e914ccfaed8da749300f7ca27b009d87790`  
		Last Modified: Thu, 07 Feb 2019 01:10:22 GMT  
		Size: 9.2 MB (9239647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7351c126e3ba41099fadc3690e2c2b83a5b3ab2539bbc959027cdfcf86d3bd`  
		Last Modified: Thu, 07 Feb 2019 01:09:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259ad3281eef5db3aa26c2ee03fcc7441382865b9126cf56ed34ce9592584f6d`  
		Last Modified: Thu, 07 Feb 2019 01:10:19 GMT  
		Size: 1.2 MB (1217410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f77e2f3d4f9fe42364499c1b9dc1e8a62cca6b55c884fcc8259b1c9a13fd42`  
		Last Modified: Thu, 07 Feb 2019 01:10:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php7.3` - linux; ppc64le

```console
$ docker pull wordpress@sha256:c54b5ef2eaa6f1910f8c3f12fa81c434bae4e87840d8ec309ebf09209cd04f85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46873949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3524fc63df94ac45b2434f5b4d1b37b908c7d4f621b2ab0a6e7f3bea49614f00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:09:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 12:09:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 12:09:48 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 12:09:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:09:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:09:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:09:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:10:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:10:02 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 12:10:03 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 12:10:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 12:10:08 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 12:10:22 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 06 Feb 2019 12:10:24 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:15:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 12:15:15 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:15:21 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 12:15:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 12:15:26 GMT
CMD ["php" "-a"]
# Wed, 06 Feb 2019 16:15:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 06 Feb 2019 16:15:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 06 Feb 2019 16:15:12 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Wed, 06 Feb 2019 16:15:16 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Wed, 06 Feb 2019 16:15:18 GMT
WORKDIR /var/www/html
# Wed, 06 Feb 2019 16:15:20 GMT
VOLUME [/var/www/html]
# Wed, 06 Feb 2019 16:15:21 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Wed, 06 Feb 2019 16:15:22 GMT
ENV WORDPRESS_CLI_VERSION=2.1.0
# Wed, 06 Feb 2019 16:15:24 GMT
ENV WORDPRESS_CLI_SHA512=c2ff556c21c85bbcf11be38d058224f53d3d57a1da45320ecf0079d480063dcdc11b5029b94b0b181c1e3bec84745300cd848d28065c0d3619f598980cc17244
# Wed, 06 Feb 2019 16:15:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Wed, 06 Feb 2019 16:15:29 GMT
COPY file:7798dc600ff57df68d7de781fd8834d5a9371b2ab13ab9649086b34ee0e38fcf in /usr/local/bin/ 
# Wed, 06 Feb 2019 16:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 16:15:32 GMT
USER www-data
# Wed, 06 Feb 2019 16:15:34 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006a6e8afc2777ec253fea25976cdd6be63a90686ef1bc6de98b9820f6540317`  
		Last Modified: Wed, 06 Feb 2019 14:34:00 GMT  
		Size: 1.5 MB (1481558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606fda705dd9f7203978c790055eb22b11c28d5fbf86862db7ef1a570e4a38de`  
		Last Modified: Wed, 06 Feb 2019 14:33:59 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c7962c28755ae856273684f2b741ba269cf10b16c22da3a999ae700a32aa87`  
		Last Modified: Wed, 06 Feb 2019 14:33:58 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb74a4c74ae256f37505d6088e2bba7a15d12a2ca7347b2d614af5f9b801303`  
		Last Modified: Wed, 06 Feb 2019 14:33:57 GMT  
		Size: 12.0 MB (11964043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9ccd24456f7da592e4108e5d3cb46b872d1fe94d45811101495cb9e73083dc`  
		Last Modified: Wed, 06 Feb 2019 14:33:56 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a70eed49ffd251c176800dae5b847f0b8ca77293e152d2f7a540ae7e4ecbe`  
		Last Modified: Wed, 06 Feb 2019 14:34:05 GMT  
		Size: 17.7 MB (17740991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67028960758c448866fa7f265096f3e0ef7a2330970c06f21baad3865de88620`  
		Last Modified: Wed, 06 Feb 2019 14:33:56 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b78d645cfbe147f06d9c20fed9f6dbc981684d284717e7c952962d14013f10`  
		Last Modified: Wed, 06 Feb 2019 14:33:56 GMT  
		Size: 71.9 KB (71898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf76ef2ad4782b5b707ad00e748242d5217182f5920f241e35bf8ab37ef4dd8c`  
		Last Modified: Wed, 06 Feb 2019 16:22:43 GMT  
		Size: 2.4 MB (2356874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745de1c36ac04f50c95afcd5003acd43a74afe00c0be24e11d32a864bd93c1d0`  
		Last Modified: Wed, 06 Feb 2019 16:22:42 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4557b245a780de9c795a949450a523132f120201f61d9cc1cf3293288f1b443a`  
		Last Modified: Wed, 06 Feb 2019 16:22:45 GMT  
		Size: 9.3 MB (9256852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf380b279d752a2aef3621855c313fbe9ec5d1386d6f284f1409458eb8dab90`  
		Last Modified: Wed, 06 Feb 2019 16:21:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6692a844a76bf4115fbbf06d47295344e87b4dffbc9acb510022e0c59df4a2`  
		Last Modified: Wed, 06 Feb 2019 16:22:43 GMT  
		Size: 1.2 MB (1217790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeed7cea5246fb905231f3d83e4639d6df0c856e1a998cfdf2a4feb472c64b33`  
		Last Modified: Wed, 06 Feb 2019 16:22:42 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
