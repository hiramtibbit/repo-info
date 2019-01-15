## `adminer:standalone`

```console
$ docker pull adminer@sha256:26ed9238d44d2cc1aed8d760d2bdb7d03563f695a401ac58a929230301b18890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:standalone` - linux; amd64

```console
$ docker pull adminer@sha256:f4f9fff4f5fc35a28c71579e5d0d6548f5660f1f9ebd941cd257facf6d4c28bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33536884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a66678d1bcc8fc5c618283272126f578c02250d2dfe580d9f9af1753fcf1d6e`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:27:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 01:27:06 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 01:27:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 01:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 01:27:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 01:27:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:27:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:27:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 02:03:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:31:14 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:31:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:31:14 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:31:19 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 01:31:19 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:37:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:37:13 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:37:15 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:37:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:37:15 GMT
CMD ["php" "-a"]
# Fri, 11 Jan 2019 02:41:50 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 11 Jan 2019 02:41:50 GMT
STOPSIGNAL SIGINT
# Fri, 11 Jan 2019 02:41:51 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 11 Jan 2019 02:41:51 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 02:41:52 GMT
RUN apk add --no-cache libpq
# Fri, 11 Jan 2019 02:42:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 11 Jan 2019 02:42:09 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 11 Jan 2019 02:42:10 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 11 Jan 2019 02:42:10 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 11 Jan 2019 02:42:10 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 11 Jan 2019 02:42:11 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 11 Jan 2019 02:42:11 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 11 Jan 2019 02:42:12 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 11 Jan 2019 02:42:12 GMT
USER adminer
# Fri, 11 Jan 2019 02:42:12 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 11 Jan 2019 02:42:12 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207535cd57f878f70cace5fa6b787bea470b519e83a0ad0d8b65fab8c3c4e6d`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.4 MB (1353714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1167ab95319c6a4c7a06ffb91e63738c89f46e9005296b25e2f2ea414b102a16`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff34bff7f50ba85c4ee1c081add1128c1e00de9eb29733452f99cd0508cd0e0`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152335cb99d2c41e9679e3980b5691d7f46915f4f17dd73738932dafe48403d0`  
		Last Modified: Fri, 11 Jan 2019 01:54:13 GMT  
		Size: 12.2 MB (12176078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4bb6b6c24e3684579e9ea3f73442b9d67f50834d7903bc8e82737e5a5f5f20`  
		Last Modified: Fri, 11 Jan 2019 01:54:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f2cd41ff90a9d1d418a1bfd4a568027b369fc665da540d1835efd298c336fe`  
		Last Modified: Fri, 11 Jan 2019 01:54:16 GMT  
		Size: 15.8 MB (15793466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937eb7aa641add4a0af66309712d4f7d5877a3e7150d792e9c85aee5afe33205`  
		Last Modified: Fri, 11 Jan 2019 01:54:11 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2308779f1613ce3367fd8348c4df97ed919c51afdb6c8ea1e195cf22d5154a66`  
		Last Modified: Fri, 11 Jan 2019 01:54:12 GMT  
		Size: 71.8 KB (71838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9321df607d85cd3160b9055ac92e410d7120648038886678ea7cc33af9098f03`  
		Last Modified: Fri, 11 Jan 2019 02:43:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40abead42f8f4afbb8c837ddf73f63d3e07141dbc032d57b0931ff41107f69c`  
		Last Modified: Fri, 11 Jan 2019 02:43:15 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c5027dc3ef7d10d59dd57f547abcd44bc39a9ef8514289d121ad71fefb28da`  
		Last Modified: Fri, 11 Jan 2019 02:43:14 GMT  
		Size: 1.3 MB (1281864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453bc81e4ff6d3b0c8fcae25b40efe5bb88c5d04bff5a3f7589b7845678bc8d1`  
		Last Modified: Fri, 11 Jan 2019 02:43:14 GMT  
		Size: 124.0 KB (123980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49127472bf4eb88403b539418b802b6de388b4248842fb712a93c5bd7972101d`  
		Last Modified: Fri, 11 Jan 2019 02:43:13 GMT  
		Size: 1.5 KB (1462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc4ea5dfc12211ca9e46a8c95a92447a04484f50653d2f08fec633ae2ecb001`  
		Last Modified: Fri, 11 Jan 2019 02:43:14 GMT  
		Size: 521.2 KB (521217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378ce480f7087ab73febc541fa6ae7747c90e2bfc01eed8dcef6f3590ee9c2e`  
		Last Modified: Fri, 11 Jan 2019 02:43:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:76c7b74db670fbe9f08024af31127b22af224e692839073896cab02ec2a01180
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32332940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835dc7db4450481da431dc8d080dda6f124faf180e47a311155f6de055494068`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Fri, 21 Dec 2018 10:11:37 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 09:05:19 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 09:05:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 09:05:20 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 09:05:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 09:05:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:08:37 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 09:08:39 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:08:40 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 09:08:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 09:08:41 GMT
CMD ["php" "-a"]
# Fri, 11 Jan 2019 09:56:28 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 11 Jan 2019 09:56:29 GMT
STOPSIGNAL SIGINT
# Fri, 11 Jan 2019 09:56:31 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 11 Jan 2019 09:56:32 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 09:56:34 GMT
RUN apk add --no-cache libpq
# Fri, 11 Jan 2019 09:57:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 11 Jan 2019 09:57:03 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 11 Jan 2019 09:57:04 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 11 Jan 2019 09:57:04 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 11 Jan 2019 09:57:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 11 Jan 2019 09:57:08 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 11 Jan 2019 09:57:08 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:57:09 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 11 Jan 2019 09:57:09 GMT
USER adminer
# Fri, 11 Jan 2019 09:57:10 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 11 Jan 2019 09:57:10 GMT
EXPOSE 8080
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
	-	`sha256:1496d9a7b2b2d8e57aa2e4581b1de11a2e9f049a7b2869d7b45174d467c62db6`  
		Last Modified: Fri, 11 Jan 2019 09:28:14 GMT  
		Size: 12.2 MB (12176104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c664f8f50666ebc7d018800e1c8b57937b45c9f5cfb699c2475016d9fb1073e6`  
		Last Modified: Fri, 11 Jan 2019 09:28:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4acc7cc578ba7df4ff4e5b505c6ab288382e17609e5fa50cef24f46c5a65cc`  
		Last Modified: Fri, 11 Jan 2019 09:28:18 GMT  
		Size: 14.8 MB (14760759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb6524265e8b479c16d9b45c8e99c8651379565ced228abca54627885fb520b`  
		Last Modified: Fri, 11 Jan 2019 09:28:12 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9379aa108cbe18a45b7c0b98364c3c9602685cba8cb018989b71193785126b95`  
		Last Modified: Fri, 11 Jan 2019 09:28:12 GMT  
		Size: 71.4 KB (71382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304af7d144c5692c420256e1a4d26beab4bfa781b59220da36ce3eac9e343a8f`  
		Last Modified: Fri, 11 Jan 2019 09:58:16 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aec39c4f4f071f413ab4511abcdcd3be0971270f4307d83cadebe5d0d787f95`  
		Last Modified: Fri, 11 Jan 2019 09:58:16 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871dcf69780f3780951563aea4582dedfc4f7750e4b3a514be9cb2e4ce7d6175`  
		Last Modified: Fri, 11 Jan 2019 09:58:15 GMT  
		Size: 1.2 MB (1215675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768231795f7640e42f785bd5e73a15157a630a2c06aadd8a540fa435c2be8e8f`  
		Last Modified: Fri, 11 Jan 2019 09:58:15 GMT  
		Size: 118.7 KB (118658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c0e32766bc89a98b8701375fdc3977459a8633b6db9ab4bd0ff0f94d75a583`  
		Last Modified: Fri, 11 Jan 2019 09:58:15 GMT  
		Size: 1.5 KB (1461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d1c45cff201387c7c4a71937e8d3d772df5c50fb5c295cc666f802c6d205b2`  
		Last Modified: Fri, 11 Jan 2019 09:58:15 GMT  
		Size: 521.3 KB (521270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4c1d37e154ca4f7748831aca120e0be3f076c581af46fea566a1830241f337`  
		Last Modified: Fri, 11 Jan 2019 09:58:15 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:b907e25a02b03d669a52740face2d74bcf0c0325b8c5ec97c402b6a2e2141385
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32103066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538b587137fc9658314982d10dfc9f33ec0753422a4e958e14b717827abdccf3`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Fri, 21 Dec 2018 12:10:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:10:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:10:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:10:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:40:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:57:51 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:57:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:57:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:58:02 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 11:58:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:05:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:05:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:05:13 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:05:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:05:14 GMT
CMD ["php" "-a"]
# Fri, 11 Jan 2019 13:59:45 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 11 Jan 2019 13:59:46 GMT
STOPSIGNAL SIGINT
# Fri, 11 Jan 2019 13:59:49 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 11 Jan 2019 13:59:50 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:59:54 GMT
RUN apk add --no-cache libpq
# Fri, 11 Jan 2019 14:00:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 11 Jan 2019 14:00:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 11 Jan 2019 14:00:53 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 11 Jan 2019 14:00:54 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 11 Jan 2019 14:00:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 11 Jan 2019 14:00:59 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 11 Jan 2019 14:00:59 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:01:00 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 11 Jan 2019 14:01:01 GMT
USER adminer
# Fri, 11 Jan 2019 14:01:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 11 Jan 2019 14:01:03 GMT
EXPOSE 8080
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
	-	`sha256:2290f763cb3e9ff58547451226cdcbb3b5083ab00da970fb03b03604c2c78716`  
		Last Modified: Fri, 21 Dec 2018 14:38:53 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daab8099ff794e0eaf6057cb49cec75dfae1567f72fca541fd9ad1b729626f83`  
		Last Modified: Fri, 11 Jan 2019 13:29:26 GMT  
		Size: 12.2 MB (12176109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90290a88d69cd369b5acbc8e3e9c7075a9922a486f58ad3333c3484644775297`  
		Last Modified: Fri, 11 Jan 2019 13:29:24 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842e107a142f6d1a2b6ce2eb702eb121f295e1acf4ab9211aa5825e1c2005469`  
		Last Modified: Fri, 11 Jan 2019 13:29:37 GMT  
		Size: 14.6 MB (14644128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44484bfea1b6ab96ed8c36734da12d15dddc1d73117298cb405be19fc195ef2d`  
		Last Modified: Fri, 11 Jan 2019 13:29:24 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c53f8d09dac858a6fe2cebe2bc1224c28e5d45115e0799066ce5222df71a77`  
		Last Modified: Fri, 11 Jan 2019 13:29:24 GMT  
		Size: 70.9 KB (70866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed46e07da919ab931e16b0b61f137c9845e1a49ad822975c344cba97bb147021`  
		Last Modified: Fri, 11 Jan 2019 14:02:44 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f4ab5e617f305064066249ae505e1e43a733aac8e1c0c9c9f5783f0130bc2c`  
		Last Modified: Fri, 11 Jan 2019 14:02:44 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9752e21060d3a6c9ace2ecd33500a62280e9524f448887709ecd8682e7dfbd6`  
		Last Modified: Fri, 11 Jan 2019 14:02:43 GMT  
		Size: 1.2 MB (1190740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb85cdb0e1f52d43362358ac166bcc0e9aee980e03c7fac37c26d7bd1db582`  
		Last Modified: Fri, 11 Jan 2019 14:02:42 GMT  
		Size: 118.3 KB (118261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341e6b662c8014cdbfb8adaef13344117a505baa3ea4a950df2d5be790ada5ff`  
		Last Modified: Fri, 11 Jan 2019 14:02:42 GMT  
		Size: 1.5 KB (1461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3918db2c750eda66727bfce00c73b95a8cf9b9c14b5be6bbe35d1d473e4698`  
		Last Modified: Fri, 11 Jan 2019 14:02:42 GMT  
		Size: 521.2 KB (521217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2792b2e3b52bc699571e515a1606cfebe0219ce4b422f9f51b977519ec367a01`  
		Last Modified: Fri, 11 Jan 2019 14:02:42 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; 386

```console
$ docker pull adminer@sha256:ffcf1d4c0c3178c08a1214fbb3b59fa1bf1ed630e5f1b2357e6605fe5b8bc67e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34276615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9fd4dfdd50d9a2f9f7aeaae37a9e984a713058becdf568fd3eea7cd80b8792`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Fri, 21 Dec 2018 12:26:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:26:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:26:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:26:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:46:56 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:06:12 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:06:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:06:12 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:06:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 13:06:17 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:11:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:11:49 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:11:50 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:11:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:11:50 GMT
CMD ["php" "-a"]
# Fri, 11 Jan 2019 16:38:42 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 11 Jan 2019 16:38:43 GMT
STOPSIGNAL SIGINT
# Fri, 11 Jan 2019 16:38:43 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 11 Jan 2019 16:38:44 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 16:38:45 GMT
RUN apk add --no-cache libpq
# Fri, 11 Jan 2019 16:39:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 11 Jan 2019 16:39:01 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 11 Jan 2019 16:39:01 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 11 Jan 2019 16:39:02 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 11 Jan 2019 16:39:02 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 11 Jan 2019 16:39:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 11 Jan 2019 16:39:03 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:39:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 11 Jan 2019 16:39:04 GMT
USER adminer
# Fri, 11 Jan 2019 16:39:04 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 11 Jan 2019 16:39:04 GMT
EXPOSE 8080
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
	-	`sha256:2a89858ddd116f7d2220d5ff7f60ae246411089bb3c686a47294192ef6b55c9d`  
		Last Modified: Fri, 21 Dec 2018 14:03:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6f862b3109a8910e0364ef799aeab1432a2e89f8b3497653a60e23f7326b9`  
		Last Modified: Fri, 11 Jan 2019 14:54:51 GMT  
		Size: 12.2 MB (12176112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9debde53af334f82767b7ad6d35f8fd8763417593012ddd9a8d5d6cdd18e2a21`  
		Last Modified: Fri, 11 Jan 2019 14:54:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ae01ce38d565e575b8c88e20c27928325eaa97bdc92d8196bf155d1aaacd68`  
		Last Modified: Fri, 11 Jan 2019 14:54:54 GMT  
		Size: 16.3 MB (16255288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163287c13d2c901b442f9d742eb213f2b99981dd2afb7f25e27720b594304314`  
		Last Modified: Fri, 11 Jan 2019 14:54:50 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed91595d00e6b8bd01c80cd1e1d77ed7c532a85e525fba1b557d13eda618387`  
		Last Modified: Fri, 11 Jan 2019 14:54:50 GMT  
		Size: 71.0 KB (70991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8860f5ab13ab518dd2dcb3cee8fc859604773531e8bc37c1ec669aeb1b8a07f0`  
		Last Modified: Fri, 11 Jan 2019 16:39:43 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df747e2459861030ff04b0e789af6a6f542eaaf99e06a43b8ae12a140bd7b06`  
		Last Modified: Fri, 11 Jan 2019 16:39:43 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8661bb7b30f67b93ec8e9a23362096bb587e0fd753f14c56efd0895ea1f23e42`  
		Last Modified: Fri, 11 Jan 2019 16:39:43 GMT  
		Size: 1.4 MB (1392921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f42546dbc1c3377f734b824006d55dca7b0dd19a1ec19530447e4f828b4f4b`  
		Last Modified: Fri, 11 Jan 2019 16:39:42 GMT  
		Size: 127.4 KB (127445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01df537dc29b87760943b6c15cc433e5bd1f7c52bf3fa1ea31e122111d2b3e05`  
		Last Modified: Fri, 11 Jan 2019 16:39:42 GMT  
		Size: 1.5 KB (1462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348b93855f86752c62755821223594e3c7b4bdee0f08ac11824d29e3c7542182`  
		Last Modified: Fri, 11 Jan 2019 16:39:42 GMT  
		Size: 521.2 KB (521219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fcf9fc4d8a71f61967df567caf0801b96fc78f829f771c2af57819c775bc8a4`  
		Last Modified: Fri, 11 Jan 2019 16:39:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:b9caa9daadedea31a3ae9a452d2b536917639fb618b23be18bc7ab2550048d9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33138436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09a618fb1e1d2726ae2ffa9b8ffd7e00b99ccc3c21c48652a33aa0c2074146c`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Fri, 21 Dec 2018 10:33:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:33:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:33:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:33:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:51:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:33:11 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:33:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:33:19 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:33:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 10:33:44 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:37:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:37:28 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:37:33 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:37:38 GMT
CMD ["php" "-a"]
# Fri, 11 Jan 2019 12:24:52 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 11 Jan 2019 12:24:56 GMT
STOPSIGNAL SIGINT
# Fri, 11 Jan 2019 12:25:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 11 Jan 2019 12:25:06 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:25:14 GMT
RUN apk add --no-cache libpq
# Fri, 11 Jan 2019 12:25:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 11 Jan 2019 12:25:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 11 Jan 2019 12:25:47 GMT
ENV ADMINER_VERSION=4.7.0
# Fri, 11 Jan 2019 12:25:50 GMT
ENV ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3
# Fri, 11 Jan 2019 12:25:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3
# Fri, 11 Jan 2019 12:26:01 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 11 Jan 2019 12:26:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:26:08 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:26:12 GMT
USER adminer
# Fri, 11 Jan 2019 12:26:16 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 11 Jan 2019 12:26:18 GMT
EXPOSE 8080
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
	-	`sha256:cc7bb9008fe21d12c735aed250535f34b51e732ec5488ca7e1772bca1a0b7028`  
		Last Modified: Fri, 21 Dec 2018 12:04:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70228c94fdf9b988064027f2832414d88ea29840b4c98d5a47fca2d71ed39236`  
		Last Modified: Fri, 11 Jan 2019 11:28:08 GMT  
		Size: 12.2 MB (12176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bd5564c6b2d2cc196c9f399628bc87d85c3c03ccb286e002501e55e495e50d`  
		Last Modified: Fri, 11 Jan 2019 11:28:06 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9990c4b821e6af1a18ec1b36b4580cd0b7ed8fa2683cd9f665358abaf91257`  
		Last Modified: Fri, 11 Jan 2019 11:28:14 GMT  
		Size: 15.5 MB (15466448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7966accb1b8daab1cc425f97209958cadc24867ab2b017c20d3a9225d45a62`  
		Last Modified: Fri, 11 Jan 2019 11:28:06 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55265acfc611fb1fb6f68c67d52563fe5f35f76cc1921524c410e970c985ae68`  
		Last Modified: Fri, 11 Jan 2019 11:28:07 GMT  
		Size: 71.6 KB (71635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7851c23b85c0696084ed486aba2d510cf0f56a51b34924e08edda08861d05258`  
		Last Modified: Fri, 11 Jan 2019 12:28:04 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9992f061ff27a9923a26a771e394fde6c688749fd442af495b8523b91705e4`  
		Last Modified: Fri, 11 Jan 2019 12:28:04 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9717b481e28f87b10869d6e27843c0cdf85f8ef95031897168f395e65e5f66`  
		Last Modified: Fri, 11 Jan 2019 12:28:02 GMT  
		Size: 1.3 MB (1252574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643870680b3ded64bc86a01a8d7ce6c27ad223623374ec5a61950d69fc7df1bc`  
		Last Modified: Fri, 11 Jan 2019 12:28:02 GMT  
		Size: 125.3 KB (125283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cdaaf29332a393978de9e1363d5ecb78a61f71bfce9031d2d61df2093b4eee`  
		Last Modified: Fri, 11 Jan 2019 12:28:01 GMT  
		Size: 1.5 KB (1461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b1bbb038937f40febe33fcd048a02a8b8a52fd29d5c19e996ae08f85c98644`  
		Last Modified: Fri, 11 Jan 2019 12:28:02 GMT  
		Size: 521.3 KB (521270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71583d6035237a0016dbab86ba76ed02ca64d1ba3d85265bfd7597af48b76184`  
		Last Modified: Fri, 11 Jan 2019 12:28:01 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
