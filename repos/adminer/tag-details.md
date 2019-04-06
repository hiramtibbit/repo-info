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
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4` - linux; arm64 variant v8

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

### `adminer:4` - linux; 386

```console
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7`

```console
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7` - linux; arm64 variant v8

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

### `adminer:4.7` - linux; 386

```console
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7.1`

```console
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1` - linux; arm64 variant v8

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

### `adminer:4.7.1` - linux; 386

```console
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7.1-fastcgi`

```console
$ docker pull adminer@sha256:e0e68ae7ea12e335768567fdbac6579936d2423ed81d2882506f1e1404df5e9c
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
$ docker pull adminer@sha256:4f14f5185830cdb1010db57fc1477b2f26bb1438f90bfe5525d70a21010ec3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36401048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973e8c923fd431e4cfaf0881d6245971054609b9525fabcc9e03c9ba22f2e963`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 01:00:55 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:45:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:46:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:51:41 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:42 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:51:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:51:42 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 02:51:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 02:51:43 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 02:51:43 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 06:15:26 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:15:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:28 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:48 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:48 GMT
CMD ["php-fpm"]
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
	-	`sha256:ba456a436a9b27a56c60edf09af051c52daaed27a1e15e8876db3e7b3b82c51f`  
		Last Modified: Sat, 06 Apr 2019 05:33:19 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e432d8b764b8c7d6dd3c6411b47468404e785a87be4f9a9bd2f79a2066e8218`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e91b3b92761d9907e1c233e49a6e7eb6f83ab5197df100d29206683071f19`  
		Last Modified: Sat, 06 Apr 2019 05:33:22 GMT  
		Size: 18.2 MB (18211729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f334805f8213d34226d074fdf8b5b5b1d174f2d59b61550967651f972c56321`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520f388a7e2da92a8134a06a5768422dd4e90b461b830b2f7aefdc70ff7faac`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 72.2 KB (72163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e494075501b89d5382f4d63e5e38936ae3ae2c1751d259fbf61579bcfe36b2`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4688510654e50858c9e6b5df3e62d89a845babbd8a0315551c5d3bc51df0054d`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a44218ab7fe060672cbe0087079df1ecf2def7e7241ec6abf6554ee5a22c12`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e1c12f46563dbf4f34e6a647e28702b0affc906958c9cc8860db82cc1cc29e`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 1.3 MB (1267192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064b05b50ac085dd02518e6f8ae840627125ee4e5bafbee842864c245f831743`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 125.1 KB (125069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea912644a4f7f6511998869e747bde92492568e92d80a1186979d5f3df60d8d5`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b34fb7d910693e6a1750e063aaaa7bfc4bd7d23a3679f463a72f27fac8f3db`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 521.3 KB (521278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f39e26ad65fadf76b72af02a9977e36480fa4515b8f9fe45068a94e9533bf9`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8a4026eb0adde1f1722bd1bc780e9d7b6096a1d26b72b49306cd5dede9bf9c56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34587701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc54813a052ef1a97f2762a795fb03e1f2438633712a5547b97627f39a1c3449`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 08:53:22 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 07:59:21 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:59:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:59:27 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:02:52 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:54 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:02:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:02:54 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 08:02:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 08:02:56 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 08:02:56 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 09:22:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:22:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:22:16 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:22:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:22:43 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:22:45 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:48 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:48 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:49 GMT
CMD ["php-fpm"]
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
	-	`sha256:b6d995e199dd615a6a09a389e419d03d13ea03c234da6149f3bf25fbe8dc9622`  
		Last Modified: Sat, 06 Apr 2019 09:01:42 GMT  
		Size: 12.0 MB (11996627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760be14dbd246fd0d09b975c54fade94d3e9033f2699e1a8d659b32b51f4fad5`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0699a7f2f91cb62890122bc87c7f3cc6a66ad3bc8c55b8283c9b9019caaee237`  
		Last Modified: Sat, 06 Apr 2019 09:01:45 GMT  
		Size: 16.7 MB (16737183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b04a279e4b8b0bc550ea323f6e8229edbf33368b16bb10d005fba62fb6bc9bc`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf497b8bedae3375e69474ab9cffe9cba7c80a1234b464a8063cf3ceebafe17`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 71.7 KB (71673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3008a9f5fa222f9df4131e8b260061b5ce04550df0a42d7538270fb8739ed4a4`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 8.3 KB (8264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed34d12b13fa892825c7463a4285fb240417f565164942aca41513945eb93c78`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe68c7275052744591f08e57cf60764986c594c2915061949fa08cc63ef140`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd93c19c3128fcbeaaed720183000608ea2395241622db5e9bdd898679eef9b8`  
		Last Modified: Sat, 06 Apr 2019 09:23:25 GMT  
		Size: 1.2 MB (1204810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e634f8f8741ffeb7a011db7b291ba58481246f14020f73dbf0f7986830bf75`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 117.8 KB (117759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31fa249eec89b1852d9222994076da7e4adca7ed992d78e9c308545bba9f2c8`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f89502ac5950ba45378df51016e296d1857408469bcbc2996bde38aa2e765`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 521.3 KB (521329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a47ad17e919dc999226dc9fff29d0340b2b77f402ba0f454a8841fc8cd995`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:262cf724f3e3f267275d3d63da3b0fc28bbcd83f8ed9f3916e9459fe4d7e6492
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34043793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc33959247dc875e6ab693d17d284388929e7726510733d6d863ff8edb90c85`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 11:03:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 11:03:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 11:03:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 11:03:44 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 11:03:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 11:03:46 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 11:03:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 11:03:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 11:15:02 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:05 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 11:15:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 11:15:07 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 11:15:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 11:15:10 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 11:15:11 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 15:21:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 15:21:16 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 15:21:19 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 15:21:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 15:21:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 15:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 15:22:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 15:22:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:22:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 15:22:03 GMT
USER adminer
# Sat, 09 Mar 2019 15:22:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:c5d65304f5184d38aede1f95343efb72d0ffe088730ace4fefb9c324d321d222`  
		Last Modified: Sat, 09 Mar 2019 14:56:16 GMT  
		Size: 12.0 MB (11991805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4982d8bea9b5b5e75eebc8f60af74b7bc5cf6eda2891d94a2ff32b14f87691`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a9928376a0cc049a8d75d51fd19eebdc71aa18b6c924e4113027b3ebd9c47`  
		Last Modified: Sat, 09 Mar 2019 14:56:19 GMT  
		Size: 15.9 MB (15896334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0457953db1d66f5665edff57008a312dc173199266d74d2fb6ffb9da96973121`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ea4d4f75b679367deec772c73ee1dd9f339c342f578ce6ef95ff5350928770`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 71.0 KB (70976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c32c569a3204258f7452f3b73f9eb8144d751f24838c150c5884456b734d0ed`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 8.3 KB (8269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60244358baa3dd794b66b72ca264bd1701da9f6fba07ba8bd997e31db623a161`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67deb3e36e80ee40549ade6a1c24ae9735a3b60e1699603fd1942f3a6c25c58`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8bf211aee12f71e9fece6c75d4116779c4bc8bfa318d36b1e3a92a8d4807e2`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.3 MB (1294291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b8b309abed7bd9db986a56f44fc6b7a1672308fc231b8f401265020a0f1c2f`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 122.1 KB (122100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faacdac878064fdb8f301266530419f15627bf47742cb3a5ba5c495c8a7fc9`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81aebada14d7c3292bb0040b16d9f514fcd46077d51b0f4805e406fec85143bc`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 521.3 KB (521272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292552de784720461bdebfdd213f894379f76d50a169594e9cf7d8e3d0d4a3d1`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:82b4116de924f07359b0413249556b76f96bfbc5ae6b4c10f35e6d02a2fe0fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34963618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7471d9f73bc8c4850fca1d8e1bf635a31bfc32f5dcfca4aee1586779982945`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 14:04:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 14:04:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 14:04:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:10:56 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:57 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:10:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:10:58 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 14:10:58 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 14:10:58 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 14:10:59 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 17:53:45 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:47 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:54:08 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:54:08 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:54:10 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:54:10 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:54:10 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:54:10 GMT
USER adminer
# Sat, 09 Mar 2019 17:54:10 GMT
CMD ["php-fpm"]
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
	-	`sha256:7a1db4d2f527a83f5b88315f6247651ca20717929e6fa24b851b429ea0937f90`  
		Last Modified: Sat, 09 Mar 2019 17:19:44 GMT  
		Size: 12.0 MB (11991790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8934cafa1e0dde478d9b7247830e919e3e8f10b09444704a0e26d2f3ec4cfe`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec79c95e459c007e2ff8123a21347466fbf28861d1fb27b4e19dd0cd8d1f4f8`  
		Last Modified: Sat, 09 Mar 2019 17:19:47 GMT  
		Size: 16.6 MB (16565220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719906c3b027605f7cb3474c1d8509c29f449d0a293ef67fdfe05526e7e5c4aa`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd173abd194343c43fe33682555fcee70e60286c44f1a3210d046842f562dea`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 71.1 KB (71089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e81664489e4a38a72d8e05747dbc6c0544588930cf4b9a6baced68531f35f69`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087606b470ed38969152a1213750fa5ac41406e89987e1053dd2b77192e92eb`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ad7179587a5507646a2c2abd1427715ee74fe653ece556629f41959ee40893`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f47697f2607a828daf36966b0bf923b9614f3b1444f7f027b0d4392c0b7544`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 MB (1386919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2cb66abd29b1a11fb466e2c84171f627d1aeac5e9586366a94b22c7380cb18`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 127.7 KB (127745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8d42a59d08270c4822cd42e780ecde0c2b0b375437149bfb42a38d2021685`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e21599fba6c529daf9b259432015d74efe140e0f58f82239010f3a2170742`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 521.3 KB (521274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e26e64c5f511bcef18a7af480b0b48b6528be633b84ffa731e31b29dd99eb7`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:f2a0c27be630bb7ce8142f61f4d4967b6f3f6eceba8e433d4f98292c807a963f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37913010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69baccceb40e075bb468353b3847646f17cf47187deff0adb3647f40a250d091`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 09:52:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 09:52:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 09:52:24 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 08:58:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:58:58 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:59:00 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:59:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:59:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:03:29 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:03:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:03:38 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:03:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 09:03:45 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 09:03:46 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 12:33:11 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:33:24 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:33:36 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:34:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:34:12 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:34:14 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:34:20 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:34:29 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:34:41 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:34:42 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:34:44 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:34:46 GMT
USER adminer
# Sat, 06 Apr 2019 12:34:51 GMT
CMD ["php-fpm"]
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
	-	`sha256:edef982163b4c9f2578d3f853d7dfbeba114a8b9bf2b362b3db17fbac10625ef`  
		Last Modified: Sat, 06 Apr 2019 11:16:51 GMT  
		Size: 12.0 MB (11996631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78c332f738919b1865ae18b15475403c9130f52995a6f3a36e21f8c9bbf6c50`  
		Last Modified: Sat, 06 Apr 2019 11:16:46 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdb692482ba5ace70f4d741080b4019ccc41857fa65a9ab00f6962a960783da`  
		Last Modified: Sat, 06 Apr 2019 11:16:56 GMT  
		Size: 19.6 MB (19562373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827866acc9932069638f38d47212e3427c58c565fe43cebc2f70d1f1f5d59d6`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6719b82ffe00eb1c3a856828e19ca35835fb5ae2afec25a28a56d08454d1f86a`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 72.0 KB (71969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89aa33e80f878bb0972ace3c51b7fd75cafb9a0aa154a9b91b388fd5f5a2061`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce00b06abf690f0e113f7c73064fd05903a45ecfda6390769ccc82b3bb7f43`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d92251cc5e7fb5a42f07cfb6a38acc996db342aeadf15859360fa679dc87d4`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07dd0e53782a54f2c87614240e605bb6b2184354ae39355a2f1db7fd565090f2`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 1.3 MB (1347660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889c9e7cb235c1a3b5864ccf4d37056e74acce23a02ac825359434a3579f26db`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017d14371d376111e7934ba14c72e8f8f6ff0c5117eff9f18423cc1ef8facc7e`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d4a7d7270223eedb7cdf4f4b5705776fdecc6d525b00cbfaa9c73066609663`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789415fe5c25e111bfd4892f8efcf55b892c3a712bacfa34dd570f37f953cea9`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7.1-standalone`

```console
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-standalone` - linux; arm64 variant v8

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

### `adminer:4.7.1-standalone` - linux; 386

```console
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7.1-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7-fastcgi`

```console
$ docker pull adminer@sha256:e0e68ae7ea12e335768567fdbac6579936d2423ed81d2882506f1e1404df5e9c
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
$ docker pull adminer@sha256:4f14f5185830cdb1010db57fc1477b2f26bb1438f90bfe5525d70a21010ec3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36401048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973e8c923fd431e4cfaf0881d6245971054609b9525fabcc9e03c9ba22f2e963`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 01:00:55 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:45:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:46:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:51:41 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:42 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:51:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:51:42 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 02:51:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 02:51:43 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 02:51:43 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 06:15:26 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:15:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:28 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:48 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:48 GMT
CMD ["php-fpm"]
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
	-	`sha256:ba456a436a9b27a56c60edf09af051c52daaed27a1e15e8876db3e7b3b82c51f`  
		Last Modified: Sat, 06 Apr 2019 05:33:19 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e432d8b764b8c7d6dd3c6411b47468404e785a87be4f9a9bd2f79a2066e8218`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e91b3b92761d9907e1c233e49a6e7eb6f83ab5197df100d29206683071f19`  
		Last Modified: Sat, 06 Apr 2019 05:33:22 GMT  
		Size: 18.2 MB (18211729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f334805f8213d34226d074fdf8b5b5b1d174f2d59b61550967651f972c56321`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520f388a7e2da92a8134a06a5768422dd4e90b461b830b2f7aefdc70ff7faac`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 72.2 KB (72163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e494075501b89d5382f4d63e5e38936ae3ae2c1751d259fbf61579bcfe36b2`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4688510654e50858c9e6b5df3e62d89a845babbd8a0315551c5d3bc51df0054d`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a44218ab7fe060672cbe0087079df1ecf2def7e7241ec6abf6554ee5a22c12`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e1c12f46563dbf4f34e6a647e28702b0affc906958c9cc8860db82cc1cc29e`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 1.3 MB (1267192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064b05b50ac085dd02518e6f8ae840627125ee4e5bafbee842864c245f831743`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 125.1 KB (125069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea912644a4f7f6511998869e747bde92492568e92d80a1186979d5f3df60d8d5`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b34fb7d910693e6a1750e063aaaa7bfc4bd7d23a3679f463a72f27fac8f3db`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 521.3 KB (521278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f39e26ad65fadf76b72af02a9977e36480fa4515b8f9fe45068a94e9533bf9`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8a4026eb0adde1f1722bd1bc780e9d7b6096a1d26b72b49306cd5dede9bf9c56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34587701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc54813a052ef1a97f2762a795fb03e1f2438633712a5547b97627f39a1c3449`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 08:53:22 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 07:59:21 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:59:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:59:27 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:02:52 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:54 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:02:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:02:54 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 08:02:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 08:02:56 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 08:02:56 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 09:22:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:22:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:22:16 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:22:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:22:43 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:22:45 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:48 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:48 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:49 GMT
CMD ["php-fpm"]
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
	-	`sha256:b6d995e199dd615a6a09a389e419d03d13ea03c234da6149f3bf25fbe8dc9622`  
		Last Modified: Sat, 06 Apr 2019 09:01:42 GMT  
		Size: 12.0 MB (11996627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760be14dbd246fd0d09b975c54fade94d3e9033f2699e1a8d659b32b51f4fad5`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0699a7f2f91cb62890122bc87c7f3cc6a66ad3bc8c55b8283c9b9019caaee237`  
		Last Modified: Sat, 06 Apr 2019 09:01:45 GMT  
		Size: 16.7 MB (16737183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b04a279e4b8b0bc550ea323f6e8229edbf33368b16bb10d005fba62fb6bc9bc`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf497b8bedae3375e69474ab9cffe9cba7c80a1234b464a8063cf3ceebafe17`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 71.7 KB (71673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3008a9f5fa222f9df4131e8b260061b5ce04550df0a42d7538270fb8739ed4a4`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 8.3 KB (8264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed34d12b13fa892825c7463a4285fb240417f565164942aca41513945eb93c78`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe68c7275052744591f08e57cf60764986c594c2915061949fa08cc63ef140`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd93c19c3128fcbeaaed720183000608ea2395241622db5e9bdd898679eef9b8`  
		Last Modified: Sat, 06 Apr 2019 09:23:25 GMT  
		Size: 1.2 MB (1204810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e634f8f8741ffeb7a011db7b291ba58481246f14020f73dbf0f7986830bf75`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 117.8 KB (117759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31fa249eec89b1852d9222994076da7e4adca7ed992d78e9c308545bba9f2c8`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f89502ac5950ba45378df51016e296d1857408469bcbc2996bde38aa2e765`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 521.3 KB (521329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a47ad17e919dc999226dc9fff29d0340b2b77f402ba0f454a8841fc8cd995`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:262cf724f3e3f267275d3d63da3b0fc28bbcd83f8ed9f3916e9459fe4d7e6492
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34043793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc33959247dc875e6ab693d17d284388929e7726510733d6d863ff8edb90c85`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 11:03:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 11:03:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 11:03:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 11:03:44 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 11:03:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 11:03:46 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 11:03:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 11:03:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 11:15:02 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:05 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 11:15:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 11:15:07 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 11:15:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 11:15:10 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 11:15:11 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 15:21:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 15:21:16 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 15:21:19 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 15:21:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 15:21:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 15:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 15:22:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 15:22:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:22:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 15:22:03 GMT
USER adminer
# Sat, 09 Mar 2019 15:22:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:c5d65304f5184d38aede1f95343efb72d0ffe088730ace4fefb9c324d321d222`  
		Last Modified: Sat, 09 Mar 2019 14:56:16 GMT  
		Size: 12.0 MB (11991805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4982d8bea9b5b5e75eebc8f60af74b7bc5cf6eda2891d94a2ff32b14f87691`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a9928376a0cc049a8d75d51fd19eebdc71aa18b6c924e4113027b3ebd9c47`  
		Last Modified: Sat, 09 Mar 2019 14:56:19 GMT  
		Size: 15.9 MB (15896334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0457953db1d66f5665edff57008a312dc173199266d74d2fb6ffb9da96973121`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ea4d4f75b679367deec772c73ee1dd9f339c342f578ce6ef95ff5350928770`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 71.0 KB (70976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c32c569a3204258f7452f3b73f9eb8144d751f24838c150c5884456b734d0ed`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 8.3 KB (8269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60244358baa3dd794b66b72ca264bd1701da9f6fba07ba8bd997e31db623a161`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67deb3e36e80ee40549ade6a1c24ae9735a3b60e1699603fd1942f3a6c25c58`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8bf211aee12f71e9fece6c75d4116779c4bc8bfa318d36b1e3a92a8d4807e2`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.3 MB (1294291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b8b309abed7bd9db986a56f44fc6b7a1672308fc231b8f401265020a0f1c2f`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 122.1 KB (122100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faacdac878064fdb8f301266530419f15627bf47742cb3a5ba5c495c8a7fc9`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81aebada14d7c3292bb0040b16d9f514fcd46077d51b0f4805e406fec85143bc`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 521.3 KB (521272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292552de784720461bdebfdd213f894379f76d50a169594e9cf7d8e3d0d4a3d1`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:82b4116de924f07359b0413249556b76f96bfbc5ae6b4c10f35e6d02a2fe0fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34963618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7471d9f73bc8c4850fca1d8e1bf635a31bfc32f5dcfca4aee1586779982945`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 14:04:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 14:04:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 14:04:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:10:56 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:57 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:10:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:10:58 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 14:10:58 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 14:10:58 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 14:10:59 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 17:53:45 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:47 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:54:08 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:54:08 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:54:10 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:54:10 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:54:10 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:54:10 GMT
USER adminer
# Sat, 09 Mar 2019 17:54:10 GMT
CMD ["php-fpm"]
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
	-	`sha256:7a1db4d2f527a83f5b88315f6247651ca20717929e6fa24b851b429ea0937f90`  
		Last Modified: Sat, 09 Mar 2019 17:19:44 GMT  
		Size: 12.0 MB (11991790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8934cafa1e0dde478d9b7247830e919e3e8f10b09444704a0e26d2f3ec4cfe`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec79c95e459c007e2ff8123a21347466fbf28861d1fb27b4e19dd0cd8d1f4f8`  
		Last Modified: Sat, 09 Mar 2019 17:19:47 GMT  
		Size: 16.6 MB (16565220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719906c3b027605f7cb3474c1d8509c29f449d0a293ef67fdfe05526e7e5c4aa`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd173abd194343c43fe33682555fcee70e60286c44f1a3210d046842f562dea`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 71.1 KB (71089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e81664489e4a38a72d8e05747dbc6c0544588930cf4b9a6baced68531f35f69`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087606b470ed38969152a1213750fa5ac41406e89987e1053dd2b77192e92eb`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ad7179587a5507646a2c2abd1427715ee74fe653ece556629f41959ee40893`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f47697f2607a828daf36966b0bf923b9614f3b1444f7f027b0d4392c0b7544`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 MB (1386919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2cb66abd29b1a11fb466e2c84171f627d1aeac5e9586366a94b22c7380cb18`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 127.7 KB (127745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8d42a59d08270c4822cd42e780ecde0c2b0b375437149bfb42a38d2021685`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e21599fba6c529daf9b259432015d74efe140e0f58f82239010f3a2170742`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 521.3 KB (521274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e26e64c5f511bcef18a7af480b0b48b6528be633b84ffa731e31b29dd99eb7`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:f2a0c27be630bb7ce8142f61f4d4967b6f3f6eceba8e433d4f98292c807a963f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37913010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69baccceb40e075bb468353b3847646f17cf47187deff0adb3647f40a250d091`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 09:52:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 09:52:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 09:52:24 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 08:58:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:58:58 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:59:00 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:59:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:59:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:03:29 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:03:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:03:38 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:03:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 09:03:45 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 09:03:46 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 12:33:11 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:33:24 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:33:36 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:34:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:34:12 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:34:14 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:34:20 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:34:29 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:34:41 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:34:42 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:34:44 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:34:46 GMT
USER adminer
# Sat, 06 Apr 2019 12:34:51 GMT
CMD ["php-fpm"]
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
	-	`sha256:edef982163b4c9f2578d3f853d7dfbeba114a8b9bf2b362b3db17fbac10625ef`  
		Last Modified: Sat, 06 Apr 2019 11:16:51 GMT  
		Size: 12.0 MB (11996631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78c332f738919b1865ae18b15475403c9130f52995a6f3a36e21f8c9bbf6c50`  
		Last Modified: Sat, 06 Apr 2019 11:16:46 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdb692482ba5ace70f4d741080b4019ccc41857fa65a9ab00f6962a960783da`  
		Last Modified: Sat, 06 Apr 2019 11:16:56 GMT  
		Size: 19.6 MB (19562373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827866acc9932069638f38d47212e3427c58c565fe43cebc2f70d1f1f5d59d6`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6719b82ffe00eb1c3a856828e19ca35835fb5ae2afec25a28a56d08454d1f86a`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 72.0 KB (71969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89aa33e80f878bb0972ace3c51b7fd75cafb9a0aa154a9b91b388fd5f5a2061`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce00b06abf690f0e113f7c73064fd05903a45ecfda6390769ccc82b3bb7f43`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d92251cc5e7fb5a42f07cfb6a38acc996db342aeadf15859360fa679dc87d4`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07dd0e53782a54f2c87614240e605bb6b2184354ae39355a2f1db7fd565090f2`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 1.3 MB (1347660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889c9e7cb235c1a3b5864ccf4d37056e74acce23a02ac825359434a3579f26db`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017d14371d376111e7934ba14c72e8f8f6ff0c5117eff9f18423cc1ef8facc7e`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d4a7d7270223eedb7cdf4f4b5705776fdecc6d525b00cbfaa9c73066609663`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789415fe5c25e111bfd4892f8efcf55b892c3a712bacfa34dd570f37f953cea9`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.7-standalone`

```console
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-standalone` - linux; arm64 variant v8

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

### `adminer:4.7-standalone` - linux; 386

```console
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4.7-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:e0e68ae7ea12e335768567fdbac6579936d2423ed81d2882506f1e1404df5e9c
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
$ docker pull adminer@sha256:4f14f5185830cdb1010db57fc1477b2f26bb1438f90bfe5525d70a21010ec3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36401048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973e8c923fd431e4cfaf0881d6245971054609b9525fabcc9e03c9ba22f2e963`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 01:00:55 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:45:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:46:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:51:41 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:42 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:51:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:51:42 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 02:51:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 02:51:43 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 02:51:43 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 06:15:26 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:15:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:28 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:48 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:48 GMT
CMD ["php-fpm"]
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
	-	`sha256:ba456a436a9b27a56c60edf09af051c52daaed27a1e15e8876db3e7b3b82c51f`  
		Last Modified: Sat, 06 Apr 2019 05:33:19 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e432d8b764b8c7d6dd3c6411b47468404e785a87be4f9a9bd2f79a2066e8218`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e91b3b92761d9907e1c233e49a6e7eb6f83ab5197df100d29206683071f19`  
		Last Modified: Sat, 06 Apr 2019 05:33:22 GMT  
		Size: 18.2 MB (18211729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f334805f8213d34226d074fdf8b5b5b1d174f2d59b61550967651f972c56321`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520f388a7e2da92a8134a06a5768422dd4e90b461b830b2f7aefdc70ff7faac`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 72.2 KB (72163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e494075501b89d5382f4d63e5e38936ae3ae2c1751d259fbf61579bcfe36b2`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4688510654e50858c9e6b5df3e62d89a845babbd8a0315551c5d3bc51df0054d`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a44218ab7fe060672cbe0087079df1ecf2def7e7241ec6abf6554ee5a22c12`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e1c12f46563dbf4f34e6a647e28702b0affc906958c9cc8860db82cc1cc29e`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 1.3 MB (1267192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064b05b50ac085dd02518e6f8ae840627125ee4e5bafbee842864c245f831743`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 125.1 KB (125069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea912644a4f7f6511998869e747bde92492568e92d80a1186979d5f3df60d8d5`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b34fb7d910693e6a1750e063aaaa7bfc4bd7d23a3679f463a72f27fac8f3db`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 521.3 KB (521278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f39e26ad65fadf76b72af02a9977e36480fa4515b8f9fe45068a94e9533bf9`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8a4026eb0adde1f1722bd1bc780e9d7b6096a1d26b72b49306cd5dede9bf9c56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34587701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc54813a052ef1a97f2762a795fb03e1f2438633712a5547b97627f39a1c3449`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 08:53:22 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 07:59:21 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:59:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:59:27 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:02:52 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:54 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:02:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:02:54 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 08:02:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 08:02:56 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 08:02:56 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 09:22:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:22:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:22:16 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:22:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:22:43 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:22:45 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:48 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:48 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:49 GMT
CMD ["php-fpm"]
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
	-	`sha256:b6d995e199dd615a6a09a389e419d03d13ea03c234da6149f3bf25fbe8dc9622`  
		Last Modified: Sat, 06 Apr 2019 09:01:42 GMT  
		Size: 12.0 MB (11996627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760be14dbd246fd0d09b975c54fade94d3e9033f2699e1a8d659b32b51f4fad5`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0699a7f2f91cb62890122bc87c7f3cc6a66ad3bc8c55b8283c9b9019caaee237`  
		Last Modified: Sat, 06 Apr 2019 09:01:45 GMT  
		Size: 16.7 MB (16737183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b04a279e4b8b0bc550ea323f6e8229edbf33368b16bb10d005fba62fb6bc9bc`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf497b8bedae3375e69474ab9cffe9cba7c80a1234b464a8063cf3ceebafe17`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 71.7 KB (71673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3008a9f5fa222f9df4131e8b260061b5ce04550df0a42d7538270fb8739ed4a4`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 8.3 KB (8264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed34d12b13fa892825c7463a4285fb240417f565164942aca41513945eb93c78`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe68c7275052744591f08e57cf60764986c594c2915061949fa08cc63ef140`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd93c19c3128fcbeaaed720183000608ea2395241622db5e9bdd898679eef9b8`  
		Last Modified: Sat, 06 Apr 2019 09:23:25 GMT  
		Size: 1.2 MB (1204810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e634f8f8741ffeb7a011db7b291ba58481246f14020f73dbf0f7986830bf75`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 117.8 KB (117759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31fa249eec89b1852d9222994076da7e4adca7ed992d78e9c308545bba9f2c8`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f89502ac5950ba45378df51016e296d1857408469bcbc2996bde38aa2e765`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 521.3 KB (521329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a47ad17e919dc999226dc9fff29d0340b2b77f402ba0f454a8841fc8cd995`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:262cf724f3e3f267275d3d63da3b0fc28bbcd83f8ed9f3916e9459fe4d7e6492
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34043793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc33959247dc875e6ab693d17d284388929e7726510733d6d863ff8edb90c85`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 11:03:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 11:03:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 11:03:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 11:03:44 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 11:03:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 11:03:46 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 11:03:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 11:03:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 11:15:02 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:05 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 11:15:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 11:15:07 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 11:15:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 11:15:10 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 11:15:11 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 15:21:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 15:21:16 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 15:21:19 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 15:21:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 15:21:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 15:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 15:22:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 15:22:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:22:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 15:22:03 GMT
USER adminer
# Sat, 09 Mar 2019 15:22:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:c5d65304f5184d38aede1f95343efb72d0ffe088730ace4fefb9c324d321d222`  
		Last Modified: Sat, 09 Mar 2019 14:56:16 GMT  
		Size: 12.0 MB (11991805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4982d8bea9b5b5e75eebc8f60af74b7bc5cf6eda2891d94a2ff32b14f87691`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a9928376a0cc049a8d75d51fd19eebdc71aa18b6c924e4113027b3ebd9c47`  
		Last Modified: Sat, 09 Mar 2019 14:56:19 GMT  
		Size: 15.9 MB (15896334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0457953db1d66f5665edff57008a312dc173199266d74d2fb6ffb9da96973121`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ea4d4f75b679367deec772c73ee1dd9f339c342f578ce6ef95ff5350928770`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 71.0 KB (70976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c32c569a3204258f7452f3b73f9eb8144d751f24838c150c5884456b734d0ed`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 8.3 KB (8269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60244358baa3dd794b66b72ca264bd1701da9f6fba07ba8bd997e31db623a161`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67deb3e36e80ee40549ade6a1c24ae9735a3b60e1699603fd1942f3a6c25c58`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8bf211aee12f71e9fece6c75d4116779c4bc8bfa318d36b1e3a92a8d4807e2`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.3 MB (1294291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b8b309abed7bd9db986a56f44fc6b7a1672308fc231b8f401265020a0f1c2f`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 122.1 KB (122100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faacdac878064fdb8f301266530419f15627bf47742cb3a5ba5c495c8a7fc9`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81aebada14d7c3292bb0040b16d9f514fcd46077d51b0f4805e406fec85143bc`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 521.3 KB (521272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292552de784720461bdebfdd213f894379f76d50a169594e9cf7d8e3d0d4a3d1`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:82b4116de924f07359b0413249556b76f96bfbc5ae6b4c10f35e6d02a2fe0fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34963618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7471d9f73bc8c4850fca1d8e1bf635a31bfc32f5dcfca4aee1586779982945`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 14:04:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 14:04:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 14:04:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:10:56 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:57 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:10:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:10:58 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 14:10:58 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 14:10:58 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 14:10:59 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 17:53:45 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:47 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:54:08 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:54:08 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:54:10 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:54:10 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:54:10 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:54:10 GMT
USER adminer
# Sat, 09 Mar 2019 17:54:10 GMT
CMD ["php-fpm"]
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
	-	`sha256:7a1db4d2f527a83f5b88315f6247651ca20717929e6fa24b851b429ea0937f90`  
		Last Modified: Sat, 09 Mar 2019 17:19:44 GMT  
		Size: 12.0 MB (11991790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8934cafa1e0dde478d9b7247830e919e3e8f10b09444704a0e26d2f3ec4cfe`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec79c95e459c007e2ff8123a21347466fbf28861d1fb27b4e19dd0cd8d1f4f8`  
		Last Modified: Sat, 09 Mar 2019 17:19:47 GMT  
		Size: 16.6 MB (16565220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719906c3b027605f7cb3474c1d8509c29f449d0a293ef67fdfe05526e7e5c4aa`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd173abd194343c43fe33682555fcee70e60286c44f1a3210d046842f562dea`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 71.1 KB (71089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e81664489e4a38a72d8e05747dbc6c0544588930cf4b9a6baced68531f35f69`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087606b470ed38969152a1213750fa5ac41406e89987e1053dd2b77192e92eb`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ad7179587a5507646a2c2abd1427715ee74fe653ece556629f41959ee40893`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f47697f2607a828daf36966b0bf923b9614f3b1444f7f027b0d4392c0b7544`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 MB (1386919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2cb66abd29b1a11fb466e2c84171f627d1aeac5e9586366a94b22c7380cb18`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 127.7 KB (127745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8d42a59d08270c4822cd42e780ecde0c2b0b375437149bfb42a38d2021685`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e21599fba6c529daf9b259432015d74efe140e0f58f82239010f3a2170742`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 521.3 KB (521274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e26e64c5f511bcef18a7af480b0b48b6528be633b84ffa731e31b29dd99eb7`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:f2a0c27be630bb7ce8142f61f4d4967b6f3f6eceba8e433d4f98292c807a963f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37913010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69baccceb40e075bb468353b3847646f17cf47187deff0adb3647f40a250d091`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 09:52:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 09:52:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 09:52:24 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 08:58:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:58:58 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:59:00 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:59:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:59:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:03:29 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:03:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:03:38 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:03:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 09:03:45 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 09:03:46 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 12:33:11 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:33:24 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:33:36 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:34:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:34:12 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:34:14 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:34:20 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:34:29 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:34:41 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:34:42 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:34:44 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:34:46 GMT
USER adminer
# Sat, 06 Apr 2019 12:34:51 GMT
CMD ["php-fpm"]
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
	-	`sha256:edef982163b4c9f2578d3f853d7dfbeba114a8b9bf2b362b3db17fbac10625ef`  
		Last Modified: Sat, 06 Apr 2019 11:16:51 GMT  
		Size: 12.0 MB (11996631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78c332f738919b1865ae18b15475403c9130f52995a6f3a36e21f8c9bbf6c50`  
		Last Modified: Sat, 06 Apr 2019 11:16:46 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdb692482ba5ace70f4d741080b4019ccc41857fa65a9ab00f6962a960783da`  
		Last Modified: Sat, 06 Apr 2019 11:16:56 GMT  
		Size: 19.6 MB (19562373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827866acc9932069638f38d47212e3427c58c565fe43cebc2f70d1f1f5d59d6`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6719b82ffe00eb1c3a856828e19ca35835fb5ae2afec25a28a56d08454d1f86a`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 72.0 KB (71969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89aa33e80f878bb0972ace3c51b7fd75cafb9a0aa154a9b91b388fd5f5a2061`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce00b06abf690f0e113f7c73064fd05903a45ecfda6390769ccc82b3bb7f43`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d92251cc5e7fb5a42f07cfb6a38acc996db342aeadf15859360fa679dc87d4`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07dd0e53782a54f2c87614240e605bb6b2184354ae39355a2f1db7fd565090f2`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 1.3 MB (1347660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889c9e7cb235c1a3b5864ccf4d37056e74acce23a02ac825359434a3579f26db`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017d14371d376111e7934ba14c72e8f8f6ff0c5117eff9f18423cc1ef8facc7e`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d4a7d7270223eedb7cdf4f4b5705776fdecc6d525b00cbfaa9c73066609663`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789415fe5c25e111bfd4892f8efcf55b892c3a712bacfa34dd570f37f953cea9`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-standalone`

```console
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-standalone` - linux; arm64 variant v8

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

### `adminer:4-standalone` - linux; 386

```console
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:4-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:e0e68ae7ea12e335768567fdbac6579936d2423ed81d2882506f1e1404df5e9c
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
$ docker pull adminer@sha256:4f14f5185830cdb1010db57fc1477b2f26bb1438f90bfe5525d70a21010ec3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36401048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973e8c923fd431e4cfaf0881d6245971054609b9525fabcc9e03c9ba22f2e963`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 01:00:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 01:00:55 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:45:57 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:45:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:46:00 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:51:41 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:51:42 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:51:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:51:42 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 02:51:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 02:51:43 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 02:51:43 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 06:15:26 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:15:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:28 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:46 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:48 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:48 GMT
CMD ["php-fpm"]
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
	-	`sha256:ba456a436a9b27a56c60edf09af051c52daaed27a1e15e8876db3e7b3b82c51f`  
		Last Modified: Sat, 06 Apr 2019 05:33:19 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e432d8b764b8c7d6dd3c6411b47468404e785a87be4f9a9bd2f79a2066e8218`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e91b3b92761d9907e1c233e49a6e7eb6f83ab5197df100d29206683071f19`  
		Last Modified: Sat, 06 Apr 2019 05:33:22 GMT  
		Size: 18.2 MB (18211729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f334805f8213d34226d074fdf8b5b5b1d174f2d59b61550967651f972c56321`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520f388a7e2da92a8134a06a5768422dd4e90b461b830b2f7aefdc70ff7faac`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 72.2 KB (72163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e494075501b89d5382f4d63e5e38936ae3ae2c1751d259fbf61579bcfe36b2`  
		Last Modified: Sat, 06 Apr 2019 05:33:17 GMT  
		Size: 8.3 KB (8266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4688510654e50858c9e6b5df3e62d89a845babbd8a0315551c5d3bc51df0054d`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a44218ab7fe060672cbe0087079df1ecf2def7e7241ec6abf6554ee5a22c12`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e1c12f46563dbf4f34e6a647e28702b0affc906958c9cc8860db82cc1cc29e`  
		Last Modified: Sat, 06 Apr 2019 06:16:14 GMT  
		Size: 1.3 MB (1267192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064b05b50ac085dd02518e6f8ae840627125ee4e5bafbee842864c245f831743`  
		Last Modified: Sat, 06 Apr 2019 06:16:13 GMT  
		Size: 125.1 KB (125069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea912644a4f7f6511998869e747bde92492568e92d80a1186979d5f3df60d8d5`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b34fb7d910693e6a1750e063aaaa7bfc4bd7d23a3679f463a72f27fac8f3db`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 521.3 KB (521278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f39e26ad65fadf76b72af02a9977e36480fa4515b8f9fe45068a94e9533bf9`  
		Last Modified: Sat, 06 Apr 2019 06:16:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:8a4026eb0adde1f1722bd1bc780e9d7b6096a1d26b72b49306cd5dede9bf9c56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34587701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc54813a052ef1a97f2762a795fb03e1f2438633712a5547b97627f39a1c3449`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 08:53:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 08:53:22 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 07:59:21 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:59:22 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:59:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:59:27 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:02:52 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:02:54 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:02:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:02:54 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 08:02:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 08:02:56 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 08:02:56 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 09:22:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:22:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:22:16 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:22:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:22:43 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:22:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:22:45 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:47 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:48 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:48 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:49 GMT
CMD ["php-fpm"]
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
	-	`sha256:b6d995e199dd615a6a09a389e419d03d13ea03c234da6149f3bf25fbe8dc9622`  
		Last Modified: Sat, 06 Apr 2019 09:01:42 GMT  
		Size: 12.0 MB (11996627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760be14dbd246fd0d09b975c54fade94d3e9033f2699e1a8d659b32b51f4fad5`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0699a7f2f91cb62890122bc87c7f3cc6a66ad3bc8c55b8283c9b9019caaee237`  
		Last Modified: Sat, 06 Apr 2019 09:01:45 GMT  
		Size: 16.7 MB (16737183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b04a279e4b8b0bc550ea323f6e8229edbf33368b16bb10d005fba62fb6bc9bc`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf497b8bedae3375e69474ab9cffe9cba7c80a1234b464a8063cf3ceebafe17`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 71.7 KB (71673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3008a9f5fa222f9df4131e8b260061b5ce04550df0a42d7538270fb8739ed4a4`  
		Last Modified: Sat, 06 Apr 2019 09:01:39 GMT  
		Size: 8.3 KB (8264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed34d12b13fa892825c7463a4285fb240417f565164942aca41513945eb93c78`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe68c7275052744591f08e57cf60764986c594c2915061949fa08cc63ef140`  
		Last Modified: Sat, 06 Apr 2019 09:23:26 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd93c19c3128fcbeaaed720183000608ea2395241622db5e9bdd898679eef9b8`  
		Last Modified: Sat, 06 Apr 2019 09:23:25 GMT  
		Size: 1.2 MB (1204810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e634f8f8741ffeb7a011db7b291ba58481246f14020f73dbf0f7986830bf75`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 117.8 KB (117759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31fa249eec89b1852d9222994076da7e4adca7ed992d78e9c308545bba9f2c8`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f89502ac5950ba45378df51016e296d1857408469bcbc2996bde38aa2e765`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 521.3 KB (521329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a47ad17e919dc999226dc9fff29d0340b2b77f402ba0f454a8841fc8cd995`  
		Last Modified: Sat, 06 Apr 2019 09:23:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:262cf724f3e3f267275d3d63da3b0fc28bbcd83f8ed9f3916e9459fe4d7e6492
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34043793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc33959247dc875e6ab693d17d284388929e7726510733d6d863ff8edb90c85`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 11:03:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 11:03:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 11:03:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 11:03:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 11:03:44 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 11:03:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 11:03:46 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 11:03:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 11:03:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 11:15:02 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:15:05 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 11:15:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 11:15:07 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 11:15:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 11:15:10 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 11:15:11 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 15:21:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 15:21:16 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 15:21:19 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 15:21:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 15:21:55 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 15:21:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 15:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 15:22:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 15:22:02 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:22:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 15:22:03 GMT
USER adminer
# Sat, 09 Mar 2019 15:22:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:c5d65304f5184d38aede1f95343efb72d0ffe088730ace4fefb9c324d321d222`  
		Last Modified: Sat, 09 Mar 2019 14:56:16 GMT  
		Size: 12.0 MB (11991805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4982d8bea9b5b5e75eebc8f60af74b7bc5cf6eda2891d94a2ff32b14f87691`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a9928376a0cc049a8d75d51fd19eebdc71aa18b6c924e4113027b3ebd9c47`  
		Last Modified: Sat, 09 Mar 2019 14:56:19 GMT  
		Size: 15.9 MB (15896334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0457953db1d66f5665edff57008a312dc173199266d74d2fb6ffb9da96973121`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ea4d4f75b679367deec772c73ee1dd9f339c342f578ce6ef95ff5350928770`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 71.0 KB (70976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c32c569a3204258f7452f3b73f9eb8144d751f24838c150c5884456b734d0ed`  
		Last Modified: Sat, 09 Mar 2019 14:56:13 GMT  
		Size: 8.3 KB (8269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60244358baa3dd794b66b72ca264bd1701da9f6fba07ba8bd997e31db623a161`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67deb3e36e80ee40549ade6a1c24ae9735a3b60e1699603fd1942f3a6c25c58`  
		Last Modified: Sat, 09 Mar 2019 15:22:58 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8bf211aee12f71e9fece6c75d4116779c4bc8bfa318d36b1e3a92a8d4807e2`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.3 MB (1294291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b8b309abed7bd9db986a56f44fc6b7a1672308fc231b8f401265020a0f1c2f`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 122.1 KB (122100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faacdac878064fdb8f301266530419f15627bf47742cb3a5ba5c495c8a7fc9`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81aebada14d7c3292bb0040b16d9f514fcd46077d51b0f4805e406fec85143bc`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 521.3 KB (521272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292552de784720461bdebfdd213f894379f76d50a169594e9cf7d8e3d0d4a3d1`  
		Last Modified: Sat, 09 Mar 2019 15:22:56 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:82b4116de924f07359b0413249556b76f96bfbc5ae6b4c10f35e6d02a2fe0fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34963618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7471d9f73bc8c4850fca1d8e1bf635a31bfc32f5dcfca4aee1586779982945`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 14:04:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 14:04:38 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 14:04:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 14:04:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:10:56 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:10:57 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:10:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:10:58 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 14:10:58 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 14:10:58 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 14:10:59 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 17:53:45 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:47 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:54:08 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:54:08 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:54:08 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:54:10 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:54:10 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:54:10 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:54:10 GMT
USER adminer
# Sat, 09 Mar 2019 17:54:10 GMT
CMD ["php-fpm"]
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
	-	`sha256:7a1db4d2f527a83f5b88315f6247651ca20717929e6fa24b851b429ea0937f90`  
		Last Modified: Sat, 09 Mar 2019 17:19:44 GMT  
		Size: 12.0 MB (11991790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8934cafa1e0dde478d9b7247830e919e3e8f10b09444704a0e26d2f3ec4cfe`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec79c95e459c007e2ff8123a21347466fbf28861d1fb27b4e19dd0cd8d1f4f8`  
		Last Modified: Sat, 09 Mar 2019 17:19:47 GMT  
		Size: 16.6 MB (16565220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719906c3b027605f7cb3474c1d8509c29f449d0a293ef67fdfe05526e7e5c4aa`  
		Last Modified: Sat, 09 Mar 2019 17:19:42 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd173abd194343c43fe33682555fcee70e60286c44f1a3210d046842f562dea`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 71.1 KB (71089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e81664489e4a38a72d8e05747dbc6c0544588930cf4b9a6baced68531f35f69`  
		Last Modified: Sat, 09 Mar 2019 17:19:41 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2087606b470ed38969152a1213750fa5ac41406e89987e1053dd2b77192e92eb`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ad7179587a5507646a2c2abd1427715ee74fe653ece556629f41959ee40893`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f47697f2607a828daf36966b0bf923b9614f3b1444f7f027b0d4392c0b7544`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 1.4 MB (1386919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2cb66abd29b1a11fb466e2c84171f627d1aeac5e9586366a94b22c7380cb18`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 127.7 KB (127745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8d42a59d08270c4822cd42e780ecde0c2b0b375437149bfb42a38d2021685`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e21599fba6c529daf9b259432015d74efe140e0f58f82239010f3a2170742`  
		Last Modified: Sat, 09 Mar 2019 17:54:33 GMT  
		Size: 521.3 KB (521274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e26e64c5f511bcef18a7af480b0b48b6528be633b84ffa731e31b29dd99eb7`  
		Last Modified: Sat, 09 Mar 2019 17:54:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:f2a0c27be630bb7ce8142f61f4d4967b6f3f6eceba8e433d4f98292c807a963f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37913010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69baccceb40e075bb468353b3847646f17cf47187deff0adb3647f40a250d091`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 09 Mar 2019 09:52:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 09 Mar 2019 09:52:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 09 Mar 2019 09:52:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Mar 2019 09:52:24 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 06 Apr 2019 08:58:57 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:58:58 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:59:00 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:59:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:59:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:03:29 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:03:33 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:03:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:03:38 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:03:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 09:03:45 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 09:03:46 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 12:33:11 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:33:24 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:33:36 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:34:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:34:12 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:34:14 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:34:20 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:34:29 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:34:41 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:34:42 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:34:44 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:34:46 GMT
USER adminer
# Sat, 06 Apr 2019 12:34:51 GMT
CMD ["php-fpm"]
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
	-	`sha256:edef982163b4c9f2578d3f853d7dfbeba114a8b9bf2b362b3db17fbac10625ef`  
		Last Modified: Sat, 06 Apr 2019 11:16:51 GMT  
		Size: 12.0 MB (11996631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78c332f738919b1865ae18b15475403c9130f52995a6f3a36e21f8c9bbf6c50`  
		Last Modified: Sat, 06 Apr 2019 11:16:46 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdb692482ba5ace70f4d741080b4019ccc41857fa65a9ab00f6962a960783da`  
		Last Modified: Sat, 06 Apr 2019 11:16:56 GMT  
		Size: 19.6 MB (19562373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827866acc9932069638f38d47212e3427c58c565fe43cebc2f70d1f1f5d59d6`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6719b82ffe00eb1c3a856828e19ca35835fb5ae2afec25a28a56d08454d1f86a`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 72.0 KB (71969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89aa33e80f878bb0972ace3c51b7fd75cafb9a0aa154a9b91b388fd5f5a2061`  
		Last Modified: Sat, 06 Apr 2019 11:16:45 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce00b06abf690f0e113f7c73064fd05903a45ecfda6390769ccc82b3bb7f43`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d92251cc5e7fb5a42f07cfb6a38acc996db342aeadf15859360fa679dc87d4`  
		Last Modified: Sat, 06 Apr 2019 12:36:11 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07dd0e53782a54f2c87614240e605bb6b2184354ae39355a2f1db7fd565090f2`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 1.3 MB (1347660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889c9e7cb235c1a3b5864ccf4d37056e74acce23a02ac825359434a3579f26db`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017d14371d376111e7934ba14c72e8f8f6ff0c5117eff9f18423cc1ef8facc7e`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d4a7d7270223eedb7cdf4f4b5705776fdecc6d525b00cbfaa9c73066609663`  
		Last Modified: Sat, 06 Apr 2019 12:36:09 GMT  
		Size: 521.3 KB (521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789415fe5c25e111bfd4892f8efcf55b892c3a712bacfa34dd570f37f953cea9`  
		Last Modified: Sat, 06 Apr 2019 12:36:08 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:latest`

```console
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; arm64 variant v8

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

### `adminer:latest` - linux; 386

```console
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:standalone`

```console
$ docker pull adminer@sha256:8ab3cfea86cbb051941c85498a6dfc54421485621e2929c7dc4d26c488237f75
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
$ docker pull adminer@sha256:8e0eb60e4df53e657d22e41d8b5893630b52e903df10df74e3b7c194c831d11c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36324968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9029d90ed2ebbe3e0d3254fc312a29f87a66893388cac0d135382425e6db144b`
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
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 02:40:11 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 02:40:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 02:40:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 02:45:52 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 02:45:52 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 02:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 02:45:53 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 06:14:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 06:14:59 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 06:15:00 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 06:15:00 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 06:15:01 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 06:15:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 06:15:19 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 06:15:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 06:15:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 06:15:21 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 06:15:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 06:15:21 GMT
USER adminer
# Sat, 06 Apr 2019 06:15:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 06:15:21 GMT
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
	-	`sha256:723d6ad88c9ccd1d3e92b7abf55dfe305cbee88c394b62559cdd22f008108be8`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 12.0 MB (11996614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c899b3876d3f122bb04cf25fdb95387bb67d1faa5d698e8db2d29498575fef9`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867278daf5f5c28eabf94d43d6287447148a79a9341c23c9fc4d1273f76708a`  
		Last Modified: Sat, 06 Apr 2019 05:33:04 GMT  
		Size: 18.1 MB (18143911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c219eda3e47746b3e672107c78d406f3de95bb05fd6c80bb76c148e966136c`  
		Last Modified: Sat, 06 Apr 2019 05:33:00 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334c4eb73c7d712308d9796d39c0e112648eeadea8670bef8f118fc80ce9229`  
		Last Modified: Sat, 06 Apr 2019 05:32:59 GMT  
		Size: 72.2 KB (72164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdf38c6c43623ea48088436bc02e0c9f48f99e6813af45adaaea0c51ae5bc36`  
		Last Modified: Sat, 06 Apr 2019 06:16:01 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff80e7e04f2df9cdabbeb11eea6b4d152077e2e5e43b259fa84b64ba217ac03a`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da584baa409aaa1f32df7888177679be0f725655e31415c1a62ca9b0f7d841d`  
		Last Modified: Sat, 06 Apr 2019 06:16:00 GMT  
		Size: 1.3 MB (1267206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c3e8a9b50b417b8f3ec65e9e875611543559bb1fb806cfdda0da7bc72fc1a6`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 125.1 KB (125066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78bd2c894201a6572ce4d9c974083e8d8f0fc18cc375803534c7374ed53c525`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e5e52114d64a69d092e80f9fd890f00aa4f255a1a4e567338b9c78b1513d97`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536ae3306e0312b9fcc79284d52dfa2ed6f75e554119b2465f2e03ea2ea4cfe9`  
		Last Modified: Sat, 06 Apr 2019 06:15:59 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:504c2a006461c67d1cc2ddab11890113ff44a5fc2ee5296e1934d3b5592747c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d9aa9e7b27030c41f6418d43a78b0b5cb36f5b94ce1cb3d04d5d1e193de48`
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
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 07:55:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 07:55:37 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 07:55:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 07:55:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 07:59:13 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:59:15 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 07:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 07:59:16 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 09:21:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 09:21:26 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 09:21:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 09:21:27 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:21:29 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 09:21:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 09:21:57 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 09:21:57 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 09:21:58 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 09:22:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 09:22:01 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:22:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:22:01 GMT
USER adminer
# Sat, 06 Apr 2019 09:22:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 09:22:02 GMT
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
	-	`sha256:5a6f0dc36e0351c0024c83f296e53432bd2e1567d3ac2d7f8dd0d84f4eba14c9`  
		Last Modified: Sat, 06 Apr 2019 09:01:05 GMT  
		Size: 12.0 MB (11996630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05be4a9fd343e96264c113a7f0174303ba33c6795d9836a92c72ad20772372`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23816b82cc1572175c7393808ccae56d050b1fd450d3886bae5d9654b2cd69e`  
		Last Modified: Sat, 06 Apr 2019 09:01:10 GMT  
		Size: 16.7 MB (16667745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870af875d4b2848ef2f7f3c057e4f7ab9c5fbd332bdf0d7b15d97aea2278cd55`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aa918dfb5d23124a26026783e1bfec74b57370a07402a87854fdb9c966b820`  
		Last Modified: Sat, 06 Apr 2019 09:01:04 GMT  
		Size: 71.7 KB (71674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1988e6fcb5ba9a4d55a3d1a6aa0a3b46a5ba2be85c28df2281e318fa27ddbdd0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc630ed3f91bd3c67730783edd0a85e5e9780086752f607fa2555c5e1172b7d0`  
		Last Modified: Sat, 06 Apr 2019 09:23:07 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9de42ff979aa3839e22816d7a8fb29d44f35b8fe4c17fab63bbdf6214359e56`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.2 MB (1204803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee974f887a28198341c77d75914d052c61258b02483bcfd4a56a63bdb89b2b`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 117.8 KB (117758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f50d15e1813ec44fd71ddb08e83e01188b04c9c78281ec15de18bb997ffa117`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f669648267926d677ab03a23e6163e6ac6835467f26e28033089079847685`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 521.3 KB (521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c604545443ce68b603adba2808d5833503fdaad53e1a514cd6e2143ec9827893`  
		Last Modified: Sat, 06 Apr 2019 09:23:06 GMT  
		Size: 494.0 B  
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
$ docker pull adminer@sha256:9ab43e12ff923dc468d22e170f91945a6c4a158024599ac6186fe84c85fdcc99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34886430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee148997b9535ee2665cc396f1face97dc3fa5fd8d0dd78307e7cf76e6c5c6c8`
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
# Sat, 09 Mar 2019 13:58:08 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:58:09 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:58:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 13:58:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:04:23 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:04:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:04:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:04:24 GMT
CMD ["php" "-a"]
# Sat, 09 Mar 2019 17:53:18 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 09 Mar 2019 17:53:18 GMT
STOPSIGNAL SIGINT
# Sat, 09 Mar 2019 17:53:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 09 Mar 2019 17:53:19 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 17:53:20 GMT
RUN apk add --no-cache libpq
# Sat, 09 Mar 2019 17:53:37 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 09 Mar 2019 17:53:38 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 09 Mar 2019 17:53:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 09 Mar 2019 17:53:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 09 Mar 2019 17:53:40 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 09 Mar 2019 17:53:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 09 Mar 2019 17:53:40 GMT
USER adminer
# Sat, 09 Mar 2019 17:53:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 09 Mar 2019 17:53:40 GMT
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
	-	`sha256:c4ef2908004b5535c8712398246f0583b11f6f9f7b8b34bd63b8e1096ac087f2`  
		Last Modified: Sat, 09 Mar 2019 17:19:19 GMT  
		Size: 12.0 MB (11991782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5376dcd024e6fc8352f62f02bee5b60b185626237676fe6c7100e9aac49a35`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94860033d04afcf2d074df77ae612644550d30662b2aef5b037cdc9d70f473`  
		Last Modified: Sat, 09 Mar 2019 17:19:23 GMT  
		Size: 16.5 MB (16496302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d20680ee45b6dc8110178fcaa8d00c0940802fed316ca4735a1ddeca6406eb`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21947a60d45bd7123997c49e8ed27a95021c9033b5e3b337211cdd123600e329`  
		Last Modified: Sat, 09 Mar 2019 17:19:18 GMT  
		Size: 71.1 KB (71087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dda5b7ba660325bd47e77c55e1e198f47b741aa6d863397d46365c5c6424a0`  
		Last Modified: Sat, 09 Mar 2019 17:54:24 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e03d2d6e0875fd2c4931cb8fc398587f80d61759f21a74d997cb4a58b80918`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e48ff31b32ca2baaefccbaa3a977195c1c96f8bb5761a3df249105bc6c312`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.4 MB (1386916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e3b55680c2b929459ae9c8a53e1eb788c2862c9d0e77690be0b38b69601acd`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 127.8 KB (127763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5025eb95337a5f0cfd8e04155ec0c0621945823cc056cc04c5fae28c78e861d`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7064c03bc6ce88dff2b33896e362d31f8ee14c4d5fed970a0eaaac6713107`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 521.3 KB (521273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880a7f72a2ec508eb2d92a37481756f7f4e6cafd0c7db64f60eec900e25d83a`  
		Last Modified: Sat, 09 Mar 2019 17:54:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:73a08e152febb577084cf574ea51f8ba847aaa6420267418c1aab90abd1aa516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37829504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b93a14e43498400c1a35aaad0981a9b47ac0f6cbb6d6ca1d613ed5c6120966`
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
# Sat, 06 Apr 2019 08:53:46 GMT
ENV PHP_VERSION=7.3.4
# Sat, 06 Apr 2019 08:53:49 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.4.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.4.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 08:53:51 GMT
ENV PHP_SHA256=6fe79fa1f8655f98ef6708cde8751299796d6c1e225081011f4104625b923b83 PHP_MD5=
# Sat, 06 Apr 2019 08:54:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 06 Apr 2019 08:54:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 08:58:35 GMT
COPY multi:03970f7b3773444b9f7f244f89d3ceeb4253ac6599f0ba0a4c0306c5bf7d1b9b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:58:39 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 08:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 08:58:42 GMT
CMD ["php" "-a"]
# Sat, 06 Apr 2019 12:30:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini
# Sat, 06 Apr 2019 12:30:27 GMT
STOPSIGNAL SIGINT
# Sat, 06 Apr 2019 12:30:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Sat, 06 Apr 2019 12:30:53 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:31:09 GMT
RUN apk add --no-cache libpq
# Sat, 06 Apr 2019 12:31:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Sat, 06 Apr 2019 12:31:45 GMT
COPY multi:898ae37934d28970c4a0c1de7de016505a696f9b480cb418e434a570c03a21c6 in /var/www/html/ 
# Sat, 06 Apr 2019 12:31:49 GMT
ENV ADMINER_VERSION=4.7.1
# Sat, 06 Apr 2019 12:31:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=166e9b4db43647e35a5e93cad793e1ba6d695425101e07a3619c90b6d364f601
# Sat, 06 Apr 2019 12:32:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=1e024f51442434ec48e8fb97b1c7ea1e54625c881452b906b8575293b1a1b4b4
# Sat, 06 Apr 2019 12:32:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Sat, 06 Apr 2019 12:32:23 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:32:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:32:38 GMT
USER adminer
# Sat, 06 Apr 2019 12:32:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sat, 06 Apr 2019 12:32:47 GMT
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
	-	`sha256:2ecd503aff0abd0add00c71f64f95faa5756099c610e4e2dda7324fb97f9eecd`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 12.0 MB (11996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85493a3d8fd6cf8995b423560d811d11f4a62662799937702eb5e2310bfcac46`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ec3308b6d917f19c1e6a47318ffbc0aa0b49c8bfcbb1bd4f767e71dc07a86a`  
		Last Modified: Sat, 06 Apr 2019 11:15:57 GMT  
		Size: 19.5 MB (19487122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ffb246f37fa6569e996ce22071523298cc494ad419f39a527fa042bd2f147`  
		Last Modified: Sat, 06 Apr 2019 11:15:44 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ea40a6b50bee00969f97495c8a39f3a0a1e07fc631a9e26cb36c9c05e83c80`  
		Last Modified: Sat, 06 Apr 2019 11:15:45 GMT  
		Size: 72.0 KB (71967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad86b92fe9bde9e3c49e58866abdb93244abb34da813359e68d4b939957bc84`  
		Last Modified: Sat, 06 Apr 2019 12:35:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93710f628bf59e10da5837c63ec1b03028aef3bda58d69fd1703a92426c81495`  
		Last Modified: Sat, 06 Apr 2019 12:35:32 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb910e89cc5e1c6d15b61e1f23be50ee72d18d99a421ebf13dd92161ef00fdc`  
		Last Modified: Sat, 06 Apr 2019 12:35:30 GMT  
		Size: 1.3 MB (1347670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6f34270cc89b7ad531c437a9bd7483a1f0c00e5085e7e9c1df0417c391f723`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 134.3 KB (134264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b8cd6c76748c674c74cf23775d717800acac4b11e0df746f2d3251a7b3cb3`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a506a5bbc2079f72198ca3254ca069d714c45899276b160277155c2191d14d5`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 521.3 KB (521330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579bb819b1eb523971cbc28b6b11a90628a0fbce767f159bef202b337fd8ae2d`  
		Last Modified: Sat, 06 Apr 2019 12:35:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
