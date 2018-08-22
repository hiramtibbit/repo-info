## `php:rc-alpine`

```console
$ docker pull php@sha256:37621090014d8fbadda5c0c1cdbcfa19ae9864eecceced7c69bcb254a5322369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-alpine` - linux; amd64

```console
$ docker pull php@sha256:863656dd99d005f4590411ab479950ba59c47f56350b297fcec0d18c6bf11c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26705078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2dced694dde78372e82d036c5fadd74032d76a765ea23dfcdd011608fa98e5e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:51:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 04 Nov 2017 09:51:52 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Sat, 04 Nov 2017 09:51:53 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 04 Nov 2017 09:51:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 09:51:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 09:51:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 09:51:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 09:51:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 09:51:54 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 13 Nov 2017 17:06:19 GMT
ENV PHP_VERSION=7.2.0RC6
# Mon, 13 Nov 2017 17:06:19 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Mon, 13 Nov 2017 17:06:20 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Mon, 13 Nov 2017 17:06:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 13 Nov 2017 17:06:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 13 Nov 2017 17:11:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 13 Nov 2017 17:11:51 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Mon, 13 Nov 2017 17:11:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 13 Nov 2017 17:11:52 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807b10e8980a461e7a2f8e9c4ed7ac910f588e7c5d1d8a13f66b0fa5bf121acd`  
		Last Modified: Sat, 04 Nov 2017 11:50:49 GMT  
		Size: 1.4 MB (1384693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19906f73daa2e7b60da0b67d987508bc1786680a22079471701f3fdb7aefcdc6`  
		Last Modified: Sat, 04 Nov 2017 11:50:49 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cb58eb5e53ae91067329f07af5c50e8e9c10d18259fd011eca172a9da29a81`  
		Last Modified: Sat, 04 Nov 2017 11:50:46 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a5474df4049c28c53ebeb6e0d25c9523f3de345a586d5c9861eb7a6ff0a946`  
		Last Modified: Mon, 13 Nov 2017 17:29:40 GMT  
		Size: 12.1 MB (12097056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2acff5519e39d41ee504367cf014cbbd177124d8015b7ec1e3524a684c021fd`  
		Last Modified: Mon, 13 Nov 2017 17:29:38 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8c4ebe7d552c2b4ed65a51ce6f2de314bbf6b323d31f6c1418489821a339c9`  
		Last Modified: Mon, 13 Nov 2017 17:29:41 GMT  
		Size: 11.2 MB (11227816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fb56dfb607606bf4cc4a8a6fe652a505ec68e58ed85c4ccbf206b5da14a696`  
		Last Modified: Mon, 13 Nov 2017 17:29:38 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-alpine` - linux; arm variant v6

```console
$ docker pull php@sha256:e3753a5d020aef890e6b13c6ae51917c8685e589e650804b56019e85a81a9463
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27192226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d84730c55df062bbc62722bb0d63875dfadeff9447e0ec64667de6662d0093`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 26 Oct 2017 05:16:20 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 26 Oct 2017 05:16:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 05:16:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Oct 2017 05:16:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 26 Oct 2017 05:16:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:16:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:16:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 05:16:22 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 06:16:19 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 06:16:20 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 06:16:20 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 06:16:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 06:16:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:19:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 06:19:24 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:19:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 06:19:24 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2996b2ff4eaa561fdeacf3bc2012814adfb48cbd69588829033692e7b8f603fc`  
		Last Modified: Thu, 26 Oct 2017 05:23:37 GMT  
		Size: 1.4 MB (1375456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f428b6cefb9dee778efd31407485f73c997649a7557eb9c3125cd2394aff10e7`  
		Last Modified: Thu, 26 Oct 2017 05:23:36 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e82d0f9154e7a46f455c475627a4c8b5363c54a3ab6fdfd34cc86d4e35fb6e6`  
		Last Modified: Thu, 26 Oct 2017 05:23:35 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f65b5e6ffbad1e6698a50f1562c682fbc54ce9c5e04529057300c54eb9443`  
		Last Modified: Tue, 14 Nov 2017 06:26:28 GMT  
		Size: 12.1 MB (12097437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb15264be1f7073b122529119cc7e0035ec7bd8a3c500aec6fac739a5c29fd7a`  
		Last Modified: Tue, 14 Nov 2017 06:26:26 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4dfedb2694d2f854312ad140fccc1eeee06afbf85d8a7e3abf3c8ddf4a4358`  
		Last Modified: Tue, 14 Nov 2017 06:26:30 GMT  
		Size: 11.7 MB (11749044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c124df9db70f224a2bb39eb73d3e01de1f1a160c17022bd4c498934a9b6634e7`  
		Last Modified: Tue, 14 Nov 2017 06:26:25 GMT  
		Size: 2.2 KB (2158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-alpine` - linux; arm64 variant v8

```console
$ docker pull php@sha256:68f9e73da712b1f39f44e1b953ac39540e94097e81376ec6bc64df81e5fe529a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27043712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c700675411bbf1f33e4ed835be692de1b920fd3d955c3f755071291c68c5d15`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:54:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 26 Oct 2017 17:54:09 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 26 Oct 2017 17:54:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 17:54:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Oct 2017 17:54:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 26 Oct 2017 17:54:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 17:54:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 17:54:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 17:54:16 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 03:32:19 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 03:32:20 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 03:32:20 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 03:32:34 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 03:32:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 03:39:36 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 03:39:37 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 14 Nov 2017 03:39:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 03:39:38 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857611f6a16b070d55cedf3c2d8ea36ab42e161a10ed3f538bfbed280635cbc`  
		Last Modified: Thu, 26 Oct 2017 18:24:31 GMT  
		Size: 1.3 MB (1338712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3946663ddfa5f2eff02d0ab0a55595a097914c3fa72d7214ba1cc0f2666e1bc8`  
		Last Modified: Thu, 26 Oct 2017 18:24:30 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2109acbf4c2767aab214528a9437e4d50cab1b58ea105df3cfc5d1b07b251061`  
		Last Modified: Thu, 26 Oct 2017 18:24:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9f2400a949dd854592f0d94522c19ff65c3b97fc60800e6904bc51640df0a0`  
		Last Modified: Tue, 14 Nov 2017 04:06:54 GMT  
		Size: 12.1 MB (12097413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd10d8ec015cdd3b95aca9b464328f910528c6526aac6d2aaeaa655ce8f5124`  
		Last Modified: Tue, 14 Nov 2017 04:06:50 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2ab5f4aa8953d9dcf8db326d6b23197874d9998d7f8f70f569a8d29c31a1e1`  
		Last Modified: Tue, 14 Nov 2017 04:06:56 GMT  
		Size: 11.7 MB (11688584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014c7783942150807cacc2b0fd999f667b394d9364df75a6e0ef57c21579982b`  
		Last Modified: Tue, 14 Nov 2017 04:06:51 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-alpine` - linux; 386

```console
$ docker pull php@sha256:f15e5ece8c74122dbc42c34caaa74c67fc53fd87e621dc47c4e930ca16a7334c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28497001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c337fc0c1ef39bf5a65ab2221486de266c532dba31e1ddb5a4fa653d2b333a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 08:40:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 26 Oct 2017 08:40:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 26 Oct 2017 08:40:16 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 08:40:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Oct 2017 08:40:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 26 Oct 2017 08:40:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:40:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:40:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 08:40:17 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 10:18:51 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 10:18:51 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 10:18:51 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 10:20:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 10:20:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:26:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 10:26:14 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:26:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 10:26:15 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28494a0a99df3dc5644403394da032c6e411af153b32179b98ea004647768c4e`  
		Last Modified: Thu, 26 Oct 2017 09:01:58 GMT  
		Size: 1.5 MB (1481801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642ad5fb05b78eeb5e303346a7af9db90031a02baad1f72c1ee142c7553642a`  
		Last Modified: Thu, 26 Oct 2017 09:01:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cfc4d9e78b8a5c84d99a79570ed023e951438a3d40b35762448fadeb9b0149`  
		Last Modified: Thu, 26 Oct 2017 09:01:57 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe263c4f5df0a63914d2978969a7c3d61b89c25aed8bde1c0d1a1337df1c41b`  
		Last Modified: Tue, 14 Nov 2017 10:57:53 GMT  
		Size: 12.1 MB (12097428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69484d8a162b8b507eb6ed398567577e0916a0781734639c20f5576677bd566c`  
		Last Modified: Tue, 14 Nov 2017 10:57:52 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f275b1a5032026a00128eaacd7a93e28d8650150c550a2ccba6620deb18951`  
		Last Modified: Tue, 14 Nov 2017 10:57:56 GMT  
		Size: 12.9 MB (12867924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42155c894fa1fce9c183cdc6ebcbecf04259d0757e3b9e798b0dc5efe5b6741f`  
		Last Modified: Tue, 14 Nov 2017 10:57:52 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-alpine` - linux; ppc64le

```console
$ docker pull php@sha256:dfaa415453ed8889439a1128ae1061865ce9363a749a8745b2418badcd1612ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15298692b70ad455e02344514a1d70ac73329fd02c54a3aa62f374c9ce6f9a48`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 08:48:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 26 Oct 2017 08:48:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 26 Oct 2017 08:49:01 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 08:49:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Oct 2017 08:49:06 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 26 Oct 2017 08:49:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:49:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:49:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 08:49:15 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 10:19:16 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 10:19:17 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 10:19:18 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:19:34 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 16 Nov 2017 10:19:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:23:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:23:02 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:23:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:23:04 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d76979878444de9220124433bc3d22ee6df14f18f7ef98eb7f1dfe68571379`  
		Last Modified: Thu, 26 Oct 2017 09:04:31 GMT  
		Size: 1.4 MB (1379954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a19135bdde3722b4666df26fb275b6e9fa3157c4ac9fe804ab56fb791181d0`  
		Last Modified: Thu, 26 Oct 2017 09:04:29 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666ea529470302aee381c124067ac3f1714aa89c4dfffd403912d35cf8b1d40`  
		Last Modified: Thu, 26 Oct 2017 09:04:27 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa12f8f99e06b74c530abfefaee8c0441f0cff5909a729a26ed3cc4998ee90e`  
		Last Modified: Thu, 16 Nov 2017 10:36:43 GMT  
		Size: 12.1 MB (12097487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d7613fd7bda46a1638b4183f6350b3b2b1480cb6944150ba8ba081f2efc3a2`  
		Last Modified: Thu, 16 Nov 2017 10:36:29 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52435ad7b8e22a8dbff44a8d2f15bb9b271d62d418ed6d5df012ba7c08dd5f05`  
		Last Modified: Thu, 16 Nov 2017 10:36:33 GMT  
		Size: 12.3 MB (12307426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c649eda59c5814fb2ef1840cbec0799a09d2f72d3dcf5904330c476b0bd3f22`  
		Last Modified: Thu, 16 Nov 2017 10:36:29 GMT  
		Size: 2.2 KB (2154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
