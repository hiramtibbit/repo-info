<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `adminer`

-	[`adminer:4`](#adminer4)
-	[`adminer:4.7`](#adminer47)
-	[`adminer:4.7.1`](#adminer471)
-	[`adminer:4.7.1-fastcgi`](#adminer471-fastcgi)
-	[`adminer:4.7.1-standalone`](#adminer471-standalone)
-	[`adminer:4.7-fastcgi`](#adminer47-fastcgi)
-	[`adminer:4.7-standalone`](#adminer47-standalone)
-	[`adminer:4-fastcgi`](#adminer4-fastcgi)
-	[`adminer:4-standalone`](#adminer4-standalone)
-	[`adminer:fastcgi`](#adminerfastcgi)
-	[`adminer:latest`](#adminerlatest)
-	[`adminer:standalone`](#adminerstandalone)

## `adminer:4`

```console
$ docker pull adminer@sha256:9cd8cd78d4fa39c6a3d4aa0b0c5609ff7592eefaddb65657ee2cf67258fe1912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4` - linux; amd64

```console
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4` - linux; 386

```console
$ docker pull adminer@sha256:eb53c1c51cf51970ac176f343bdf39700ab248524e3e60e9abebd52589ffb5fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35179415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f000edfce29b304f7da10d8965abd3df631ffe9eb52c0d8e74764bde3e5f1`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:28:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:28:12 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:07:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:07:41 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:07:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:07:42 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:07:43 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:07:59 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:08:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:08:00 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:08:01 GMT
USER adminer
# Sat, 09 Feb 2019 15:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:08:01 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd97eccc7f45cc463c2e605067189ae7b2014a8513258ccaa9379c51c6d5c07`  
		Last Modified: Sat, 09 Feb 2019 14:00:16 GMT  
		Size: 16.8 MB (16796377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65295e8610bb909ebcd3a7f8e3b21c85acc3d31fc95974c6581ddf0bc982e4f`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490412ab18b0db97ba3987bfd09ddf245c49825125420cdb83709584dfcdb8b5`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 71.2 KB (71222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76398cd48cba595b9e6f9ed08a855645df2a4b4af06cb9896d82896878e6bd43`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3aa019c681c1f74b2dede4c1ff8c85eec250fdd943104c305f815af7e7b47e`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01019de251592c22201d4a89548b09eb6679b9dbaea4f51049cdfa0d83fa2f5c`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 MB (1386934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc587a3f7295cbf325fb31da59ddf3eeceec6ec7c0681d2b070777ab44068c7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 127.3 KB (127307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4285ede1858bdbc796a2357a744f67a6fde617711b561c1aaade826de8981b42`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df76ac1074a5a8fa45951ee53defc02ace7a5c03631b54e0ca6c45133e89f7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119e14b065353f59d29355cdf1f1d8ec6311159274b5ed2b3ad40f979e1f8f6`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7`

```console
$ docker pull adminer@sha256:9cd8cd78d4fa39c6a3d4aa0b0c5609ff7592eefaddb65657ee2cf67258fe1912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4.7` - linux; amd64

```console
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7` - linux; 386

```console
$ docker pull adminer@sha256:eb53c1c51cf51970ac176f343bdf39700ab248524e3e60e9abebd52589ffb5fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35179415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f000edfce29b304f7da10d8965abd3df631ffe9eb52c0d8e74764bde3e5f1`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:28:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:28:12 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:07:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:07:41 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:07:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:07:42 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:07:43 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:07:59 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:08:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:08:00 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:08:01 GMT
USER adminer
# Sat, 09 Feb 2019 15:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:08:01 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd97eccc7f45cc463c2e605067189ae7b2014a8513258ccaa9379c51c6d5c07`  
		Last Modified: Sat, 09 Feb 2019 14:00:16 GMT  
		Size: 16.8 MB (16796377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65295e8610bb909ebcd3a7f8e3b21c85acc3d31fc95974c6581ddf0bc982e4f`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490412ab18b0db97ba3987bfd09ddf245c49825125420cdb83709584dfcdb8b5`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 71.2 KB (71222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76398cd48cba595b9e6f9ed08a855645df2a4b4af06cb9896d82896878e6bd43`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3aa019c681c1f74b2dede4c1ff8c85eec250fdd943104c305f815af7e7b47e`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01019de251592c22201d4a89548b09eb6679b9dbaea4f51049cdfa0d83fa2f5c`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 MB (1386934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc587a3f7295cbf325fb31da59ddf3eeceec6ec7c0681d2b070777ab44068c7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 127.3 KB (127307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4285ede1858bdbc796a2357a744f67a6fde617711b561c1aaade826de8981b42`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df76ac1074a5a8fa45951ee53defc02ace7a5c03631b54e0ca6c45133e89f7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119e14b065353f59d29355cdf1f1d8ec6311159274b5ed2b3ad40f979e1f8f6`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7.1`

```console
$ docker pull adminer@sha256:9cd8cd78d4fa39c6a3d4aa0b0c5609ff7592eefaddb65657ee2cf67258fe1912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4.7.1` - linux; amd64

```console
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1` - linux; 386

```console
$ docker pull adminer@sha256:eb53c1c51cf51970ac176f343bdf39700ab248524e3e60e9abebd52589ffb5fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35179415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f000edfce29b304f7da10d8965abd3df631ffe9eb52c0d8e74764bde3e5f1`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:28:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:28:12 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:07:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:07:41 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:07:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:07:42 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:07:43 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:07:59 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:08:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:08:00 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:08:01 GMT
USER adminer
# Sat, 09 Feb 2019 15:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:08:01 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd97eccc7f45cc463c2e605067189ae7b2014a8513258ccaa9379c51c6d5c07`  
		Last Modified: Sat, 09 Feb 2019 14:00:16 GMT  
		Size: 16.8 MB (16796377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65295e8610bb909ebcd3a7f8e3b21c85acc3d31fc95974c6581ddf0bc982e4f`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490412ab18b0db97ba3987bfd09ddf245c49825125420cdb83709584dfcdb8b5`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 71.2 KB (71222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76398cd48cba595b9e6f9ed08a855645df2a4b4af06cb9896d82896878e6bd43`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3aa019c681c1f74b2dede4c1ff8c85eec250fdd943104c305f815af7e7b47e`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01019de251592c22201d4a89548b09eb6679b9dbaea4f51049cdfa0d83fa2f5c`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 MB (1386934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc587a3f7295cbf325fb31da59ddf3eeceec6ec7c0681d2b070777ab44068c7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 127.3 KB (127307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4285ede1858bdbc796a2357a744f67a6fde617711b561c1aaade826de8981b42`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df76ac1074a5a8fa45951ee53defc02ace7a5c03631b54e0ca6c45133e89f7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119e14b065353f59d29355cdf1f1d8ec6311159274b5ed2b3ad40f979e1f8f6`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7.1-fastcgi`

```console
$ docker pull adminer@sha256:0b64ff88f6f781215be76d37b099b17f0d2b3aed0e5955036c1cc0e6519f5757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4.7.1-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:1368c1ad331a058ca4736319b4f6b4ee53ec67f1ea9a16667efbba25669eec29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34299198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519037acc2d7e829812f51ede18bbf62c03b65ce32194a9bf87e6477272c45dc`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 01:41:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:06:09 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:06:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:06:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:14:27 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:28 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:14:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:14:28 GMT
WORKDIR /var/www/html
# Thu, 21 Feb 2019 23:14:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Feb 2019 23:14:29 GMT
EXPOSE 9000
# Thu, 21 Feb 2019 23:14:29 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 02:56:46 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:47 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:57:04 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:57:05 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:57:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:57:06 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:57:07 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:57:07 GMT
USER adminer
# Fri, 22 Feb 2019 02:57:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:83b3ebf15fbb655fc69b4a0bef9f6d4b9c560ae57bf504340ff16b8083cb0581`  
		Last Modified: Sat, 09 Feb 2019 03:36:59 GMT  
		Size: 12.0 MB (11986391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd02670318417e288103805b2947105792f6e1c252a515b49d2c8fb675f74e`  
		Last Modified: Sat, 09 Feb 2019 03:36:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2ed82081d903a2b4b4d4e42e9f03b1e993b97ba915448f7b7ec0ed7cea7f4`  
		Last Modified: Fri, 22 Feb 2019 02:01:19 GMT  
		Size: 16.1 MB (16122642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df93195e010f3c6ce9ce2bd170841807797f6c85319480c0777798b24782e0d`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b3f5c5edee04b3a2fe348c3ee75feaad70896f9686454f55e2ef1ea3193589`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 72.1 KB (72090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720ec860b26895dcc68bc4f08f0ff23d7a6941755e17e1434edd2fd621b3de5e`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92683e498ac9f686d42c324f9faa381146186b7f26f83729751c15f395d10b13`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78afd3b17046b89a23b3df0df75cbf1bea876848e9fee7328bc134aabf3ff8`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f582b3883817042f639fec13eb4942f055caff796dc1568d31bae553e09ab47`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.3 MB (1267089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f119056f78dafdd55f5c115e243e36b10f028bd8f56504ddfceb8c7e00601acf`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 124.6 KB (124567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5253b10e2fe0db902bdb8a6d6ce2f0153bc8fbbf02c183686604c5b7ec2d158`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155a737ffdc3b2d4c07ef9d9953632452075905fc709b51ab93cb7d57f1a210e`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6c4b6b5a13e8c51b721a58db8cb0682a5fbc5b29480a35401c41ab74c68f48`  
		Last Modified: Fri, 22 Feb 2019 02:57:31 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:f718926ae49b2f69809f4f704c53228810e0b2dd9c3ff7d2a422778791b26592
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33016623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1774483aea77779e16090dcf3a103dfe7b424850451e0f477a82cf7dd83bb934`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:16:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:16:28 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:06:59 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:07:03 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:07:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:10:32 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:34 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:10:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:10:36 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 09:10:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 09:10:39 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 09:10:39 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 10:07:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:07:07 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:07:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:07:36 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:07:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:07:40 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:07:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:07:41 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:07:41 GMT
USER adminer
# Sat, 09 Feb 2019 10:07:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e64514827168e1a10dcb31c2244c1629d41f9b57ec0433cdc3187bd9beeb7c`  
		Last Modified: Sat, 09 Feb 2019 09:48:06 GMT  
		Size: 12.0 MB (11986416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0974d4fbb3c42bbaeec71e97bb03841ff1a7ba9b27920cc6f5e6be6ce5634f`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f205f13cbef3295bed6c7d6a9ebad93645e567ed304b4ac43623de8e593ba7`  
		Last Modified: Sat, 09 Feb 2019 09:48:09 GMT  
		Size: 15.2 MB (15177589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596cc74977b675ce21bd1735806bb214565e7945fbfb06f00ba59b0ee1ff544d`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248206b5de057f95f9acbf332e41cd17efff5e8f4258bfd4045623fb6f7cb57`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 71.6 KB (71618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f78ae5d56694ab0fa5a8f6c5e9ff472ef0d21d25c240a69c04a99a1ffc1f50`  
		Last Modified: Sat, 09 Feb 2019 09:48:04 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30198fde9a0efa22398f9d393b67d3cf3c1affcba4d3c502168fe86610ceec83`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4780fc08b58d92901a0ccba8c3a30c65782d7f96727945e0d730da20e4d18a6`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4160679ccef725208a0dec2f43f1b023856af5dde977b006b862bff0b0556270`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.2 MB (1204730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672c9d4e8f1f940c334de009d09dc20488c8e3d935ea269c38e2eee0627a9332`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 117.6 KB (117631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae59d75ac284f81aa4951f2db8066328891f792b01c1f0cb212968f6cd0b3`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517a5bda983309ed8a3c49efedc015a57bd9a9a1d42c8df77fa16e5369d7f9b4`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edfe62b42305a52c8f6da67797a6360333998bb8fb8f61d8e46ba54a9ff3566`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:0ff9d9970240751e14a1cbaf42ac90b30970429874df349a763bc04a83a27d96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34319873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d676a09b70a7b34ac6af0338ed171ace863776a9ca4a385ed08913c255dc0a6`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 13:25:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:25:04 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:14:42 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:14:50 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:14:51 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:29 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:25:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:25:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:25:34 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 11:25:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 11:25:37 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 11:25:38 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 15:24:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:24:13 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:24:16 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:24:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:24:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:24:56 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:24:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:24:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:25:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:25:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:25:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:25:04 GMT
USER adminer
# Sat, 09 Feb 2019 15:25:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:bf043c84231e53bdfb59decece2ea18a7243665bf0e6abb50a23347a54d10006`  
		Last Modified: Sat, 09 Feb 2019 13:44:58 GMT  
		Size: 12.0 MB (11986405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeea523a012a81302604bc9fe2861901108cb0a4ee7c1547c24b1046c13e50f`  
		Last Modified: Sat, 09 Feb 2019 13:44:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fa1200576c93567945826bda7bd42aba16d6cdad104fe930580332741466ed`  
		Last Modified: Sat, 09 Feb 2019 13:45:01 GMT  
		Size: 16.2 MB (16179267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fd9d07da984e12b02ccd03ddb19ac71977c67d06827c5aaff4345c4991b5e`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a2bed5996f17261910cf27e711aa8eb7a2c29f9d3e0fdee6a9abc0d282ae53`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 71.1 KB (71110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03c50306bfc891e1be3a4ecb454c3e7d2fa243f79b7a029792b8e0a256779a9`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3673d283ec1de21c1ca725ded2896be0c7227c521928000d8368f15c921feba6`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f28bbfbbcacff3673e7422540d3c12e754abe64368dd6eec1ef694c40841d92`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d812178936663c5832fae4184b5d08852c81645d5f5f7caba9ba087a2a29526`  
		Last Modified: Sat, 09 Feb 2019 15:26:00 GMT  
		Size: 1.3 MB (1294396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2c7e53bf41540d402e0c51b396a9470a46e782dde38741d6050167b9fbb354`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 122.2 KB (122163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9276c347d8169847bcff5c295f37869f5692989d18072bebed3fc2f87177ef`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09416fc675d72b4a1e9b862cc0a5f278e1068a720ef8e9a10bda31e7316795f`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 521.3 KB (521279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71102f3592e74c44b9f1377a7c52975f3a53c2b06113c5397a3f597c68004040`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:c27b4cb99e02c8bc9f1cf6d40df79df5065d97bf281f3df11aed85c45c4a5ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34947516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7e63aea07fa0bd345bc6c1e09846c894e5691676c396757e66a08f8c5eaa45`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:36:26 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:28:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:28:32 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:29:06 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:07 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:29:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:29:07 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:29:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:29:08 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:29:08 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 18:16:33 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 18:16:34 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 18:16:35 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 18:16:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 18:16:51 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 18:16:52 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 18:16:53 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 18:16:53 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 18:16:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 18:16:54 GMT
USER adminer
# Fri, 22 Feb 2019 18:16:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:f6aae48fb68f5554b796fad9af32ad74994c043fcff463eb04bfa31cceded6fe`  
		Last Modified: Sat, 09 Feb 2019 14:00:33 GMT  
		Size: 12.0 MB (11986397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c3e2015d6479b816659c05f990a5631b9fecfb25f48b6e2a18514b6402e15`  
		Last Modified: Sat, 09 Feb 2019 14:00:31 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5733846997b9edbf07f81e1c29aa2cfce83899b5ae08277b800805cd68cde`  
		Last Modified: Fri, 22 Feb 2019 15:24:59 GMT  
		Size: 16.6 MB (16556208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c8a36541737af73a4db31e1f64bc45130f170932dfb8cf867b07671bf2403c`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636755fbfda5d29dc5310a4ff5f38ec9b007a11b8d01ad307dd7f3d6f4149395`  
		Last Modified: Fri, 22 Feb 2019 15:24:56 GMT  
		Size: 71.2 KB (71224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5ca5b98c98d459882044f22042246c356690e42d9bd7f727c445133561b82`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac71aa15cef006514cbf58f74fdd88f70cca89f534598ba601b84c12b1745d9`  
		Last Modified: Fri, 22 Feb 2019 18:17:19 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed370ff28afd79d1924c147f58e934c45afa5b3adaed96e42adce7ebf19ef594`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3141142d5176f698c6c07131ee3518286257cb4ca5fd5a80af91461a415cf6d8`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 MB (1386951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d38664eb304990e3196c1c9669b2a84098ffafdb8564d2f9c9a283bee7c5f6`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 127.3 KB (127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd401a1e2289fcb4dcd2f6d995ac55623c48dee123494c8248c39835640dca`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040a414c4c7efc4b2836cdab867b6c9bf94fdb6afc614ad409c92a7d328a0e3c`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 521.3 KB (521277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725048ffe42a821483d86e366f58104a26412c963e781534188bb4fda417c2b2`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:9458f67503c4cf222479a9ce23efd55df9de8abb726987b29874a3e64e42c75e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36179528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b6c2b87f161285cf135dbf7d451d08744f15f8eb06227088539bf72456768`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 12:15:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:15:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:15:50 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:20:19 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:20:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:20:25 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:20:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:20:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:24:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:46 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:24:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:24:51 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:24:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 10:24:57 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 10:24:59 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 12:01:15 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 12:01:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:01:23 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:01:46 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:01:47 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:01:48 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:01:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:01:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:01:57 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:01:58 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:01:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:02:01 GMT
USER adminer
# Sat, 09 Feb 2019 12:02:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:0dc10e0d0570c10d410d86d7c710e462d883681b9a264589e7d4f888fac805f7`  
		Last Modified: Sat, 09 Feb 2019 11:38:03 GMT  
		Size: 12.0 MB (11986418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e73504300d30ee5d8ff2780c64252088e4bc45f0b774af61eec123cd39179d`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f844d663ae2c8f60d45e6012a53006e8140701a98bfe2b3a671d61dc438c62`  
		Last Modified: Sat, 09 Feb 2019 11:38:09 GMT  
		Size: 17.8 MB (17841627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d262b0a2213ca68dc0ea7a45cd3d7f84f73b5aeeb0e93054c632e420c94cd3c5`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196681ae7ff252894c7d88a32bb0d295c3eeb3eb445ff62e4b3b63d68a4933a8`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552ed51dedc4fd2f11ab3183401cdaecf25ba3906ddec96ff837594b411dfab2`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6f29e5624bab9d63f18a768b6ad595f20c248ea109013bca668c38948d755`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b3fe4e4d8d38d4900f9caeb9f0f8aea4b95a6d670b330db76bc84476f0fec3`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753931ea1acf91dc7e5c86d0f62e16a69ba6bdbb6269f9432d53958e3259a27`  
		Last Modified: Sat, 09 Feb 2019 12:03:02 GMT  
		Size: 1.3 MB (1347519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515d5de0f807fe31de29f8407b8550225b90abf55e717ead1a4792c48a3bc36`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 134.2 KB (134169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332ac4ad6733f85f792683a7d298e7c4c28e23c653a01c65543a0c2e23b09cd3`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6e5d658aa17cc3c21e073165d529ecadb80ad04664eb309a243a85aa26d0b`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd5cda5c7db81f0ae8966b99cef520ac9a4a3dac3824e4d1e94d6b6686768af`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7.1-standalone`

```console
$ docker pull adminer@sha256:81887feba5e129dacd607de983dc3124d81ae5453a07efc5aa1dde2e7f25cc60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4.7.1-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-standalone` - linux; 386

```console
$ docker pull adminer@sha256:14c3c84ac6df08cbc1dcd6c4bc06117970720e4c43d9b678a84c9dd18a0a82a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34873760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f9cde19a3ac8dad5c8fcf88c9b3fcb18dc0caab24c381cee7f7c722ad6a0f2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:22:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:22:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:22:46 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:22:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:22:47 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 18:16:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 18:16:06 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 18:16:07 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 18:16:07 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 18:16:08 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 18:16:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 18:16:25 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 18:16:25 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 18:16:26 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 18:16:26 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 18:16:27 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 18:16:27 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 18:16:27 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 18:16:28 GMT
USER adminer
# Fri, 22 Feb 2019 18:16:28 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 18:16:28 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19645bf8306d15f49704edac8fd2e1ad3f98b4f2863b78f0c37251424fe7ae43`  
		Last Modified: Fri, 22 Feb 2019 15:23:29 GMT  
		Size: 16.5 MB (16490712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfda9439e1c6fd530179d1a84a4aa9e3eaef9f272b96e897b423cf223a643870`  
		Last Modified: Fri, 22 Feb 2019 15:23:25 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc83d49768c4e2e7137e1693ea5c934e4bdd59180049bc392b410458a6638e2`  
		Last Modified: Fri, 22 Feb 2019 15:23:26 GMT  
		Size: 71.2 KB (71224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1646124f3e6d470bf32ca9bd0e0db8c79fe7f35e225f85f3399611e30675ae0`  
		Last Modified: Fri, 22 Feb 2019 18:17:07 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535b527ea5c8f125a106ed746724d1ba2a5ad02dc74ea7df0f881ae73624a7b9`  
		Last Modified: Fri, 22 Feb 2019 18:17:07 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798497fdd75011cc4d147b9778c52ab9cfa7c0764807f7b02283cdb59eb2ec1d`  
		Last Modified: Fri, 22 Feb 2019 18:17:06 GMT  
		Size: 1.4 MB (1386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd7d80ba54c68ae59888fc5f3a89f85c71b7f1d3ffd081bfd4806482654a3d9`  
		Last Modified: Fri, 22 Feb 2019 18:17:06 GMT  
		Size: 127.3 KB (127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718fab4c73d7b08acb727eaafde28d12f9a72e8a1c7dd2e7b8eda9cd1f53dd18`  
		Last Modified: Fri, 22 Feb 2019 18:17:06 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc85f58ac5009fbb7825dad4eeb0179b78762df0b25f22665386935fa1e67c70`  
		Last Modified: Fri, 22 Feb 2019 18:17:06 GMT  
		Size: 521.3 KB (521282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ecec5c00f9754dc02e047d37c92826a329f595f9bddf65401673a6d1091e37`  
		Last Modified: Fri, 22 Feb 2019 18:17:06 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7-fastcgi`

```console
$ docker pull adminer@sha256:0b64ff88f6f781215be76d37b099b17f0d2b3aed0e5955036c1cc0e6519f5757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4.7-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:1368c1ad331a058ca4736319b4f6b4ee53ec67f1ea9a16667efbba25669eec29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34299198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519037acc2d7e829812f51ede18bbf62c03b65ce32194a9bf87e6477272c45dc`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 01:41:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:06:09 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:06:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:06:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:14:27 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:28 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:14:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:14:28 GMT
WORKDIR /var/www/html
# Thu, 21 Feb 2019 23:14:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Feb 2019 23:14:29 GMT
EXPOSE 9000
# Thu, 21 Feb 2019 23:14:29 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 02:56:46 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:47 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:57:04 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:57:05 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:57:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:57:06 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:57:07 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:57:07 GMT
USER adminer
# Fri, 22 Feb 2019 02:57:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:83b3ebf15fbb655fc69b4a0bef9f6d4b9c560ae57bf504340ff16b8083cb0581`  
		Last Modified: Sat, 09 Feb 2019 03:36:59 GMT  
		Size: 12.0 MB (11986391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd02670318417e288103805b2947105792f6e1c252a515b49d2c8fb675f74e`  
		Last Modified: Sat, 09 Feb 2019 03:36:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2ed82081d903a2b4b4d4e42e9f03b1e993b97ba915448f7b7ec0ed7cea7f4`  
		Last Modified: Fri, 22 Feb 2019 02:01:19 GMT  
		Size: 16.1 MB (16122642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df93195e010f3c6ce9ce2bd170841807797f6c85319480c0777798b24782e0d`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b3f5c5edee04b3a2fe348c3ee75feaad70896f9686454f55e2ef1ea3193589`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 72.1 KB (72090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720ec860b26895dcc68bc4f08f0ff23d7a6941755e17e1434edd2fd621b3de5e`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92683e498ac9f686d42c324f9faa381146186b7f26f83729751c15f395d10b13`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78afd3b17046b89a23b3df0df75cbf1bea876848e9fee7328bc134aabf3ff8`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f582b3883817042f639fec13eb4942f055caff796dc1568d31bae553e09ab47`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.3 MB (1267089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f119056f78dafdd55f5c115e243e36b10f028bd8f56504ddfceb8c7e00601acf`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 124.6 KB (124567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5253b10e2fe0db902bdb8a6d6ce2f0153bc8fbbf02c183686604c5b7ec2d158`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155a737ffdc3b2d4c07ef9d9953632452075905fc709b51ab93cb7d57f1a210e`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6c4b6b5a13e8c51b721a58db8cb0682a5fbc5b29480a35401c41ab74c68f48`  
		Last Modified: Fri, 22 Feb 2019 02:57:31 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:f718926ae49b2f69809f4f704c53228810e0b2dd9c3ff7d2a422778791b26592
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33016623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1774483aea77779e16090dcf3a103dfe7b424850451e0f477a82cf7dd83bb934`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:16:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:16:28 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:06:59 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:07:03 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:07:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:10:32 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:34 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:10:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:10:36 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 09:10:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 09:10:39 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 09:10:39 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 10:07:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:07:07 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:07:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:07:36 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:07:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:07:40 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:07:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:07:41 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:07:41 GMT
USER adminer
# Sat, 09 Feb 2019 10:07:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e64514827168e1a10dcb31c2244c1629d41f9b57ec0433cdc3187bd9beeb7c`  
		Last Modified: Sat, 09 Feb 2019 09:48:06 GMT  
		Size: 12.0 MB (11986416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0974d4fbb3c42bbaeec71e97bb03841ff1a7ba9b27920cc6f5e6be6ce5634f`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f205f13cbef3295bed6c7d6a9ebad93645e567ed304b4ac43623de8e593ba7`  
		Last Modified: Sat, 09 Feb 2019 09:48:09 GMT  
		Size: 15.2 MB (15177589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596cc74977b675ce21bd1735806bb214565e7945fbfb06f00ba59b0ee1ff544d`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248206b5de057f95f9acbf332e41cd17efff5e8f4258bfd4045623fb6f7cb57`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 71.6 KB (71618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f78ae5d56694ab0fa5a8f6c5e9ff472ef0d21d25c240a69c04a99a1ffc1f50`  
		Last Modified: Sat, 09 Feb 2019 09:48:04 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30198fde9a0efa22398f9d393b67d3cf3c1affcba4d3c502168fe86610ceec83`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4780fc08b58d92901a0ccba8c3a30c65782d7f96727945e0d730da20e4d18a6`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4160679ccef725208a0dec2f43f1b023856af5dde977b006b862bff0b0556270`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.2 MB (1204730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672c9d4e8f1f940c334de009d09dc20488c8e3d935ea269c38e2eee0627a9332`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 117.6 KB (117631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae59d75ac284f81aa4951f2db8066328891f792b01c1f0cb212968f6cd0b3`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517a5bda983309ed8a3c49efedc015a57bd9a9a1d42c8df77fa16e5369d7f9b4`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edfe62b42305a52c8f6da67797a6360333998bb8fb8f61d8e46ba54a9ff3566`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:0ff9d9970240751e14a1cbaf42ac90b30970429874df349a763bc04a83a27d96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34319873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d676a09b70a7b34ac6af0338ed171ace863776a9ca4a385ed08913c255dc0a6`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 13:25:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:25:04 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:14:42 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:14:50 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:14:51 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:29 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:25:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:25:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:25:34 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 11:25:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 11:25:37 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 11:25:38 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 15:24:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:24:13 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:24:16 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:24:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:24:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:24:56 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:24:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:24:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:25:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:25:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:25:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:25:04 GMT
USER adminer
# Sat, 09 Feb 2019 15:25:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:bf043c84231e53bdfb59decece2ea18a7243665bf0e6abb50a23347a54d10006`  
		Last Modified: Sat, 09 Feb 2019 13:44:58 GMT  
		Size: 12.0 MB (11986405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeea523a012a81302604bc9fe2861901108cb0a4ee7c1547c24b1046c13e50f`  
		Last Modified: Sat, 09 Feb 2019 13:44:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fa1200576c93567945826bda7bd42aba16d6cdad104fe930580332741466ed`  
		Last Modified: Sat, 09 Feb 2019 13:45:01 GMT  
		Size: 16.2 MB (16179267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fd9d07da984e12b02ccd03ddb19ac71977c67d06827c5aaff4345c4991b5e`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a2bed5996f17261910cf27e711aa8eb7a2c29f9d3e0fdee6a9abc0d282ae53`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 71.1 KB (71110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03c50306bfc891e1be3a4ecb454c3e7d2fa243f79b7a029792b8e0a256779a9`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3673d283ec1de21c1ca725ded2896be0c7227c521928000d8368f15c921feba6`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f28bbfbbcacff3673e7422540d3c12e754abe64368dd6eec1ef694c40841d92`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d812178936663c5832fae4184b5d08852c81645d5f5f7caba9ba087a2a29526`  
		Last Modified: Sat, 09 Feb 2019 15:26:00 GMT  
		Size: 1.3 MB (1294396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2c7e53bf41540d402e0c51b396a9470a46e782dde38741d6050167b9fbb354`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 122.2 KB (122163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9276c347d8169847bcff5c295f37869f5692989d18072bebed3fc2f87177ef`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09416fc675d72b4a1e9b862cc0a5f278e1068a720ef8e9a10bda31e7316795f`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 521.3 KB (521279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71102f3592e74c44b9f1377a7c52975f3a53c2b06113c5397a3f597c68004040`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:c27b4cb99e02c8bc9f1cf6d40df79df5065d97bf281f3df11aed85c45c4a5ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34947516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7e63aea07fa0bd345bc6c1e09846c894e5691676c396757e66a08f8c5eaa45`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:36:26 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:28:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:28:32 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:29:06 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:07 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:29:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:29:07 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:29:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:29:08 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:29:08 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 18:16:33 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 18:16:34 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 18:16:35 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 18:16:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 18:16:51 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 18:16:52 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 18:16:53 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 18:16:53 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 18:16:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 18:16:54 GMT
USER adminer
# Fri, 22 Feb 2019 18:16:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:f6aae48fb68f5554b796fad9af32ad74994c043fcff463eb04bfa31cceded6fe`  
		Last Modified: Sat, 09 Feb 2019 14:00:33 GMT  
		Size: 12.0 MB (11986397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c3e2015d6479b816659c05f990a5631b9fecfb25f48b6e2a18514b6402e15`  
		Last Modified: Sat, 09 Feb 2019 14:00:31 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5733846997b9edbf07f81e1c29aa2cfce83899b5ae08277b800805cd68cde`  
		Last Modified: Fri, 22 Feb 2019 15:24:59 GMT  
		Size: 16.6 MB (16556208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c8a36541737af73a4db31e1f64bc45130f170932dfb8cf867b07671bf2403c`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636755fbfda5d29dc5310a4ff5f38ec9b007a11b8d01ad307dd7f3d6f4149395`  
		Last Modified: Fri, 22 Feb 2019 15:24:56 GMT  
		Size: 71.2 KB (71224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5ca5b98c98d459882044f22042246c356690e42d9bd7f727c445133561b82`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac71aa15cef006514cbf58f74fdd88f70cca89f534598ba601b84c12b1745d9`  
		Last Modified: Fri, 22 Feb 2019 18:17:19 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed370ff28afd79d1924c147f58e934c45afa5b3adaed96e42adce7ebf19ef594`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3141142d5176f698c6c07131ee3518286257cb4ca5fd5a80af91461a415cf6d8`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 MB (1386951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d38664eb304990e3196c1c9669b2a84098ffafdb8564d2f9c9a283bee7c5f6`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 127.3 KB (127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd401a1e2289fcb4dcd2f6d995ac55623c48dee123494c8248c39835640dca`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040a414c4c7efc4b2836cdab867b6c9bf94fdb6afc614ad409c92a7d328a0e3c`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 521.3 KB (521277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725048ffe42a821483d86e366f58104a26412c963e781534188bb4fda417c2b2`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:9458f67503c4cf222479a9ce23efd55df9de8abb726987b29874a3e64e42c75e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36179528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b6c2b87f161285cf135dbf7d451d08744f15f8eb06227088539bf72456768`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 12:15:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:15:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:15:50 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:20:19 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:20:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:20:25 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:20:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:20:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:24:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:46 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:24:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:24:51 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:24:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 10:24:57 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 10:24:59 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 12:01:15 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 12:01:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:01:23 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:01:46 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:01:47 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:01:48 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:01:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:01:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:01:57 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:01:58 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:01:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:02:01 GMT
USER adminer
# Sat, 09 Feb 2019 12:02:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:0dc10e0d0570c10d410d86d7c710e462d883681b9a264589e7d4f888fac805f7`  
		Last Modified: Sat, 09 Feb 2019 11:38:03 GMT  
		Size: 12.0 MB (11986418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e73504300d30ee5d8ff2780c64252088e4bc45f0b774af61eec123cd39179d`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f844d663ae2c8f60d45e6012a53006e8140701a98bfe2b3a671d61dc438c62`  
		Last Modified: Sat, 09 Feb 2019 11:38:09 GMT  
		Size: 17.8 MB (17841627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d262b0a2213ca68dc0ea7a45cd3d7f84f73b5aeeb0e93054c632e420c94cd3c5`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196681ae7ff252894c7d88a32bb0d295c3eeb3eb445ff62e4b3b63d68a4933a8`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552ed51dedc4fd2f11ab3183401cdaecf25ba3906ddec96ff837594b411dfab2`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6f29e5624bab9d63f18a768b6ad595f20c248ea109013bca668c38948d755`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b3fe4e4d8d38d4900f9caeb9f0f8aea4b95a6d670b330db76bc84476f0fec3`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753931ea1acf91dc7e5c86d0f62e16a69ba6bdbb6269f9432d53958e3259a27`  
		Last Modified: Sat, 09 Feb 2019 12:03:02 GMT  
		Size: 1.3 MB (1347519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515d5de0f807fe31de29f8407b8550225b90abf55e717ead1a4792c48a3bc36`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 134.2 KB (134169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332ac4ad6733f85f792683a7d298e7c4c28e23c653a01c65543a0c2e23b09cd3`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6e5d658aa17cc3c21e073165d529ecadb80ad04664eb309a243a85aa26d0b`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd5cda5c7db81f0ae8966b99cef520ac9a4a3dac3824e4d1e94d6b6686768af`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7-standalone`

```console
$ docker pull adminer@sha256:9cd8cd78d4fa39c6a3d4aa0b0c5609ff7592eefaddb65657ee2cf67258fe1912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4.7-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-standalone` - linux; 386

```console
$ docker pull adminer@sha256:eb53c1c51cf51970ac176f343bdf39700ab248524e3e60e9abebd52589ffb5fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35179415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f000edfce29b304f7da10d8965abd3df631ffe9eb52c0d8e74764bde3e5f1`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:28:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:28:12 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:07:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:07:41 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:07:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:07:42 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:07:43 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:07:59 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:08:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:08:00 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:08:01 GMT
USER adminer
# Sat, 09 Feb 2019 15:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:08:01 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd97eccc7f45cc463c2e605067189ae7b2014a8513258ccaa9379c51c6d5c07`  
		Last Modified: Sat, 09 Feb 2019 14:00:16 GMT  
		Size: 16.8 MB (16796377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65295e8610bb909ebcd3a7f8e3b21c85acc3d31fc95974c6581ddf0bc982e4f`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490412ab18b0db97ba3987bfd09ddf245c49825125420cdb83709584dfcdb8b5`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 71.2 KB (71222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76398cd48cba595b9e6f9ed08a855645df2a4b4af06cb9896d82896878e6bd43`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3aa019c681c1f74b2dede4c1ff8c85eec250fdd943104c305f815af7e7b47e`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01019de251592c22201d4a89548b09eb6679b9dbaea4f51049cdfa0d83fa2f5c`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 MB (1386934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc587a3f7295cbf325fb31da59ddf3eeceec6ec7c0681d2b070777ab44068c7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 127.3 KB (127307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4285ede1858bdbc796a2357a744f67a6fde617711b561c1aaade826de8981b42`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df76ac1074a5a8fa45951ee53defc02ace7a5c03631b54e0ca6c45133e89f7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119e14b065353f59d29355cdf1f1d8ec6311159274b5ed2b3ad40f979e1f8f6`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:0b64ff88f6f781215be76d37b099b17f0d2b3aed0e5955036c1cc0e6519f5757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:1368c1ad331a058ca4736319b4f6b4ee53ec67f1ea9a16667efbba25669eec29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34299198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519037acc2d7e829812f51ede18bbf62c03b65ce32194a9bf87e6477272c45dc`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 01:41:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:06:09 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:06:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:06:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:14:27 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:28 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:14:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:14:28 GMT
WORKDIR /var/www/html
# Thu, 21 Feb 2019 23:14:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Feb 2019 23:14:29 GMT
EXPOSE 9000
# Thu, 21 Feb 2019 23:14:29 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 02:56:46 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:47 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:57:04 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:57:05 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:57:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:57:06 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:57:07 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:57:07 GMT
USER adminer
# Fri, 22 Feb 2019 02:57:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:83b3ebf15fbb655fc69b4a0bef9f6d4b9c560ae57bf504340ff16b8083cb0581`  
		Last Modified: Sat, 09 Feb 2019 03:36:59 GMT  
		Size: 12.0 MB (11986391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd02670318417e288103805b2947105792f6e1c252a515b49d2c8fb675f74e`  
		Last Modified: Sat, 09 Feb 2019 03:36:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2ed82081d903a2b4b4d4e42e9f03b1e993b97ba915448f7b7ec0ed7cea7f4`  
		Last Modified: Fri, 22 Feb 2019 02:01:19 GMT  
		Size: 16.1 MB (16122642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df93195e010f3c6ce9ce2bd170841807797f6c85319480c0777798b24782e0d`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b3f5c5edee04b3a2fe348c3ee75feaad70896f9686454f55e2ef1ea3193589`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 72.1 KB (72090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720ec860b26895dcc68bc4f08f0ff23d7a6941755e17e1434edd2fd621b3de5e`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92683e498ac9f686d42c324f9faa381146186b7f26f83729751c15f395d10b13`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78afd3b17046b89a23b3df0df75cbf1bea876848e9fee7328bc134aabf3ff8`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f582b3883817042f639fec13eb4942f055caff796dc1568d31bae553e09ab47`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.3 MB (1267089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f119056f78dafdd55f5c115e243e36b10f028bd8f56504ddfceb8c7e00601acf`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 124.6 KB (124567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5253b10e2fe0db902bdb8a6d6ce2f0153bc8fbbf02c183686604c5b7ec2d158`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155a737ffdc3b2d4c07ef9d9953632452075905fc709b51ab93cb7d57f1a210e`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6c4b6b5a13e8c51b721a58db8cb0682a5fbc5b29480a35401c41ab74c68f48`  
		Last Modified: Fri, 22 Feb 2019 02:57:31 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:f718926ae49b2f69809f4f704c53228810e0b2dd9c3ff7d2a422778791b26592
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33016623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1774483aea77779e16090dcf3a103dfe7b424850451e0f477a82cf7dd83bb934`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:16:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:16:28 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:06:59 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:07:03 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:07:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:10:32 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:34 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:10:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:10:36 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 09:10:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 09:10:39 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 09:10:39 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 10:07:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:07:07 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:07:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:07:36 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:07:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:07:40 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:07:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:07:41 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:07:41 GMT
USER adminer
# Sat, 09 Feb 2019 10:07:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e64514827168e1a10dcb31c2244c1629d41f9b57ec0433cdc3187bd9beeb7c`  
		Last Modified: Sat, 09 Feb 2019 09:48:06 GMT  
		Size: 12.0 MB (11986416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0974d4fbb3c42bbaeec71e97bb03841ff1a7ba9b27920cc6f5e6be6ce5634f`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f205f13cbef3295bed6c7d6a9ebad93645e567ed304b4ac43623de8e593ba7`  
		Last Modified: Sat, 09 Feb 2019 09:48:09 GMT  
		Size: 15.2 MB (15177589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596cc74977b675ce21bd1735806bb214565e7945fbfb06f00ba59b0ee1ff544d`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248206b5de057f95f9acbf332e41cd17efff5e8f4258bfd4045623fb6f7cb57`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 71.6 KB (71618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f78ae5d56694ab0fa5a8f6c5e9ff472ef0d21d25c240a69c04a99a1ffc1f50`  
		Last Modified: Sat, 09 Feb 2019 09:48:04 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30198fde9a0efa22398f9d393b67d3cf3c1affcba4d3c502168fe86610ceec83`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4780fc08b58d92901a0ccba8c3a30c65782d7f96727945e0d730da20e4d18a6`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4160679ccef725208a0dec2f43f1b023856af5dde977b006b862bff0b0556270`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.2 MB (1204730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672c9d4e8f1f940c334de009d09dc20488c8e3d935ea269c38e2eee0627a9332`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 117.6 KB (117631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae59d75ac284f81aa4951f2db8066328891f792b01c1f0cb212968f6cd0b3`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517a5bda983309ed8a3c49efedc015a57bd9a9a1d42c8df77fa16e5369d7f9b4`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edfe62b42305a52c8f6da67797a6360333998bb8fb8f61d8e46ba54a9ff3566`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:0ff9d9970240751e14a1cbaf42ac90b30970429874df349a763bc04a83a27d96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34319873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d676a09b70a7b34ac6af0338ed171ace863776a9ca4a385ed08913c255dc0a6`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 13:25:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:25:04 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:14:42 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:14:50 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:14:51 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:29 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:25:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:25:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:25:34 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 11:25:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 11:25:37 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 11:25:38 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 15:24:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:24:13 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:24:16 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:24:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:24:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:24:56 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:24:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:24:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:25:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:25:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:25:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:25:04 GMT
USER adminer
# Sat, 09 Feb 2019 15:25:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:bf043c84231e53bdfb59decece2ea18a7243665bf0e6abb50a23347a54d10006`  
		Last Modified: Sat, 09 Feb 2019 13:44:58 GMT  
		Size: 12.0 MB (11986405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeea523a012a81302604bc9fe2861901108cb0a4ee7c1547c24b1046c13e50f`  
		Last Modified: Sat, 09 Feb 2019 13:44:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fa1200576c93567945826bda7bd42aba16d6cdad104fe930580332741466ed`  
		Last Modified: Sat, 09 Feb 2019 13:45:01 GMT  
		Size: 16.2 MB (16179267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fd9d07da984e12b02ccd03ddb19ac71977c67d06827c5aaff4345c4991b5e`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a2bed5996f17261910cf27e711aa8eb7a2c29f9d3e0fdee6a9abc0d282ae53`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 71.1 KB (71110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03c50306bfc891e1be3a4ecb454c3e7d2fa243f79b7a029792b8e0a256779a9`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3673d283ec1de21c1ca725ded2896be0c7227c521928000d8368f15c921feba6`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f28bbfbbcacff3673e7422540d3c12e754abe64368dd6eec1ef694c40841d92`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d812178936663c5832fae4184b5d08852c81645d5f5f7caba9ba087a2a29526`  
		Last Modified: Sat, 09 Feb 2019 15:26:00 GMT  
		Size: 1.3 MB (1294396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2c7e53bf41540d402e0c51b396a9470a46e782dde38741d6050167b9fbb354`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 122.2 KB (122163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9276c347d8169847bcff5c295f37869f5692989d18072bebed3fc2f87177ef`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09416fc675d72b4a1e9b862cc0a5f278e1068a720ef8e9a10bda31e7316795f`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 521.3 KB (521279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71102f3592e74c44b9f1377a7c52975f3a53c2b06113c5397a3f597c68004040`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:c27b4cb99e02c8bc9f1cf6d40df79df5065d97bf281f3df11aed85c45c4a5ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34947516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7e63aea07fa0bd345bc6c1e09846c894e5691676c396757e66a08f8c5eaa45`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:36:26 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:28:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:28:32 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:29:06 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:07 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:29:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:29:07 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:29:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:29:08 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:29:08 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 18:16:33 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 18:16:34 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 18:16:35 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 18:16:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 18:16:51 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 18:16:52 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 18:16:53 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 18:16:53 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 18:16:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 18:16:54 GMT
USER adminer
# Fri, 22 Feb 2019 18:16:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:f6aae48fb68f5554b796fad9af32ad74994c043fcff463eb04bfa31cceded6fe`  
		Last Modified: Sat, 09 Feb 2019 14:00:33 GMT  
		Size: 12.0 MB (11986397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c3e2015d6479b816659c05f990a5631b9fecfb25f48b6e2a18514b6402e15`  
		Last Modified: Sat, 09 Feb 2019 14:00:31 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5733846997b9edbf07f81e1c29aa2cfce83899b5ae08277b800805cd68cde`  
		Last Modified: Fri, 22 Feb 2019 15:24:59 GMT  
		Size: 16.6 MB (16556208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c8a36541737af73a4db31e1f64bc45130f170932dfb8cf867b07671bf2403c`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636755fbfda5d29dc5310a4ff5f38ec9b007a11b8d01ad307dd7f3d6f4149395`  
		Last Modified: Fri, 22 Feb 2019 15:24:56 GMT  
		Size: 71.2 KB (71224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5ca5b98c98d459882044f22042246c356690e42d9bd7f727c445133561b82`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac71aa15cef006514cbf58f74fdd88f70cca89f534598ba601b84c12b1745d9`  
		Last Modified: Fri, 22 Feb 2019 18:17:19 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed370ff28afd79d1924c147f58e934c45afa5b3adaed96e42adce7ebf19ef594`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3141142d5176f698c6c07131ee3518286257cb4ca5fd5a80af91461a415cf6d8`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 MB (1386951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d38664eb304990e3196c1c9669b2a84098ffafdb8564d2f9c9a283bee7c5f6`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 127.3 KB (127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd401a1e2289fcb4dcd2f6d995ac55623c48dee123494c8248c39835640dca`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040a414c4c7efc4b2836cdab867b6c9bf94fdb6afc614ad409c92a7d328a0e3c`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 521.3 KB (521277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725048ffe42a821483d86e366f58104a26412c963e781534188bb4fda417c2b2`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:9458f67503c4cf222479a9ce23efd55df9de8abb726987b29874a3e64e42c75e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36179528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b6c2b87f161285cf135dbf7d451d08744f15f8eb06227088539bf72456768`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 12:15:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:15:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:15:50 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:20:19 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:20:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:20:25 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:20:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:20:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:24:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:46 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:24:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:24:51 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:24:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 10:24:57 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 10:24:59 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 12:01:15 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 12:01:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:01:23 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:01:46 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:01:47 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:01:48 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:01:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:01:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:01:57 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:01:58 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:01:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:02:01 GMT
USER adminer
# Sat, 09 Feb 2019 12:02:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:0dc10e0d0570c10d410d86d7c710e462d883681b9a264589e7d4f888fac805f7`  
		Last Modified: Sat, 09 Feb 2019 11:38:03 GMT  
		Size: 12.0 MB (11986418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e73504300d30ee5d8ff2780c64252088e4bc45f0b774af61eec123cd39179d`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f844d663ae2c8f60d45e6012a53006e8140701a98bfe2b3a671d61dc438c62`  
		Last Modified: Sat, 09 Feb 2019 11:38:09 GMT  
		Size: 17.8 MB (17841627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d262b0a2213ca68dc0ea7a45cd3d7f84f73b5aeeb0e93054c632e420c94cd3c5`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196681ae7ff252894c7d88a32bb0d295c3eeb3eb445ff62e4b3b63d68a4933a8`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552ed51dedc4fd2f11ab3183401cdaecf25ba3906ddec96ff837594b411dfab2`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6f29e5624bab9d63f18a768b6ad595f20c248ea109013bca668c38948d755`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b3fe4e4d8d38d4900f9caeb9f0f8aea4b95a6d670b330db76bc84476f0fec3`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753931ea1acf91dc7e5c86d0f62e16a69ba6bdbb6269f9432d53958e3259a27`  
		Last Modified: Sat, 09 Feb 2019 12:03:02 GMT  
		Size: 1.3 MB (1347519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515d5de0f807fe31de29f8407b8550225b90abf55e717ead1a4792c48a3bc36`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 134.2 KB (134169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332ac4ad6733f85f792683a7d298e7c4c28e23c653a01c65543a0c2e23b09cd3`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6e5d658aa17cc3c21e073165d529ecadb80ad04664eb309a243a85aa26d0b`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd5cda5c7db81f0ae8966b99cef520ac9a4a3dac3824e4d1e94d6b6686768af`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-standalone`

```console
$ docker pull adminer@sha256:9cd8cd78d4fa39c6a3d4aa0b0c5609ff7592eefaddb65657ee2cf67258fe1912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:4-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-standalone` - linux; 386

```console
$ docker pull adminer@sha256:eb53c1c51cf51970ac176f343bdf39700ab248524e3e60e9abebd52589ffb5fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35179415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f000edfce29b304f7da10d8965abd3df631ffe9eb52c0d8e74764bde3e5f1`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:28:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:28:12 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:07:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:07:41 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:07:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:07:42 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:07:43 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:07:59 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:08:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:08:00 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:08:01 GMT
USER adminer
# Sat, 09 Feb 2019 15:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:08:01 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd97eccc7f45cc463c2e605067189ae7b2014a8513258ccaa9379c51c6d5c07`  
		Last Modified: Sat, 09 Feb 2019 14:00:16 GMT  
		Size: 16.8 MB (16796377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65295e8610bb909ebcd3a7f8e3b21c85acc3d31fc95974c6581ddf0bc982e4f`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490412ab18b0db97ba3987bfd09ddf245c49825125420cdb83709584dfcdb8b5`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 71.2 KB (71222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76398cd48cba595b9e6f9ed08a855645df2a4b4af06cb9896d82896878e6bd43`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3aa019c681c1f74b2dede4c1ff8c85eec250fdd943104c305f815af7e7b47e`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01019de251592c22201d4a89548b09eb6679b9dbaea4f51049cdfa0d83fa2f5c`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 MB (1386934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc587a3f7295cbf325fb31da59ddf3eeceec6ec7c0681d2b070777ab44068c7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 127.3 KB (127307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4285ede1858bdbc796a2357a744f67a6fde617711b561c1aaade826de8981b42`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df76ac1074a5a8fa45951ee53defc02ace7a5c03631b54e0ca6c45133e89f7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119e14b065353f59d29355cdf1f1d8ec6311159274b5ed2b3ad40f979e1f8f6`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:0b64ff88f6f781215be76d37b099b17f0d2b3aed0e5955036c1cc0e6519f5757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:1368c1ad331a058ca4736319b4f6b4ee53ec67f1ea9a16667efbba25669eec29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34299198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519037acc2d7e829812f51ede18bbf62c03b65ce32194a9bf87e6477272c45dc`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 01:41:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:06:09 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:06:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:06:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:14:27 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:14:28 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:14:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:14:28 GMT
WORKDIR /var/www/html
# Thu, 21 Feb 2019 23:14:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Feb 2019 23:14:29 GMT
EXPOSE 9000
# Thu, 21 Feb 2019 23:14:29 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 02:56:46 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:47 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:57:04 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:57:05 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:57:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:57:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:57:06 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:57:07 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:57:07 GMT
USER adminer
# Fri, 22 Feb 2019 02:57:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:83b3ebf15fbb655fc69b4a0bef9f6d4b9c560ae57bf504340ff16b8083cb0581`  
		Last Modified: Sat, 09 Feb 2019 03:36:59 GMT  
		Size: 12.0 MB (11986391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd02670318417e288103805b2947105792f6e1c252a515b49d2c8fb675f74e`  
		Last Modified: Sat, 09 Feb 2019 03:36:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2ed82081d903a2b4b4d4e42e9f03b1e993b97ba915448f7b7ec0ed7cea7f4`  
		Last Modified: Fri, 22 Feb 2019 02:01:19 GMT  
		Size: 16.1 MB (16122642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df93195e010f3c6ce9ce2bd170841807797f6c85319480c0777798b24782e0d`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b3f5c5edee04b3a2fe348c3ee75feaad70896f9686454f55e2ef1ea3193589`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 72.1 KB (72090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720ec860b26895dcc68bc4f08f0ff23d7a6941755e17e1434edd2fd621b3de5e`  
		Last Modified: Fri, 22 Feb 2019 02:01:14 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92683e498ac9f686d42c324f9faa381146186b7f26f83729751c15f395d10b13`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78afd3b17046b89a23b3df0df75cbf1bea876848e9fee7328bc134aabf3ff8`  
		Last Modified: Fri, 22 Feb 2019 02:57:30 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f582b3883817042f639fec13eb4942f055caff796dc1568d31bae553e09ab47`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.3 MB (1267089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f119056f78dafdd55f5c115e243e36b10f028bd8f56504ddfceb8c7e00601acf`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 124.6 KB (124567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5253b10e2fe0db902bdb8a6d6ce2f0153bc8fbbf02c183686604c5b7ec2d158`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155a737ffdc3b2d4c07ef9d9953632452075905fc709b51ab93cb7d57f1a210e`  
		Last Modified: Fri, 22 Feb 2019 02:57:29 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6c4b6b5a13e8c51b721a58db8cb0682a5fbc5b29480a35401c41ab74c68f48`  
		Last Modified: Fri, 22 Feb 2019 02:57:31 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:f718926ae49b2f69809f4f704c53228810e0b2dd9c3ff7d2a422778791b26592
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33016623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1774483aea77779e16090dcf3a103dfe7b424850451e0f477a82cf7dd83bb934`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:16:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:16:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:16:28 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:06:59 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:07:03 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:07:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:10:32 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:10:34 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:10:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:10:36 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 09:10:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 09:10:39 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 09:10:39 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 10:07:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:07:07 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:07:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:07:36 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:07:37 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:07:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:07:40 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:07:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:07:41 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:07:41 GMT
USER adminer
# Sat, 09 Feb 2019 10:07:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e64514827168e1a10dcb31c2244c1629d41f9b57ec0433cdc3187bd9beeb7c`  
		Last Modified: Sat, 09 Feb 2019 09:48:06 GMT  
		Size: 12.0 MB (11986416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0974d4fbb3c42bbaeec71e97bb03841ff1a7ba9b27920cc6f5e6be6ce5634f`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f205f13cbef3295bed6c7d6a9ebad93645e567ed304b4ac43623de8e593ba7`  
		Last Modified: Sat, 09 Feb 2019 09:48:09 GMT  
		Size: 15.2 MB (15177589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596cc74977b675ce21bd1735806bb214565e7945fbfb06f00ba59b0ee1ff544d`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248206b5de057f95f9acbf332e41cd17efff5e8f4258bfd4045623fb6f7cb57`  
		Last Modified: Sat, 09 Feb 2019 09:48:03 GMT  
		Size: 71.6 KB (71618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f78ae5d56694ab0fa5a8f6c5e9ff472ef0d21d25c240a69c04a99a1ffc1f50`  
		Last Modified: Sat, 09 Feb 2019 09:48:04 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30198fde9a0efa22398f9d393b67d3cf3c1affcba4d3c502168fe86610ceec83`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4780fc08b58d92901a0ccba8c3a30c65782d7f96727945e0d730da20e4d18a6`  
		Last Modified: Sat, 09 Feb 2019 10:08:20 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4160679ccef725208a0dec2f43f1b023856af5dde977b006b862bff0b0556270`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.2 MB (1204730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672c9d4e8f1f940c334de009d09dc20488c8e3d935ea269c38e2eee0627a9332`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 117.6 KB (117631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae59d75ac284f81aa4951f2db8066328891f792b01c1f0cb212968f6cd0b3`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517a5bda983309ed8a3c49efedc015a57bd9a9a1d42c8df77fa16e5369d7f9b4`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edfe62b42305a52c8f6da67797a6360333998bb8fb8f61d8e46ba54a9ff3566`  
		Last Modified: Sat, 09 Feb 2019 10:08:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:0ff9d9970240751e14a1cbaf42ac90b30970429874df349a763bc04a83a27d96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34319873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d676a09b70a7b34ac6af0338ed171ace863776a9ca4a385ed08913c255dc0a6`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 13:25:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 13:25:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:25:04 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:14:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:14:42 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:14:50 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:14:51 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:29 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:25:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:25:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:25:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:25:34 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 11:25:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 11:25:37 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 11:25:38 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 15:24:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:24:13 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:24:16 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:24:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:24:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:24:56 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:24:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:24:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:25:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:25:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:25:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:25:04 GMT
USER adminer
# Sat, 09 Feb 2019 15:25:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:bf043c84231e53bdfb59decece2ea18a7243665bf0e6abb50a23347a54d10006`  
		Last Modified: Sat, 09 Feb 2019 13:44:58 GMT  
		Size: 12.0 MB (11986405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeea523a012a81302604bc9fe2861901108cb0a4ee7c1547c24b1046c13e50f`  
		Last Modified: Sat, 09 Feb 2019 13:44:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fa1200576c93567945826bda7bd42aba16d6cdad104fe930580332741466ed`  
		Last Modified: Sat, 09 Feb 2019 13:45:01 GMT  
		Size: 16.2 MB (16179267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fd9d07da984e12b02ccd03ddb19ac71977c67d06827c5aaff4345c4991b5e`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a2bed5996f17261910cf27e711aa8eb7a2c29f9d3e0fdee6a9abc0d282ae53`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 71.1 KB (71110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03c50306bfc891e1be3a4ecb454c3e7d2fa243f79b7a029792b8e0a256779a9`  
		Last Modified: Sat, 09 Feb 2019 13:44:54 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3673d283ec1de21c1ca725ded2896be0c7227c521928000d8368f15c921feba6`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f28bbfbbcacff3673e7422540d3c12e754abe64368dd6eec1ef694c40841d92`  
		Last Modified: Sat, 09 Feb 2019 15:26:01 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d812178936663c5832fae4184b5d08852c81645d5f5f7caba9ba087a2a29526`  
		Last Modified: Sat, 09 Feb 2019 15:26:00 GMT  
		Size: 1.3 MB (1294396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2c7e53bf41540d402e0c51b396a9470a46e782dde38741d6050167b9fbb354`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 122.2 KB (122163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9276c347d8169847bcff5c295f37869f5692989d18072bebed3fc2f87177ef`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09416fc675d72b4a1e9b862cc0a5f278e1068a720ef8e9a10bda31e7316795f`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 521.3 KB (521279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71102f3592e74c44b9f1377a7c52975f3a53c2b06113c5397a3f597c68004040`  
		Last Modified: Sat, 09 Feb 2019 15:25:59 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:c27b4cb99e02c8bc9f1cf6d40df79df5065d97bf281f3df11aed85c45c4a5ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34947516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7e63aea07fa0bd345bc6c1e09846c894e5691676c396757e66a08f8c5eaa45`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:36:26 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:28:29 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:28:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:28:32 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:29:06 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:29:07 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:29:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:29:07 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:29:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:29:08 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:29:08 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 18:16:33 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 18:16:34 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 18:16:35 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 18:16:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 18:16:51 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 18:16:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 18:16:52 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 18:16:53 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 18:16:53 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 18:16:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 18:16:54 GMT
USER adminer
# Fri, 22 Feb 2019 18:16:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:f6aae48fb68f5554b796fad9af32ad74994c043fcff463eb04bfa31cceded6fe`  
		Last Modified: Sat, 09 Feb 2019 14:00:33 GMT  
		Size: 12.0 MB (11986397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c3e2015d6479b816659c05f990a5631b9fecfb25f48b6e2a18514b6402e15`  
		Last Modified: Sat, 09 Feb 2019 14:00:31 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5733846997b9edbf07f81e1c29aa2cfce83899b5ae08277b800805cd68cde`  
		Last Modified: Fri, 22 Feb 2019 15:24:59 GMT  
		Size: 16.6 MB (16556208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c8a36541737af73a4db31e1f64bc45130f170932dfb8cf867b07671bf2403c`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636755fbfda5d29dc5310a4ff5f38ec9b007a11b8d01ad307dd7f3d6f4149395`  
		Last Modified: Fri, 22 Feb 2019 15:24:56 GMT  
		Size: 71.2 KB (71224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5ca5b98c98d459882044f22042246c356690e42d9bd7f727c445133561b82`  
		Last Modified: Fri, 22 Feb 2019 15:24:55 GMT  
		Size: 8.3 KB (8265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac71aa15cef006514cbf58f74fdd88f70cca89f534598ba601b84c12b1745d9`  
		Last Modified: Fri, 22 Feb 2019 18:17:19 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed370ff28afd79d1924c147f58e934c45afa5b3adaed96e42adce7ebf19ef594`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3141142d5176f698c6c07131ee3518286257cb4ca5fd5a80af91461a415cf6d8`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 1.4 MB (1386951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d38664eb304990e3196c1c9669b2a84098ffafdb8564d2f9c9a283bee7c5f6`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 127.3 KB (127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd401a1e2289fcb4dcd2f6d995ac55623c48dee123494c8248c39835640dca`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040a414c4c7efc4b2836cdab867b6c9bf94fdb6afc614ad409c92a7d328a0e3c`  
		Last Modified: Fri, 22 Feb 2019 18:17:17 GMT  
		Size: 521.3 KB (521277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725048ffe42a821483d86e366f58104a26412c963e781534188bb4fda417c2b2`  
		Last Modified: Fri, 22 Feb 2019 18:17:18 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:9458f67503c4cf222479a9ce23efd55df9de8abb726987b29874a3e64e42c75e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36179528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b6c2b87f161285cf135dbf7d451d08744f15f8eb06227088539bf72456768`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 12:15:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:15:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 12:15:50 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 10:20:19 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:20:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:20:25 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:20:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:20:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:24:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:24:46 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:24:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:24:51 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:24:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 10:24:57 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 10:24:59 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 12:01:15 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 12:01:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:01:23 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:01:46 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:01:47 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:01:48 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:01:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:01:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:01:57 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:01:58 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:01:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:02:01 GMT
USER adminer
# Sat, 09 Feb 2019 12:02:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:0dc10e0d0570c10d410d86d7c710e462d883681b9a264589e7d4f888fac805f7`  
		Last Modified: Sat, 09 Feb 2019 11:38:03 GMT  
		Size: 12.0 MB (11986418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e73504300d30ee5d8ff2780c64252088e4bc45f0b774af61eec123cd39179d`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f844d663ae2c8f60d45e6012a53006e8140701a98bfe2b3a671d61dc438c62`  
		Last Modified: Sat, 09 Feb 2019 11:38:09 GMT  
		Size: 17.8 MB (17841627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d262b0a2213ca68dc0ea7a45cd3d7f84f73b5aeeb0e93054c632e420c94cd3c5`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196681ae7ff252894c7d88a32bb0d295c3eeb3eb445ff62e4b3b63d68a4933a8`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552ed51dedc4fd2f11ab3183401cdaecf25ba3906ddec96ff837594b411dfab2`  
		Last Modified: Sat, 09 Feb 2019 11:37:58 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6f29e5624bab9d63f18a768b6ad595f20c248ea109013bca668c38948d755`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b3fe4e4d8d38d4900f9caeb9f0f8aea4b95a6d670b330db76bc84476f0fec3`  
		Last Modified: Sat, 09 Feb 2019 12:03:06 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753931ea1acf91dc7e5c86d0f62e16a69ba6bdbb6269f9432d53958e3259a27`  
		Last Modified: Sat, 09 Feb 2019 12:03:02 GMT  
		Size: 1.3 MB (1347519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515d5de0f807fe31de29f8407b8550225b90abf55e717ead1a4792c48a3bc36`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 134.2 KB (134169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332ac4ad6733f85f792683a7d298e7c4c28e23c653a01c65543a0c2e23b09cd3`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6e5d658aa17cc3c21e073165d529ecadb80ad04664eb309a243a85aa26d0b`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd5cda5c7db81f0ae8966b99cef520ac9a4a3dac3824e4d1e94d6b6686768af`  
		Last Modified: Sat, 09 Feb 2019 12:03:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:latest`

```console
$ docker pull adminer@sha256:9cd8cd78d4fa39c6a3d4aa0b0c5609ff7592eefaddb65657ee2cf67258fe1912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `adminer:latest` - linux; amd64

```console
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; 386

```console
$ docker pull adminer@sha256:eb53c1c51cf51970ac176f343bdf39700ab248524e3e60e9abebd52589ffb5fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35179415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f000edfce29b304f7da10d8965abd3df631ffe9eb52c0d8e74764bde3e5f1`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:28:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:28:12 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:07:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:07:41 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:07:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:07:42 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:07:43 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:07:59 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:08:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:08:00 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:08:01 GMT
USER adminer
# Sat, 09 Feb 2019 15:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:08:01 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd97eccc7f45cc463c2e605067189ae7b2014a8513258ccaa9379c51c6d5c07`  
		Last Modified: Sat, 09 Feb 2019 14:00:16 GMT  
		Size: 16.8 MB (16796377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65295e8610bb909ebcd3a7f8e3b21c85acc3d31fc95974c6581ddf0bc982e4f`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490412ab18b0db97ba3987bfd09ddf245c49825125420cdb83709584dfcdb8b5`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 71.2 KB (71222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76398cd48cba595b9e6f9ed08a855645df2a4b4af06cb9896d82896878e6bd43`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3aa019c681c1f74b2dede4c1ff8c85eec250fdd943104c305f815af7e7b47e`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01019de251592c22201d4a89548b09eb6679b9dbaea4f51049cdfa0d83fa2f5c`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 MB (1386934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc587a3f7295cbf325fb31da59ddf3eeceec6ec7c0681d2b070777ab44068c7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 127.3 KB (127307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4285ede1858bdbc796a2357a744f67a6fde617711b561c1aaade826de8981b42`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df76ac1074a5a8fa45951ee53defc02ace7a5c03631b54e0ca6c45133e89f7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119e14b065353f59d29355cdf1f1d8ec6311159274b5ed2b3ad40f979e1f8f6`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:standalone`

```console
$ docker pull adminer@sha256:9cd8cd78d4fa39c6a3d4aa0b0c5609ff7592eefaddb65657ee2cf67258fe1912
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
$ docker pull adminer@sha256:dd838c258cd0960fcb5dd5b9b77e5f4e2f3cd6bb3a71544a0a329e88d41db33d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34226633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c68e0244fba9fa59fc718b60b51bb0a01df868f10622ba7220f24ee52a6ff34`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 01:57:20 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 01:57:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 01:57:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Feb 2019 23:08:35 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:08:36 GMT
RUN docker-php-ext-enable sodium
# Thu, 21 Feb 2019 23:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Feb 2019 23:08:37 GMT
CMD ["php" "-a"]
# Fri, 22 Feb 2019 02:56:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Fri, 22 Feb 2019 02:56:19 GMT
STOPSIGNAL SIGINT
# Fri, 22 Feb 2019 02:56:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 22 Feb 2019 02:56:20 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 02:56:21 GMT
RUN apk add --no-cache libpq
# Fri, 22 Feb 2019 02:56:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 22 Feb 2019 02:56:37 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_VERSION=4.7.1
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Fri, 22 Feb 2019 02:56:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Fri, 22 Feb 2019 02:56:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 22 Feb 2019 02:56:39 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Fri, 22 Feb 2019 02:56:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 22 Feb 2019 02:56:40 GMT
USER adminer
# Fri, 22 Feb 2019 02:56:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 22 Feb 2019 02:56:40 GMT
EXPOSE 8080
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
	-	`sha256:35bcd6f48340798feda11444b95119b22ac181a7d665dbd38296a9eb46b65d3d`  
		Last Modified: Sat, 09 Feb 2019 03:36:42 GMT  
		Size: 12.0 MB (11986396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d701594273966811f2b181ec278ff8dbc7f47ddac934fb31add1ac89efe210b`  
		Last Modified: Sat, 09 Feb 2019 03:36:41 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443bb7e389df8b432f3564c95d005611ae0acd3d2ecc90d5164ef7996d73f65`  
		Last Modified: Fri, 22 Feb 2019 02:00:55 GMT  
		Size: 16.1 MB (16058336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b567d694ee1df99f22a8945aca7230c604e2c5a97ff85464da66c8271d79d8`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a237bc884b405c50a69378fd94a05a09b86a3f68a7fb355ada931ba2908840ee`  
		Last Modified: Fri, 22 Feb 2019 02:00:51 GMT  
		Size: 72.1 KB (72096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdb6f678969d8697ef4d50701c1ef212522f05b74536f3af59ff6a51d6a1d3a`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fccd18bd023bb699caffbcd5a3579db43fe6979d9a06a1ce99b37c34eb9ff2`  
		Last Modified: Fri, 22 Feb 2019 02:57:20 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b91c53faa37531bb55f805c0f68e65e26b870e97b5ca6c2231d6f6a75f9bfe2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.3 MB (1267086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db89087271c2f10786054de62e6bca4592c3df0fd7a69321e3a1303ba8429ee9`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 124.6 KB (124572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9628fdcc2a6d9fcc21ba4b30e47a99d01c6cff7c36d93ee755ee8556851d641`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcc9d128dd6613c5a6691a5e3ca2661d00192ffd7aa9f2f274422aa39ae4640`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bc72681c1542c719d1e9b748840be282343b2906211e952a2e24e3a07c9cb2`  
		Last Modified: Fri, 22 Feb 2019 02:57:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8289e8f403eb767bb4125f8bf2d25c92d73748b10e93f65c37c10e8cd7fb4ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32942101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a076f5aa5ec1ce178e7af58cdc05ca2b9fb09ec7cc0c45e50e025f8acf9b528`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:12:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 09:12:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 09:12:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 09:12:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:12:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 09:12:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 09:12:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 09:12:44 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 09:03:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 09:03:13 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 09:03:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 09:03:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 09:06:45 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 09:06:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 09:06:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 09:06:48 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 10:06:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 10:06:20 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 10:06:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 10:06:22 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 10:06:24 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 10:06:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 10:06:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 10:06:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 10:06:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 10:06:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:06:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:06:57 GMT
USER adminer
# Sat, 09 Feb 2019 10:06:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 10:06:58 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8664ed55ce528699662d07296c3cfd0e0f9bcfabbc4589f4281fab2e42626`  
		Last Modified: Wed, 06 Feb 2019 10:20:24 GMT  
		Size: 1.4 MB (1380229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609839501bc329be4054e5c87fc5b159ac5f9ddc4baa907c47bbbc0334a6aa2a`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f17fafac43942d0ff36042295641d7831e1b1e90a3d9497bcaa7c717c5b0c5`  
		Last Modified: Wed, 06 Feb 2019 10:20:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fa6a641e5922e46e6800988dda323bdfa182b92c10ca05fc52f054517204a3`  
		Last Modified: Sat, 09 Feb 2019 09:47:25 GMT  
		Size: 12.0 MB (11986421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138c06927d033c54e2cd8e3f0ff277a3b9c4ede8b31f6f66abf48c2db4f9812`  
		Last Modified: Sat, 09 Feb 2019 09:47:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13456f897a7ee20a1ac8c514201a283ff85813f1a88766d14d69c85b42d98378`  
		Last Modified: Sat, 09 Feb 2019 09:47:29 GMT  
		Size: 15.1 MB (15111344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3544178bdffc1331209bc9452ff195e3bdf7536ff8b4d16bd256d5eb5a5965`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee1c38c37b8a8f217a79c582cd5e99f125d202ce25b9394a24e38592079187`  
		Last Modified: Sat, 09 Feb 2019 09:47:23 GMT  
		Size: 71.6 KB (71617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefed00882c8d6da1534c5b168607fad54894e608794b87affefb0c46ecae6d7`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c98f3e44b4f24b52bf53baff42810f5e8aff1260157053d357a0d5042da24`  
		Last Modified: Sat, 09 Feb 2019 10:07:59 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2d854490c2c0df1e5c50bf718b8c61625ad5a04cf3528f87d84114fc34317`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.2 MB (1204728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fe85bed8e4613488046ec07202d93241636de5a25407329a5de3e09f7f6842`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 117.6 KB (117616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742e7d88f5b3c071067b8a13e7188046145dd33304c1d91b580715f70cbaf641`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5d92088a6d7f3e8adab262abc8bf77d16a1c47ee649cc2b0108f48aa1a73`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49643907b3f89c10bc93e8f5c50bd498c8a5e868c4fb44db23f3f5ef684fa5f`  
		Last Modified: Sat, 09 Feb 2019 10:07:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:843f37316dd69771bf172b5f03f27d7dc184979dd889d97d45c1d6b1d1627fb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34249590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c441490a22651a8d01c91989a97eb48ba28d49fc31391b5383eff89560ac7b2`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 11:02:49 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 11:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:02:51 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 11:03:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:03:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:13 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 11:14:14 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 11:14:18 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 11:14:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 11:14:20 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:22:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:22:37 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:22:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:22:41 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:22:45 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:23:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:23:46 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:23:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:23:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:23:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:23:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:23:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:23:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:23:56 GMT
USER adminer
# Sat, 09 Feb 2019 15:23:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:23:59 GMT
EXPOSE 8080
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
	-	`sha256:bde05d0ba9606adc21b1ff3ebc6c54cd76f37c3e3a9683dca34c0e0b37fd92f3`  
		Last Modified: Sat, 09 Feb 2019 13:44:10 GMT  
		Size: 12.0 MB (11986404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ad0e44c78bfa2e124868c5d6acbe84946a68065aed0840ff8804b45df80834`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3929ab9cb346a869b287a8519d651b434ae47ea6dc8aa0e2478629e6ef6ea`  
		Last Modified: Sat, 09 Feb 2019 13:44:15 GMT  
		Size: 16.1 MB (16117236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e3bfa20b95c6678d331ec7fc5f4dccbc5e276d32af7f79c1ceeb003eabde0b`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d0b45c54c8224c9620ded8b7b01af5343a0700987e85456877612ba6414f1a`  
		Last Modified: Sat, 09 Feb 2019 13:44:08 GMT  
		Size: 71.1 KB (71111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59570f1c1b9f3b9dd87182106a20d7dc0bd03e0c0466786037894be15e5670`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0f6da075f68a303a7e628a008ceead43ec6f1de2ed31c6b72a346b4406542`  
		Last Modified: Sat, 09 Feb 2019 15:25:24 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c17ae2d62025afd04698fd0c3ac82c9c96c2991815c528a4c3270554429901`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.3 MB (1294395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2ea92f59c57c42bb0d8214efb3a2eb6f35efd10f894c42586054114d4bec4`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 122.2 KB (122177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff73a3a87f565e51d4c817905f5113f50383acf978468ea99d32ecfa4b21c19`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9553289f4ed76f0c6ad6100da58b7e74218cef52573e061cfc17073f655ee878`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 521.3 KB (521280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3598284d8b956a06d78a8b446ea205d9fea77b3e8fa1616f9a4e03157277af41`  
		Last Modified: Sat, 09 Feb 2019 15:25:22 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; 386

```console
$ docker pull adminer@sha256:eb53c1c51cf51970ac176f343bdf39700ab248524e3e60e9abebd52589ffb5fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35179415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f000edfce29b304f7da10d8965abd3df631ffe9eb52c0d8e74764bde3e5f1`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:21:57 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 12:22:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 12:22:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 12:28:11 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:28:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 12:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:28:12 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 15:07:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 15:07:41 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 15:07:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 15:07:42 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 15:07:43 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 15:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 15:07:59 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 15:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 15:08:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 15:08:00 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 15:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 15:08:01 GMT
USER adminer
# Sat, 09 Feb 2019 15:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 15:08:01 GMT
EXPOSE 8080
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
	-	`sha256:8163d8bb5e9b751fccd76804d37cbf270eddfb7eb092e732cad739ab25e246b1`  
		Last Modified: Sat, 09 Feb 2019 14:00:15 GMT  
		Size: 12.0 MB (11986406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afcba39ba722756badfa1f8beabfe3d1948ea34a36f3f4ec1312d9154b72d9`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd97eccc7f45cc463c2e605067189ae7b2014a8513258ccaa9379c51c6d5c07`  
		Last Modified: Sat, 09 Feb 2019 14:00:16 GMT  
		Size: 16.8 MB (16796377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65295e8610bb909ebcd3a7f8e3b21c85acc3d31fc95974c6581ddf0bc982e4f`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490412ab18b0db97ba3987bfd09ddf245c49825125420cdb83709584dfcdb8b5`  
		Last Modified: Sat, 09 Feb 2019 14:00:11 GMT  
		Size: 71.2 KB (71222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76398cd48cba595b9e6f9ed08a855645df2a4b4af06cb9896d82896878e6bd43`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3aa019c681c1f74b2dede4c1ff8c85eec250fdd943104c305f815af7e7b47e`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01019de251592c22201d4a89548b09eb6679b9dbaea4f51049cdfa0d83fa2f5c`  
		Last Modified: Sat, 09 Feb 2019 15:08:41 GMT  
		Size: 1.4 MB (1386934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc587a3f7295cbf325fb31da59ddf3eeceec6ec7c0681d2b070777ab44068c7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 127.3 KB (127307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4285ede1858bdbc796a2357a744f67a6fde617711b561c1aaade826de8981b42`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df76ac1074a5a8fa45951ee53defc02ace7a5c03631b54e0ca6c45133e89f7`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e119e14b065353f59d29355cdf1f1d8ec6311159274b5ed2b3ad40f979e1f8f6`  
		Last Modified: Sat, 09 Feb 2019 15:08:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:6ff1d072d2d984ddb20da35a0af4e692594a407ae0fe1dd340c8ef013edf95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36096303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a160ceddbd9cd6eff2692d840fad15966279324caee97e921ada99753f6230`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Sat, 09 Feb 2019 10:15:36 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 10:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 10:15:41 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 10:15:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 10:15:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:19:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 10:19:55 GMT
COPY multi:ca5e0e0a22a9acaec52323defcda7c7634bb6522f257ec20bee1888aede2387a in /usr/local/bin/ 
# Sat, 09 Feb 2019 10:20:02 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 10:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 10:20:07 GMT
CMD ["php" "-a"]
# Sat, 09 Feb 2019 11:59:54 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Feb 2019 11:59:57 GMT
STOPSIGNAL SIGINT
# Sat, 09 Feb 2019 12:00:02 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Feb 2019 12:00:04 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 12:00:09 GMT
RUN apk add --no-cache libpq
# Sat, 09 Feb 2019 12:00:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Feb 2019 12:00:33 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Feb 2019 12:00:36 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Feb 2019 12:00:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Feb 2019 12:00:41 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Feb 2019 12:00:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Feb 2019 12:00:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Feb 2019 12:00:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Feb 2019 12:00:55 GMT
USER adminer
# Sat, 09 Feb 2019 12:01:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Feb 2019 12:01:04 GMT
EXPOSE 8080
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
	-	`sha256:abc152f5e695baae7b54d38dc275340e78cb014fde7df0fbd74329932d1bc2a7`  
		Last Modified: Sat, 09 Feb 2019 11:37:03 GMT  
		Size: 12.0 MB (11986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727699081e1a26cfa1381f1781b671fcffe16c139be9d382ee6b5b579d5a4c2b`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4938b0d658c9346284005a9acef78d9185bbfc777581fc05c5065618395529fc`  
		Last Modified: Sat, 09 Feb 2019 11:37:10 GMT  
		Size: 17.8 MB (17766653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757742f361100f8119deac2bea0c2b910829c48fa5dc41898cd777691160e08c`  
		Last Modified: Sat, 09 Feb 2019 11:37:01 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545c070f8f7c299077e4d4d6c5c92d3fcc136952e774f093727d5c595e9abd9`  
		Last Modified: Sat, 09 Feb 2019 11:37:02 GMT  
		Size: 71.9 KB (71900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2125afb7302ea73839ea408c2125029aaad04f74e9f9e773ad2c64e83aa11c`  
		Last Modified: Sat, 09 Feb 2019 12:02:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e1d54b5be64da6212900de209b975b1afa627a253ff44ad6b3c0d995559f29`  
		Last Modified: Sat, 09 Feb 2019 12:02:25 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef736e998654b54dbffd558295eb6d23c599963268914a178b5099bb9155a4`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.3 MB (1347518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32858706bad2628fc8060d7f2e8e233ca12efbaedd4d6ea7ba5da02ef59d4e`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 134.2 KB (134170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1da0529032bfeb2e863795152fcbe3f04bf8e526970e4602ef6592110c87074`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0832d8ce9ddc302d4ffe7d97b39016ea6594e4488106fcf8253862e3af8349d`  
		Last Modified: Sat, 09 Feb 2019 12:02:24 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd69c9677f8b8c5ce4b8ba6919f23cf0634a3bddc142fe9fd1c66fdb234c53`  
		Last Modified: Sat, 09 Feb 2019 12:02:23 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
