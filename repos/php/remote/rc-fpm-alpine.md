## `php:rc-fpm-alpine`

```console
$ docker pull php@sha256:e3228ccd5de872183c1118f0448d55db1a212ba2bbe3fc575682b8373819d5ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-fpm-alpine` - linux; amd64

```console
$ docker pull php@sha256:04df03f4853d3167bda99b6c3ef62d88b4df1675f974bb106f9997b7b9904e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30676788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e919fc2bdf1c1c2444087b97cc6034ba785789b826977477cd5b760a83535ada`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 04 Nov 2017 09:58:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 04 Nov 2017 09:58:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 09:58:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 09:58:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 09:58:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 13 Nov 2017 17:12:02 GMT
ENV PHP_VERSION=7.2.0RC6
# Mon, 13 Nov 2017 17:12:02 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Mon, 13 Nov 2017 17:12:02 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Mon, 13 Nov 2017 17:12:14 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 13 Nov 2017 17:12:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 13 Nov 2017 17:17:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 13 Nov 2017 17:18:30 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Mon, 13 Nov 2017 17:18:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 13 Nov 2017 17:18:31 GMT
WORKDIR /var/www/html
# Mon, 13 Nov 2017 17:18:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 13 Nov 2017 17:18:35 GMT
EXPOSE 9000/tcp
# Mon, 13 Nov 2017 17:18:35 GMT
CMD ["php-fpm"]
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
	-	`sha256:7e87841d71d942689224ca99871ea70db60b890d2ab2c0867dacbfb947d19d7f`  
		Last Modified: Mon, 13 Nov 2017 17:31:08 GMT  
		Size: 12.1 MB (12097053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030ef0294a6fc943df4fc61dbdac4361422886e5f23905687e72e8cd9dc8edca`  
		Last Modified: Mon, 13 Nov 2017 17:31:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83eb6ea8f130d8ebfb9ea9f2f81e6c50315791cdc446496fd2ff49a779e2c5b`  
		Last Modified: Mon, 13 Nov 2017 17:31:07 GMT  
		Size: 15.2 MB (15191702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7026598d16221fd68ad2d95c5b2104fbe9c14d4f68e64265382035496fd041`  
		Last Modified: Mon, 13 Nov 2017 17:31:04 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17d960a6f5aa02a269c390420404af540530872a590fd52306260de79389aa2`  
		Last Modified: Mon, 13 Nov 2017 17:31:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397647568fc096098a20ec52dbbac71808916d414746487942b68b62f9a28e16`  
		Last Modified: Mon, 13 Nov 2017 17:31:03 GMT  
		Size: 7.7 KB (7700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-alpine` - linux; arm variant v6

```console
$ docker pull php@sha256:64bfc226f0c8c8fd2b99cfcac0ae6db8e3461a01214c218aec6c41485cc0c743
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30883784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba86b3aac22cadb99dde6e9fbbe79fd8b7f42f2f9819e21f2d0cbf7de387118c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 26 Oct 2017 05:19:51 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 26 Oct 2017 05:19:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:19:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:19:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 05:19:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 06:19:42 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 06:19:42 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 06:19:42 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 06:19:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 06:19:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:22:47 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 06:22:48 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 14 Nov 2017 06:22:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 06:22:48 GMT
WORKDIR /var/www/html
# Tue, 14 Nov 2017 06:22:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 14 Nov 2017 06:22:49 GMT
EXPOSE 9000/tcp
# Tue, 14 Nov 2017 06:22:50 GMT
CMD ["php-fpm"]
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
	-	`sha256:c53c4cc8d3265fc48aca683a0a1f86e5b493bac8616a17b20da52fa3693657e8`  
		Last Modified: Tue, 14 Nov 2017 06:26:51 GMT  
		Size: 12.1 MB (12097435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03f07b8981be9e96fe896314cd8e86a3a4ccc1988119ac16433e3e8b0e30d07`  
		Last Modified: Tue, 14 Nov 2017 06:26:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b8da4e5132da0712a977d93e79b2d22f6bc3aa824b373a9ed3edb7f849415d`  
		Last Modified: Tue, 14 Nov 2017 06:26:55 GMT  
		Size: 15.4 MB (15432739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd470cab5ea6ad082947e873fc2b139f8a924158ef2f850cceac903d5b923e7`  
		Last Modified: Tue, 14 Nov 2017 06:26:48 GMT  
		Size: 2.2 KB (2164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba446882a8337b0bfe05a8070e8f8b36fce503c4c3235939694dc78efcffa44`  
		Last Modified: Tue, 14 Nov 2017 06:26:48 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b4861fd6745c37600bf1266b2d3cc5d9c7b5607c89f30f17f09e0bd35371b5`  
		Last Modified: Tue, 14 Nov 2017 06:26:48 GMT  
		Size: 7.7 KB (7698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull php@sha256:cd22070d72ffdc83f5ad20f06e7eada31b10c33aee48445c6fa9240296b4233b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30726219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6d9270691d7dbd6027766db02f1f88410cdda6d26294bcd78b4842cbce96cc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 26 Oct 2017 18:02:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 26 Oct 2017 18:02:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 18:02:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 18:02:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 18:02:44 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 03:40:08 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 03:40:09 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 03:40:10 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 03:40:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 03:40:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 03:47:29 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 03:47:31 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 14 Nov 2017 03:47:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 03:47:46 GMT
WORKDIR /var/www/html
# Tue, 14 Nov 2017 03:47:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 14 Nov 2017 03:47:48 GMT
EXPOSE 9000/tcp
# Tue, 14 Nov 2017 03:47:48 GMT
CMD ["php-fpm"]
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
	-	`sha256:876be4eeaefad13206a40470a119cdb8e45885c1b7a13e4b46b4c169589bf094`  
		Last Modified: Tue, 14 Nov 2017 04:10:17 GMT  
		Size: 12.1 MB (12097415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ba87f30c0b648f4925552c6a57c46496771fa58f31397776b72d667b8f4eb9`  
		Last Modified: Tue, 14 Nov 2017 04:10:12 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445fe6af9df36b078e5b5f9ef6ed62a06d58126e1dcaf26fd95023cf1787fbe0`  
		Last Modified: Tue, 14 Nov 2017 04:10:22 GMT  
		Size: 15.4 MB (15363261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b792b4b991c19134e8343da9fa6668ee6ca101edfcf5e7cb6ba61f959456292`  
		Last Modified: Tue, 14 Nov 2017 04:10:13 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50109631182788fc52b9632ea48f9affb87baae4d6a4f4e8e001f6234e61d50e`  
		Last Modified: Tue, 14 Nov 2017 04:10:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a580f734cc5373dedac6418a62f42dddd60796e464bee11e666a01281dea2a33`  
		Last Modified: Tue, 14 Nov 2017 04:10:12 GMT  
		Size: 7.7 KB (7696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-alpine` - linux; 386

```console
$ docker pull php@sha256:d829d3567ec3dec703a2bf6a610a07ad758ea6105f4e0d820f8a8574e1e4f1c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32591503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cacfe3d92b0bad3456095916b75f29dc2dfb0f81d0d0f6e43c99399c6fa4060`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 26 Oct 2017 08:41:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 26 Oct 2017 08:41:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:41:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:41:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 08:41:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 14 Nov 2017 10:32:19 GMT
ENV PHP_VERSION=7.2.0RC6
# Tue, 14 Nov 2017 10:32:19 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Tue, 14 Nov 2017 10:32:20 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Tue, 14 Nov 2017 10:32:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 14 Nov 2017 10:32:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:37:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 14 Nov 2017 10:40:16 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 14 Nov 2017 10:40:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Nov 2017 10:40:17 GMT
WORKDIR /var/www/html
# Tue, 14 Nov 2017 10:40:18 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 14 Nov 2017 10:40:18 GMT
EXPOSE 9000/tcp
# Tue, 14 Nov 2017 10:40:18 GMT
CMD ["php-fpm"]
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
	-	`sha256:afe2386eebd5b7344f9808182c79f6eabe1b899189f3b77bdc061f3c66114ee5`  
		Last Modified: Tue, 14 Nov 2017 10:59:31 GMT  
		Size: 12.1 MB (12097431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6182d305a929c796c8fb26679e81b9ef960d0bf53f1e562a8f2587c201c8ccd4`  
		Last Modified: Tue, 14 Nov 2017 10:59:28 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b14c6086916945a06a92ad966dfe2f745fe723c41031763181d816ecf8e0a3`  
		Last Modified: Tue, 14 Nov 2017 10:59:33 GMT  
		Size: 17.0 MB (16954595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2f65ecab5a3fcb8b7cd1b510ef3f833489fe43282c47a0caf3a7bed8dc121e`  
		Last Modified: Tue, 14 Nov 2017 10:59:28 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696da9a999d9ddedb0a8427fd82b150584a60b46dc0bc73c7acee3997e04afb8`  
		Last Modified: Tue, 14 Nov 2017 10:59:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63786baf5ab25fb85b2ee8e6b092f11b4e137073c274f14d15379b870f966ca3`  
		Last Modified: Tue, 14 Nov 2017 10:59:28 GMT  
		Size: 7.7 KB (7696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-alpine` - linux; ppc64le

```console
$ docker pull php@sha256:9e10c73b16cb21da9b696b579b071ffcf3a162f8748deda05705153471d72f68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31703044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0becf4d44520a412f039f0f1f4ddd614f095fbe7afe2f44437ef98b9fa42c56b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 26 Oct 2017 08:53:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 26 Oct 2017 08:53:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:53:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 08:53:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 08:53:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 10:23:12 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 10:23:13 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 10:23:14 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:23:30 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 16 Nov 2017 10:23:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:27:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:27:12 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:27:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:27:16 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 10:27:28 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 16 Nov 2017 10:27:29 GMT
EXPOSE 9000/tcp
# Thu, 16 Nov 2017 10:27:31 GMT
CMD ["php-fpm"]
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
	-	`sha256:208de54582167f09b008a82e51681236543044a5e63a147c69189dc708d4b004`  
		Last Modified: Thu, 16 Nov 2017 10:37:41 GMT  
		Size: 12.1 MB (12097480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625932a8d0f39f0a247f6164e9ade0178e2ced1983ae797b5ba7b75b99566a88`  
		Last Modified: Thu, 16 Nov 2017 10:37:33 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4721dd94b77c6ff58d927916cc7db0b0e73e14c3a0dca3fbb91f43d02bfcf98d`  
		Last Modified: Thu, 16 Nov 2017 10:37:39 GMT  
		Size: 16.2 MB (16204862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d43d3c9f2eeb0ef536b7eeaa7dda4636bc2116f962d90eda5967134745db99e`  
		Last Modified: Thu, 16 Nov 2017 10:37:33 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367b46c63fb7761ce3eea084a31f0b939c1b17da553ac1b7481dae894bb36c6f`  
		Last Modified: Thu, 16 Nov 2017 10:37:33 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bc21470e8e8636d032531f44436fc24594f232c2823efff4dfc36eb9cd3d9d`  
		Last Modified: Thu, 16 Nov 2017 10:37:34 GMT  
		Size: 7.7 KB (7697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
