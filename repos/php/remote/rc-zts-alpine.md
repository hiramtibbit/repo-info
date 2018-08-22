## `php:rc-zts-alpine`

```console
$ docker pull php@sha256:a2e0bc6b46f887136c0cd69d837ba25ca8a5dcd64d2c6dd9ac4aac3b0487fbe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-zts-alpine` - linux; amd64

```console
$ docker pull php@sha256:263ce99f5c8c7fee51103a21e7ce6611c68269bbd59bf8f0441e395b51d58937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26840041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd18620591395159eba134143215f1f15a1b4ac4f1ecd1432ea19459d47d6648`
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
# Sat, 04 Nov 2017 10:05:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Sat, 04 Nov 2017 10:05:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:05:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:05:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 10:05:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 13 Nov 2017 17:18:44 GMT
ENV PHP_VERSION=7.2.0RC6
# Mon, 13 Nov 2017 17:18:44 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Mon, 13 Nov 2017 17:18:44 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Mon, 13 Nov 2017 17:18:57 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 13 Nov 2017 17:18:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 13 Nov 2017 17:24:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 13 Nov 2017 17:24:23 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Mon, 13 Nov 2017 17:24:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 13 Nov 2017 17:24:24 GMT
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
	-	`sha256:4a41bab3e91e2990a02a767acb725bee2ec88424732b92ce6972ca8a00f46b9b`  
		Last Modified: Mon, 13 Nov 2017 17:31:52 GMT  
		Size: 12.1 MB (12097062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b941c5443b35715fa7715fe703cfeb8b835785b837d757134351867c54a84a3e`  
		Last Modified: Mon, 13 Nov 2017 17:31:50 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728963867e9f3a18ae00e751d5e0d5c6c152d8f6cb10220d43ca4db28c8e9aa2`  
		Last Modified: Mon, 13 Nov 2017 17:31:53 GMT  
		Size: 11.4 MB (11362772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bc63dd921e0c8be09b3b274e568c23cb930bfcbf0ba852e0e80b75984b0251`  
		Last Modified: Mon, 13 Nov 2017 17:31:51 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts-alpine` - linux; arm variant v6

```console
$ docker pull php@sha256:716afd519e81b86e8ea6b35f6379ab3e7be1dc7ed53b32fabd154a3a8874d667
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27397926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4b4ea4f673f700e036df4435806e6b47af1a3b9e576775eeb84dd827ccf6d9`
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
# Thu, 26 Oct 2017 05:20:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 26 Oct 2017 05:20:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:20:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:20:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 05:20:13 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 06:23:01 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 06:23:01 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 06:23:02 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 06:23:09 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 06:23:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:26:08 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 06:26:09 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:26:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 06:26:09 GMT
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
	-	`sha256:ab60725b44e4ee5fd1aaecf934134eca5b93a541af6a7b7cf68a4bcbb3985db9`  
		Last Modified: Tue, 14 Nov 2017 06:27:07 GMT  
		Size: 12.1 MB (12097430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3376ea49423d5ff7e2505fd0bd8fa7ffeed3e4f556e6c3bb5e96760c68c47da`  
		Last Modified: Tue, 14 Nov 2017 06:27:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a74a4214783e6c2a89e326d384e8778128919c6dba7ea67c513283256a833c`  
		Last Modified: Tue, 14 Nov 2017 06:27:11 GMT  
		Size: 12.0 MB (11954747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ab9b1558debdd849f2256ae3408a714d60e7840ab8ede962d9a2326c26264a`  
		Last Modified: Tue, 14 Nov 2017 06:27:06 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts-alpine` - linux; arm64 variant v8

```console
$ docker pull php@sha256:5d6967d51e608c781928b7c04b884d08689550b541502d52ed1bf11cc0a749e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27246710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e83746f8882c1ab44aa514e0e7b6d87319f3b22d762a87d3e745b6c69dbb9ed`
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
# Thu, 26 Oct 2017 18:13:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 26 Oct 2017 18:13:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 18:13:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 18:13:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 18:13:35 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 03:48:16 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 03:48:17 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 03:48:18 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 03:48:54 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 03:48:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 03:56:15 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 03:56:17 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 14 Nov 2017 03:56:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 03:56:18 GMT
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
	-	`sha256:b5e29facef78864023e9e3574c1697ec8470468ced19bcf97e952de801ce77b4`  
		Last Modified: Tue, 14 Nov 2017 04:12:06 GMT  
		Size: 12.1 MB (12097412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805401a55fcc5db881e98da221409ffc8d7ccdf7b0dad3121f832e0bc4c4e4`  
		Last Modified: Tue, 14 Nov 2017 04:12:04 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360c5287f0308096e87830642ae2bed9885f54d965963a25c20e9fa76af4164a`  
		Last Modified: Tue, 14 Nov 2017 04:12:09 GMT  
		Size: 11.9 MB (11891579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f9f29f6527ef22155e597986d7d6415a711c94b917b91c9eb414025a640b68`  
		Last Modified: Tue, 14 Nov 2017 04:12:04 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts-alpine` - linux; 386

```console
$ docker pull php@sha256:2a819532c6b3c27666f23f37acf88bbad8d0420152075a91da2f0de91676a597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28637805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13690ffec05422a7698b3c707bb027f447f32b331fbe8bbab7ab26e32438bc9`
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
# Thu, 26 Oct 2017 08:50:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 26 Oct 2017 08:50:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:50:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:50:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 08:50:53 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 10:41:50 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 10:41:50 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 10:41:50 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 10:42:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 10:42:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:47:21 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 10:47:22 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:47:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 10:47:22 GMT
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
	-	`sha256:fba5c1b4aa69a69d040284b89ba47c45513f2350e95b30c6cefc43ad6e7681d7`  
		Last Modified: Tue, 14 Nov 2017 11:00:27 GMT  
		Size: 12.1 MB (12097430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d8e5697dbfbdc83f7183e01b3e68b6122059775fed08e555d7cac38aad272a`  
		Last Modified: Tue, 14 Nov 2017 11:00:26 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c98bc4f53a4560e17b90860e33ec6dc3ffebe8583cf46e8ae1bccf65ea19a1`  
		Last Modified: Tue, 14 Nov 2017 11:00:28 GMT  
		Size: 13.0 MB (13008732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea9deb4785af98d335d5e93082d12e888e5d013669c2528e809adf94baa3c05`  
		Last Modified: Tue, 14 Nov 2017 11:00:25 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts-alpine` - linux; ppc64le

```console
$ docker pull php@sha256:9b91c1e0e0fd2067c1147386abe15237d6c8eb89910784146ec3afbbf0bb4d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27926003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811eba3d5acf1407121d6e7919f428673be5796952c725922a90d7a1d74a111b`
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
# Thu, 26 Oct 2017 08:58:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 26 Oct 2017 08:58:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:58:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:58:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 08:58:34 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 10:27:40 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 10:27:41 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 10:27:42 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:28:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 16 Nov 2017 10:28:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:31:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:32:01 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:32:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:32:05 GMT
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
	-	`sha256:723a6cc705989ad1e6b36c194c957b165bddbcd8eda530181f0687889d70c3e1`  
		Last Modified: Thu, 16 Nov 2017 10:38:12 GMT  
		Size: 12.1 MB (12097488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183beeab208a856223e30978c1a67b5eaf946eaeb03ae713df8cc7748b0419ef`  
		Last Modified: Thu, 16 Nov 2017 10:38:10 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91df860d90436612222d43c42e1873dd7c3b4864188ca31813cf3c451f27fe91`  
		Last Modified: Thu, 16 Nov 2017 10:38:14 GMT  
		Size: 12.4 MB (12435676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0d728deb20bfd9fb7f4e4a0caeff5d8f6889064a79da5afde71c4e09501208`  
		Last Modified: Thu, 16 Nov 2017 10:38:10 GMT  
		Size: 2.2 KB (2156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
