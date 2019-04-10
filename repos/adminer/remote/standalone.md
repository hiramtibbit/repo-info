## `adminer:standalone`

```console
$ docker pull adminer@sha256:b96d457399b9edaf9e89f2e4b1d13b252f3bd042d1358b7629ea47f8cbe61cf9
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
$ docker pull adminer@sha256:b3c6e3ebc9da8b2cc53035211f811f2aa8b0200bf317788955beb836eddc81d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34259385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1cfaec851c042e6cf2af1c9fcae4fcb37bfe574df73f0742f8e36399e20cfba`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 Apr 2019 02:51:46 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Wed, 10 Apr 2019 02:51:46 GMT
STOPSIGNAL SIGINT
# Wed, 10 Apr 2019 02:51:47 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 Apr 2019 02:51:47 GMT
WORKDIR /var/www/html
# Wed, 10 Apr 2019 02:51:48 GMT
RUN apk add --no-cache libpq
# Wed, 10 Apr 2019 02:52:06 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 Apr 2019 02:52:06 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Wed, 10 Apr 2019 02:52:06 GMT
ENV ADMINER_VERSION=4.7.1
# Wed, 10 Apr 2019 02:52:07 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Wed, 10 Apr 2019 02:52:07 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Wed, 10 Apr 2019 02:52:08 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 Apr 2019 02:52:08 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 10 Apr 2019 02:52:08 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 Apr 2019 02:52:09 GMT
USER adminer
# Wed, 10 Apr 2019 02:52:09 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 10 Apr 2019 02:52:09 GMT
EXPOSE 8080
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
	-	`sha256:ade271ad1a2a7ac2a31a24bbf192142d261bc817704f0435d3578a5092980bf4`  
		Last Modified: Wed, 10 Apr 2019 02:52:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9388668b1dad1c88e117a13988dbe62a96396fe53ad36de7ed98be84f66dde0d`  
		Last Modified: Wed, 10 Apr 2019 02:52:47 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a59d44dfe53d3b3023d9c74e7904b09e01f7083a82c13b6be8a3773ce98334`  
		Last Modified: Wed, 10 Apr 2019 02:52:47 GMT  
		Size: 1.3 MB (1266864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa29ec02819ec7b59bac3f87cd3345f2625ae73ddc325f726b39e609c7aa50e`  
		Last Modified: Wed, 10 Apr 2019 02:52:47 GMT  
		Size: 124.5 KB (124470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a196da104d55ec64dae268ad01df8a2a627aa7a04b8b3b10e63d82642b658dfa`  
		Last Modified: Wed, 10 Apr 2019 02:52:46 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42c03af760ab3a4a2093b770325117520ac99e14107721e140074192a343b96`  
		Last Modified: Wed, 10 Apr 2019 02:52:46 GMT  
		Size: 521.3 KB (521276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a6f3d212d792770470a337ce5c30dd775dc8f6e9399948795953ef239bf440`  
		Last Modified: Wed, 10 Apr 2019 02:52:47 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:f5e960a578f48eacbd7d96b0680b9f021d29914ea6bf3d0b23f4e3949081b75c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32711592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec3ee84cadce470356c37bfdbd779399f600092c8c879074d808c3eb513faac`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 Apr 2019 08:47:25 GMT
ENV PHP_VERSION=7.3.4
# Wed, 10 Apr 2019 08:47:25 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Wed, 10 Apr 2019 08:47:25 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Wed, 10 Apr 2019 08:47:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Wed, 10 Apr 2019 08:47:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:51:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 10 Apr 2019 08:51:01 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:51:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 10 Apr 2019 08:51:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 Apr 2019 08:51:04 GMT
CMD ["php" "-a"]
# Wed, 10 Apr 2019 10:04:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Wed, 10 Apr 2019 10:04:13 GMT
STOPSIGNAL SIGINT
# Wed, 10 Apr 2019 10:04:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 Apr 2019 10:04:15 GMT
WORKDIR /var/www/html
# Wed, 10 Apr 2019 10:04:17 GMT
RUN apk add --no-cache libpq
# Wed, 10 Apr 2019 10:04:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 Apr 2019 10:04:43 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Wed, 10 Apr 2019 10:04:43 GMT
ENV ADMINER_VERSION=4.7.1
# Wed, 10 Apr 2019 10:04:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Wed, 10 Apr 2019 10:04:44 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Wed, 10 Apr 2019 10:04:46 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 Apr 2019 10:04:46 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:04:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 Apr 2019 10:04:47 GMT
USER adminer
# Wed, 10 Apr 2019 10:04:47 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 10 Apr 2019 10:04:48 GMT
EXPOSE 8080
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
	-	`sha256:286d7d09bcb3f972164cf89e5696611a8a7bc76baa24dc93f1b7fa09b3a13db6`  
		Last Modified: Wed, 10 Apr 2019 09:23:10 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614e0be06fd3ffdb85e8f2c9db4ddff77de680c26a6344ad2b370e149322dd60`  
		Last Modified: Wed, 10 Apr 2019 09:23:09 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08171bc868700ea4523bc7027b90efb17aae836cd82ea211143223c0257149d`  
		Last Modified: Wed, 10 Apr 2019 09:23:15 GMT  
		Size: 14.9 MB (14865648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1df00fd8d4b329790f12f9456677913661ce189d8e19194803a6ba13ac16b1`  
		Last Modified: Wed, 10 Apr 2019 09:23:09 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bcc84fdedffcc7455a8c81d119352a9df7af24137fefebd210f29fad929c5ad`  
		Last Modified: Wed, 10 Apr 2019 09:23:09 GMT  
		Size: 71.5 KB (71484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366a49fcc746ff53d40aaa98863bd13bd08a05886bff61a7ad962bbfacc4ae2b`  
		Last Modified: Wed, 10 Apr 2019 10:05:53 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacefcfd102dacc720f2a3ea9c171c51266db5847ac4f56f7630293ae62039cb`  
		Last Modified: Wed, 10 Apr 2019 10:05:52 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e072ae6e884f5e59101f0b272a0eedc0f490f8fbcf4a6a40c74c02db63d0ca43`  
		Last Modified: Wed, 10 Apr 2019 10:05:51 GMT  
		Size: 1.2 MB (1204702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7675549996542afa102d0b0f45d72bdce3d3d5345ceabd801f6148e6cab46015`  
		Last Modified: Wed, 10 Apr 2019 10:05:51 GMT  
		Size: 117.6 KB (117560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94f8d0be4badc23e7f2c13d93d9574753e716497ca52cbf41190aa5094968a4`  
		Last Modified: Wed, 10 Apr 2019 10:05:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb263da45e9a2b8668ad3cefc65349c03a66d396db2548eec3099bf16427bc1`  
		Last Modified: Wed, 10 Apr 2019 10:05:51 GMT  
		Size: 521.3 KB (521329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e12861d552255f3f75502975817ad917dfd60638878e3e23f32ba0ce58aebc2`  
		Last Modified: Wed, 10 Apr 2019 10:05:50 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:51c451da878303a1cd9ed890f80c71c2dae1072e0500dce3f819a0fa115f583d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35968073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c71be20e787e9a16be1702b4c0b93bcc8dfbc4d021c7e58049e9cefe3fc5c05`
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
# Sat, 06 Apr 2019 09:42:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 09:42:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 09:42:12 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 09:42:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 09:42:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:51:25 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:51:26 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:51:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:51:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:51:29 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 14:01:53 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 14:01:53 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 14:01:56 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 14:01:57 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 14:02:00 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 14:02:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 14:02:40 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 14:02:41 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 14:02:42 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 14:02:42 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 14:02:46 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 14:02:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 14:02:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 14:02:48 GMT
USER adminer
# Sat, 06 Apr 2019 14:02:49 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 14:02:50 GMT
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
	-	`sha256:0cc98bdb3a94941a693eaa68586191d6b1845b41cd83184255ddc57c7e46e1de`  
		Last Modified: Sat, 06 Apr 2019 13:36:46 GMT  
		Size: 12.0 MB (11996619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f0f091717935a4ba82dca78ff9c839bdb1b7c1536ecbf4aa36f443488ad7a4`  
		Last Modified: Sat, 06 Apr 2019 13:36:44 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8b3b82786c0635444d3ecef1900a9f3ddfeb1bceba787336377c87e718a2ac`  
		Last Modified: Sat, 06 Apr 2019 13:36:52 GMT  
		Size: 17.8 MB (17823497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7ea0e23609ad8debb40a0a3c6aa2080740c9dacd5424ef325aafe69e7459a4`  
		Last Modified: Sat, 06 Apr 2019 13:36:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff31cc728af15016762ecb0e4d87bbedfa6eebb3971f9e67b90385eb9a9ecaac`  
		Last Modified: Sat, 06 Apr 2019 13:36:44 GMT  
		Size: 71.2 KB (71166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726f2dc68480b67cc5fc005e0d0acc0d2d54aa0e66583f2d15b8e950eaf70254`  
		Last Modified: Sat, 06 Apr 2019 14:04:07 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2574f3ea3cfa6329b65fc685c044811ea588312da2b27ae048159626fc4e9c`  
		Last Modified: Sat, 06 Apr 2019 14:04:07 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b068b021960d4be7c45f2e3a59e484f3eb43c01749bbecacc48686b8c9fa3b45`  
		Last Modified: Sat, 06 Apr 2019 14:04:06 GMT  
		Size: 1.3 MB (1294466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2b784fd063c285d68229a3c059ecfb81af2f70844ca5c7c7232d8415f27863`  
		Last Modified: Sat, 06 Apr 2019 14:04:05 GMT  
		Size: 122.3 KB (122296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4250e345eae3484d91ab2446f13f8f57388f88421c99b68a459ab9470dd89c`  
		Last Modified: Sat, 06 Apr 2019 14:04:05 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474071d8059f3e06499b447a290885a8c3707100cbf274f3ecbcc2cf013363b8`  
		Last Modified: Sat, 06 Apr 2019 14:04:05 GMT  
		Size: 521.3 KB (521278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1620a92883d427f1fa6af06fde56598860e04fbbe8c0c0646848eba50e3fa2`  
		Last Modified: Sat, 06 Apr 2019 14:04:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; 386

```console
$ docker pull adminer@sha256:1b611b92786472ab30d350eef88478c212b181554e0c90cfa1fd8d904bd88935
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36974219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259ba602792a91ee3540ffbcac84f3cde1fca0c28c4b0bfe507840dcab2d568d`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:50:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 09 Mar 2019 13:58:06 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Sat, 09 Mar 2019 13:58:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 09 Mar 2019 13:58:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 09 Mar 2019 13:58:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 13:58:08 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 11:11:22 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 11:11:22 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 11:11:22 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 11:11:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 11:11:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 11:17:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 11:17:38 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 11:17:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 11:17:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 11:17:40 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 15:04:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 15:04:40 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 15:04:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 15:04:41 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 15:04:42 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 15:05:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 15:05:00 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 15:05:00 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 15:05:01 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 15:05:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 15:05:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 15:05:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 15:05:02 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 15:05:03 GMT
USER adminer
# Sat, 06 Apr 2019 15:05:03 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 15:05:03 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3662bef4a92105a32131e7aaa40e60729ae819e93028d909f0c124a03a1a0c`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 1.5 MB (1534175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a47d2b042c52f7e2572027ef6ac7deae9728521768dcac25fa8f4b24bed4610`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a0ee3a8e639e3bc98916787a49f606058dd70d9235923e7c302dad23b3964f`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddf95c5a7a31e81c1357964184d5de58f1c7df9281b3074b40f6c94694636cf`  
		Last Modified: Sat, 06 Apr 2019 14:32:43 GMT  
		Size: 12.0 MB (11996623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9f26645368648e3bf259d08b530e4e26c0091fbc86d0a7a93bc0d2a4bb1adc`  
		Last Modified: Sat, 06 Apr 2019 14:32:42 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba32990f30955e67d31b84dda93de40d1394eb1477934c4a6a88b1cb45e98fc`  
		Last Modified: Sat, 06 Apr 2019 14:32:49 GMT  
		Size: 18.6 MB (18578771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f207459d6d12175462d23984f73ab033ef7231d5b06c099b30621ced3ff24c2`  
		Last Modified: Sat, 06 Apr 2019 14:32:42 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e288c96a7e82f799db3020843567d07303ef4dd8c9a2b1b20461437220d73cf7`  
		Last Modified: Sat, 06 Apr 2019 14:32:42 GMT  
		Size: 71.3 KB (71281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b65d458be90f088ecc322f1600de502b1204b05fd591190d44ff0fc8ccb9a19`  
		Last Modified: Sat, 06 Apr 2019 15:05:41 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a204b9d9439efc55db80ad4c9ad545771e1ae764572f3ace6b2b34cf3c3ceb5f`  
		Last Modified: Sat, 06 Apr 2019 15:05:41 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed3c5b45629ab4fe809ce3df9b9d9418f65a6d68f25a3da8346a18218812fc5`  
		Last Modified: Sat, 06 Apr 2019 15:05:40 GMT  
		Size: 1.4 MB (1386981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5143d8509aa17107322487c5ad727e130f7216f672c8fb1e7bb96ff9644f8e0a`  
		Last Modified: Sat, 06 Apr 2019 15:05:40 GMT  
		Size: 128.0 KB (127968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8d1cea4c6c59c9134b95780522aefd3ff79033d218bf0c2c0d9334c8462fac`  
		Last Modified: Sat, 06 Apr 2019 15:05:40 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c043480b81a945205959f0ab3497526f91cbbe752021a44ae0b3741498f1754`  
		Last Modified: Sat, 06 Apr 2019 15:05:40 GMT  
		Size: 521.3 KB (521278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e472e3d0dfa6241e520ae64a66dea1a44fb9254327ab60201d1b8f09467744`  
		Last Modified: Sat, 06 Apr 2019 15:05:40 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:7b88f107001fef9043c579f1e4fa29cee3c7d32b80a8194818b89a44820db795
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35786224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e96d47be61eb6def11beab544b0f926b833024240aaa077c310ed5659fa281`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 Apr 2019 12:46:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Wed, 10 Apr 2019 12:46:16 GMT
STOPSIGNAL SIGINT
# Wed, 10 Apr 2019 12:46:25 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 Apr 2019 12:46:32 GMT
WORKDIR /var/www/html
# Wed, 10 Apr 2019 12:46:43 GMT
RUN apk add --no-cache libpq
# Wed, 10 Apr 2019 12:47:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 Apr 2019 12:47:23 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Wed, 10 Apr 2019 12:47:26 GMT
ENV ADMINER_VERSION=4.7.1
# Wed, 10 Apr 2019 12:47:35 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Wed, 10 Apr 2019 12:47:42 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Wed, 10 Apr 2019 12:47:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 Apr 2019 12:47:56 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:48:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 Apr 2019 12:48:10 GMT
USER adminer
# Wed, 10 Apr 2019 12:48:17 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 10 Apr 2019 12:48:22 GMT
EXPOSE 8080
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
	-	`sha256:e259965bdb3aeb6acb1c31eb2505d6f1adb79431f7552c8e5a25e3842fab3402`  
		Last Modified: Wed, 10 Apr 2019 12:51:21 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e3a45d39026d9530730900309b2736fc0725f13e627aeb142805295df92c85`  
		Last Modified: Wed, 10 Apr 2019 12:51:19 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9233dd67c04e707e48ddb60a617aa660e2ea18f53888dc1fdec0b107f391f2`  
		Last Modified: Wed, 10 Apr 2019 12:51:12 GMT  
		Size: 1.3 MB (1347428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c14eb1769778d905b227deacaa8fb77fe66b390d3cf5900d0ad2ef20985caef`  
		Last Modified: Wed, 10 Apr 2019 12:51:12 GMT  
		Size: 134.2 KB (134182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7ac8dbc0f4843ff59e84136759611d77b71961e692348e20e70b478c0a521`  
		Last Modified: Wed, 10 Apr 2019 12:51:13 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c69123a9683286604194a2537b98029a0c999c3a72aa72f0193e5b54e32f6fa`  
		Last Modified: Wed, 10 Apr 2019 12:51:12 GMT  
		Size: 521.3 KB (521331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adac2f4d309e00e7156c9fda59b6fe40f1a6cdc821c057b38e385b90cf3a474`  
		Last Modified: Wed, 10 Apr 2019 12:51:12 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
