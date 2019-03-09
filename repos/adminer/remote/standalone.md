## `adminer:standalone`

```console
$ docker pull adminer@sha256:4deac1f33afc32e58e78ca4cb633990845b765a2e30eaaf3ec962f021a519d57
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
$ docker pull adminer@sha256:0b4a093a9779750b5b1ee51fe89f27530cef6e348235064001bab95d0b5f98a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34240602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709d7ce11f753f00aecfd57551c598b3aad711bed970891ad3a3202761d44723`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:24:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 00:51:51 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 09 Mar 2019 00:51:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 00:51:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 00:51:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 00:51:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 00:51:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 00:51:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 00:51:54 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 00:51:54 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 00:51:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 00:51:55 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 00:52:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 00:52:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 01:00:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 01:00:48 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 01:00:49 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 01:00:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 01:00:50 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 04:32:34 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 04:32:34 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 04:32:35 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 04:32:35 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 04:32:36 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 04:32:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 04:32:53 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 04:32:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 04:32:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 04:32:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 04:32:55 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 04:32:55 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 04:32:55 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 04:32:55 GMT
USER adminer
# Sat, 09 Mar 2019 04:32:55 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 04:32:56 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40247b69e7b169c0591227cc3336fb8a8259b8c20a5e1b55c99e45e37e32c064`  
		Last Modified: Sat, 09 Mar 2019 04:12:33 GMT  
		Size: 1.4 MB (1436217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26a8200283e8d6f8858552e823aaabb9942605a48db9660e635e94530a630c3`  
		Last Modified: Sat, 09 Mar 2019 04:12:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2666bd30975936152ff6bb14e48cddfcf304779d90676d419cd22936965f661`  
		Last Modified: Sat, 09 Mar 2019 04:12:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed844372d1629b3170a444d9205810e75966ae2183859d709bf690dce9e9f529`  
		Last Modified: Sat, 09 Mar 2019 04:12:32 GMT  
		Size: 12.0 MB (11991788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f1327ba55795ca17c7c4635bec12bfbd40989f1b31510b12ac0bf63cc144f`  
		Last Modified: Sat, 09 Mar 2019 04:12:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27923b49fa5b380c65314d731b76102e49334dde79a69ca05a10f5e99310f061`  
		Last Modified: Sat, 09 Mar 2019 04:12:35 GMT  
		Size: 16.1 MB (16065082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee8ff38396b9980c1b1df6e12cf7e81f03037458aa369d174d385f4d4dc71c6`  
		Last Modified: Sat, 09 Mar 2019 04:12:31 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343af66c7edff1fd10d14e4fca436ed0aa69b8b8dba5b70d54517c3ec8c9b242`  
		Last Modified: Sat, 09 Mar 2019 04:12:31 GMT  
		Size: 72.0 KB (71962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e4b6de1000e60dd474bde3b449328ecb9619cccc655079be42da44815d6679`  
		Last Modified: Sat, 09 Mar 2019 04:33:35 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06db234b8027a2eb5a3ec7e625913ad73ce7341af3dd3bfa3b3535dc854b15ce`  
		Last Modified: Sat, 09 Mar 2019 04:33:35 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910c4cbb76ab404feb228aae0856613dadb63f941e06a8cfbf35f4ca09b3a50e`  
		Last Modified: Sat, 09 Mar 2019 04:33:34 GMT  
		Size: 1.3 MB (1266874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ab6ce0dbc5892f44f6ffc97878d2d6e3bfbaf1c7ba40f52e50eb39edb02a71`  
		Last Modified: Sat, 09 Mar 2019 04:33:34 GMT  
		Size: 124.9 KB (124904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdf90a2725b47e22aeeeb3dfd5cef45ebba2b5deda8633ebe4957cb68d6d4fe`  
		Last Modified: Sat, 09 Mar 2019 04:33:34 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6759fd87dc0189c812e937cee077cfaa52c3f3728e5b3f11beac202cef7b764f`  
		Last Modified: Sat, 09 Mar 2019 04:33:34 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877e824141a5c78176911c3b7b9897cf83d31fdaeb09e7243a1fe558bdbeb23c`  
		Last Modified: Sat, 09 Mar 2019 04:33:35 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:443f0cf2c4254c4c30c9fbdfac792c7ac1e83fe955e4ed9ee96c37cd9fa791c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32684745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2303f82899d703ccfc1124452d4ad8401da6d171e8b3e1fd8a8f8c778d3938`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:23:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 08:49:35 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 09 Mar 2019 08:49:36 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 08:49:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 08:49:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 08:49:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:49:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:49:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 08:49:40 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 08:49:40 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 08:49:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 08:49:41 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 08:49:45 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 08:49:46 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 08:53:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 08:53:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 08:53:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 08:53:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 08:53:15 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 10:19:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 10:19:19 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 10:19:21 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 10:19:21 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 10:19:23 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 10:19:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 10:19:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 10:19:52 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 10:19:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 10:19:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 10:19:55 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 10:19:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:19:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 10:19:56 GMT
USER adminer
# Sat, 09 Mar 2019 10:19:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 10:19:57 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccca7b96518f7a52629d1eca6b7d062e578aa0e5b1de1fa798ce8e054170cef0`  
		Last Modified: Sat, 09 Mar 2019 09:58:36 GMT  
		Size: 1.4 MB (1381472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2489a1edb8a922433b5ddcb10bec06fb7a999b9b146c99d02db76f731f53af`  
		Last Modified: Sat, 09 Mar 2019 09:58:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011b944fd1a5f90179e427924982e74c8df0d40c99666d6478d8ecf81d191c5`  
		Last Modified: Sat, 09 Mar 2019 09:58:35 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be911fe7e3f900e1a9e3832a283a13f3fba2387888f51188ce85fb32398ee7f1`  
		Last Modified: Sat, 09 Mar 2019 09:58:35 GMT  
		Size: 12.0 MB (11991807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f518fe685c608f5798046ef8bf7b256fa7bea10fd7f861fbf870752f6c705aa8`  
		Last Modified: Sat, 09 Mar 2019 09:58:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593a6d650328509af1d67ac2e7b39a45bfdfda0ae678cc4f99398608ca36e40d`  
		Last Modified: Sat, 09 Mar 2019 09:58:40 GMT  
		Size: 14.8 MB (14847819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b44a60d41fd8fc78b9719dc7cad4cf481bc4d09bb3d7f07fabe202f7475725`  
		Last Modified: Sat, 09 Mar 2019 09:58:34 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890520ac5457d9418a0a5728a5c3d6bbc5c462335e925d850fa53d9f605a0b89`  
		Last Modified: Sat, 09 Mar 2019 09:58:34 GMT  
		Size: 71.5 KB (71479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4276b5d4619ca8903a8807a603d3845cb7c604ebd49737eb039baa5d6dc1dd`  
		Last Modified: Sat, 09 Mar 2019 10:21:00 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5270bd9f7f16c1e213ba771b5feb11f422bb3a3d18edf1b089d65f1f785eefb1`  
		Last Modified: Sat, 09 Mar 2019 10:21:00 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee57df04abefeb8b2b106fefa9310d0867427b496ac810ee7a1714e0c35175da`  
		Last Modified: Sat, 09 Mar 2019 10:20:58 GMT  
		Size: 1.2 MB (1204698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100994a28cc65568c10818ddbd885d310df0f4a35b890e986258808e75d33779`  
		Last Modified: Sat, 09 Mar 2019 10:20:58 GMT  
		Size: 117.6 KB (117570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5881ed0927edc084c2bebc3742cd9116591cc2cf72c307f9fd14150b03e86591`  
		Last Modified: Sat, 09 Mar 2019 10:20:58 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439acbd09b64e43a971205d88c78db7c5d62712cba534d97e8e83a019bf6cd0d`  
		Last Modified: Sat, 09 Mar 2019 10:20:58 GMT  
		Size: 521.3 KB (521328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dcd9fef12cf701f680346f8c8b5dd386e0b3e5822c97ba2c6a69f5f6f8ac70`  
		Last Modified: Sat, 09 Mar 2019 10:20:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:cbbbe5e57cd5a824e56a5679bf1fab6ac27bb9bf79976cbf548eca78b9dd49e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (33971641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1122ceed6fc29b4af8ec3820dd6a971b096a9fcd266c0ecdbd0c4c9f07816b4b`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:42:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 10:51:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 09 Mar 2019 10:52:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 10:52:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 10:52:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 10:52:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 10:52:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 10:52:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 10:52:12 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 10:52:13 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 10:52:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 10:52:15 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 10:52:24 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 10:52:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:03:26 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 11:03:28 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:03:30 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 11:03:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 11:03:31 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 15:20:11 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 15:20:11 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 15:20:13 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 15:20:14 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 15:20:16 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 15:20:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 15:20:52 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 15:20:53 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 15:20:54 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 15:20:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 15:20:58 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 15:20:58 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:20:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 15:21:00 GMT
USER adminer
# Sat, 09 Mar 2019 15:21:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 15:21:02 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c56540f8202c1078f9a51589e3c579e552e061447eb9f3b7d90f1d5f31559d2`  
		Last Modified: Sat, 09 Mar 2019 14:55:30 GMT  
		Size: 1.4 MB (1443017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b233018516e383a8d3837efe4c691fed31c0fadb7564badab97b5614b3464eee`  
		Last Modified: Sat, 09 Mar 2019 14:55:29 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826800f959f0138bde1d9c6aaf0eb0105b0e9ff1ff3240f824e3919df763448`  
		Last Modified: Sat, 09 Mar 2019 14:55:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8331be9aa7f074ec0cdf4362e013476840b4572a5e82ec54be57e2260d9a8e6`  
		Last Modified: Sat, 09 Mar 2019 14:55:29 GMT  
		Size: 12.0 MB (11991795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971b32c6d8e0c81959a853b86f780e8eab2ccc8f6517268d94ac6b87dd9683c`  
		Last Modified: Sat, 09 Mar 2019 14:55:27 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f15f7358e84db8d04644db60d2efa57c072028b4461fe3d9e80b6c48530426`  
		Last Modified: Sat, 09 Mar 2019 14:55:34 GMT  
		Size: 15.8 MB (15832448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bad97aea95b523014b7557a1115d7dbf7983c745598fef051ff033b61c539eb`  
		Last Modified: Sat, 09 Mar 2019 14:55:27 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e4e7586f656d5deb79028ccb7de4a5e14b9f2f4cc3fdc8d61628f652c17b33`  
		Last Modified: Sat, 09 Mar 2019 14:55:27 GMT  
		Size: 71.0 KB (70975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac411c2e5693185992bc3b46fd7e640f8429eb41a47341421780d01ba51a3ca`  
		Last Modified: Sat, 09 Mar 2019 15:22:28 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb067da2f39cf4fc8115601eb9995fd40ee568830fdc371076801920dbfbec`  
		Last Modified: Sat, 09 Mar 2019 15:22:28 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4907ee8c3d5e6d0f1f1854ba194371ebc829ea86d7c66774a52a5a8148ab77`  
		Last Modified: Sat, 09 Mar 2019 15:22:26 GMT  
		Size: 1.3 MB (1294307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb93e10c93a92a57f89f90b1acba1b4726a4688f6294002b938734fb5bdf57`  
		Last Modified: Sat, 09 Mar 2019 15:22:26 GMT  
		Size: 122.1 KB (122101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbaf242fafc7a3a612c60c393bbddffdd5a6e9abdbc2aef0f4aa12f30278830`  
		Last Modified: Sat, 09 Mar 2019 15:22:26 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c15056f3c26f755f99de146fad3e210c551b66f63f79696c04e423282f4f07`  
		Last Modified: Sat, 09 Mar 2019 15:22:26 GMT  
		Size: 521.3 KB (521277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eef95be1d6afc1f3c9424854be175be32ad329a3552daa2f582a65b12eb35d`  
		Last Modified: Sat, 09 Mar 2019 15:22:26 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; 386

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

### `adminer:standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:742fc47eff9eaba3a76c611e11dee71a57b6172e664335378c052afcc6ca64c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35783733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e82ecbb9c73df9287d0e8143d4a8458c0a31804c6cf0823afee3931c89d9cb8`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 09:45:57 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 09 Mar 2019 09:46:04 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 09:46:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 09:46:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 09:46:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:46:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:46:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 09:46:31 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 09:46:33 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 09:46:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 09:46:38 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 09:46:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 09:46:59 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 09:51:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 09:51:36 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 09:51:41 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 09:51:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 09:51:45 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 12:35:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 12:36:02 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 12:36:06 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 12:36:09 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 12:36:22 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 12:36:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 12:36:51 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 12:36:55 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 12:36:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 12:37:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 12:37:10 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 12:37:12 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 12:37:16 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 12:37:18 GMT
USER adminer
# Sat, 09 Mar 2019 12:37:22 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 12:37:24 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039a3c138ccb79c032df91cf92394afe2db0d1a5e5f7cd21082a61c59be3b3b`  
		Last Modified: Sat, 09 Mar 2019 12:09:12 GMT  
		Size: 1.5 MB (1483955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dc6c151410f15b540131fd821a1687ec2c2818721cfdb97bc99652eae638cb`  
		Last Modified: Sat, 09 Mar 2019 12:09:11 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f66571018e982262f207aec3722d2c5981ad406eb68421020bb28245b3f065`  
		Last Modified: Sat, 09 Mar 2019 12:09:10 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd5dba038f98bb4fc963302956eda16b3204c027b0c7a62c34f5c81c53caba4`  
		Last Modified: Sat, 09 Mar 2019 12:09:08 GMT  
		Size: 12.0 MB (11991807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111aa452146a0ba668df1df4f8bcf77c6cbf4e5c665536ba0ced8e62972116f1`  
		Last Modified: Sat, 09 Mar 2019 12:09:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dffee871b079b2aebecdc4ba63e7b988060d22521a3a964b8ab693ab52b794b`  
		Last Modified: Sat, 09 Mar 2019 12:09:16 GMT  
		Size: 17.4 MB (17446837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74fd4959a507290bd2765cc5b3931b9173f7edd2343811d8b3e80ce79bf3659`  
		Last Modified: Sat, 09 Mar 2019 12:09:06 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377af29dbb8459b05fc682213fd5bc5fca5511b640642dd5f9f0b57ef2da80ea`  
		Last Modified: Sat, 09 Mar 2019 12:09:07 GMT  
		Size: 71.8 KB (71771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03b1a191b54928eb2a2f5d7a3d47dc000d2f3c2ec84562d75028403ef5a0a6a`  
		Last Modified: Sat, 09 Mar 2019 12:39:15 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff35d2a7cc77c72f7b54f07ec92b126d796e19b12424de1679f23c82f34562b`  
		Last Modified: Sat, 09 Mar 2019 12:39:14 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b204928c96f2d18b3a916be22606bae1e92518b0d8bc7584cd1f80649ef64`  
		Last Modified: Sat, 09 Mar 2019 12:39:12 GMT  
		Size: 1.3 MB (1347427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9d289051b2eaf9d60aeab9975c6eff1b4291bc4e76e6e5e31bc6a34c2d408`  
		Last Modified: Sat, 09 Mar 2019 12:39:11 GMT  
		Size: 134.1 KB (134071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce54fa925c275dada0a1ae90eb377e4f9cf2a498ac68bc600e34be254d6b72`  
		Last Modified: Sat, 09 Mar 2019 12:39:11 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5872802217f6b0ab152dc7f6d7b5d578aa3a274e38c1f7fe5f446d4b87240791`  
		Last Modified: Sat, 09 Mar 2019 12:39:12 GMT  
		Size: 521.3 KB (521327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7885f2b18b9f5428f0a9bb7299f4f35da319842e9bd2523220f6aa69c3d826`  
		Last Modified: Sat, 09 Mar 2019 12:39:11 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
