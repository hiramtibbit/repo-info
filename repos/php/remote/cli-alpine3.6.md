## `php:cli-alpine3.6`

```console
$ docker pull php@sha256:d4f5ffad088427bae1f1183ac7f43f0d57a11336dd866b4d16a3cd68297fffeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `php:cli-alpine3.6` - linux; amd64

```console
$ docker pull php@sha256:9431afc8d4b9bd604af3f16d557eabb25e96fb01a679ee3195158a5bb12e1851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31677062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404d78882b978b2c1408610b51208b5ff5a0fcc503959ea1cc8ea27330788e0b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:57:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 01:57:16 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 01:57:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 01:57:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 01:57:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 01:57:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 01:57:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 01:57:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 01:57:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 15 Oct 2018 19:17:48 GMT
ENV PHP_VERSION=7.2.11
# Mon, 15 Oct 2018 19:17:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 19:17:49 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Mon, 15 Oct 2018 19:17:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 15 Oct 2018 19:17:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:22:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 19:22:44 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:22:45 GMT
RUN docker-php-ext-enable sodium
# Mon, 15 Oct 2018 19:22:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 19:22:45 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349ae42501718afa0dd25bf69a703ce5a42b9a038f5c38ba934c507e038c9fc9`  
		Last Modified: Wed, 12 Sep 2018 04:18:38 GMT  
		Size: 1.4 MB (1377950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c53c071e20b0af11ef48d646654829fde1d3d09c38db039b0b0fccd01b7c9b`  
		Last Modified: Wed, 12 Sep 2018 04:18:39 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252b11906d4670d809a9a5e5573fb67b177962de2f0bd340db8efd9d50b78d9a`  
		Last Modified: Wed, 12 Sep 2018 04:18:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a939ea2fdcd4632dfd145a088673f6c9ccbede8157f9ae7507aac86f8a5cfd5`  
		Last Modified: Mon, 15 Oct 2018 20:57:37 GMT  
		Size: 12.2 MB (12151952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aadcf6f7e4844c53a8bdfbc1a9618bfd7ba164e6769c072ede83f68a188d3af`  
		Last Modified: Mon, 15 Oct 2018 20:57:36 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44436fd49be0292f5d093edbcd6bfb44468b83fe55ad0dcc5d8afe342194f95b`  
		Last Modified: Mon, 15 Oct 2018 20:57:41 GMT  
		Size: 16.1 MB (16055172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80846d8bd90ed3333d42a007c21ad5d10129891ba0095192b3760c46894295ea`  
		Last Modified: Mon, 15 Oct 2018 20:57:36 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da526fcdebf87741bf0048d8f2ee1c772460e7a895549cf1b1611f965f09c9bd`  
		Last Modified: Mon, 15 Oct 2018 20:57:36 GMT  
		Size: 71.2 KB (71213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:cli-alpine3.6` - linux; arm variant v6

```console
$ docker pull php@sha256:818b210fb072a8d73d863e9e4b8f7b1fc2dc36fb15f93761a494ad0004a629e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30604280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfed4a218b655b2e2a1e76494bc310692bd4336e97dd53a2b97bd174f671963a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:25 GMT
ADD file:60d227e1eb4173ca5983e94845f87937f410efc67381b2bd5653bbc3a69b9fd8 in / 
# Wed, 12 Sep 2018 07:49:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:26 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:07:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 08:07:59 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 08:07:59 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 08:08:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 08:08:02 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 08:08:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:08:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:08:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:08:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 16 Oct 2018 08:12:51 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 08:12:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 08:12:51 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 08:12:57 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 16 Oct 2018 08:12:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 08:15:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 08:15:59 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 08:16:00 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 08:16:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 08:16:01 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:dab8097cee8be32fafc5e358b0234441807899ff13426ea62bb27636ebdafef7`  
		Last Modified: Wed, 12 Sep 2018 07:49:57 GMT  
		Size: 2.0 MB (1986616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b647550b2cae956d5c4717da3b31ff424ff466afd6ecce456508d81831b880bb`  
		Last Modified: Wed, 12 Sep 2018 07:49:56 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10c362bf589a6b9e324dd721627c2776deb4ca215e08e6418847dc352608542`  
		Last Modified: Sat, 15 Sep 2018 10:02:58 GMT  
		Size: 1.4 MB (1365069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c850bb2f337d5351dd497ba05e935e0168aae2a49fc2f5e08e1613babf1cee14`  
		Last Modified: Sat, 15 Sep 2018 10:02:58 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f756736caef93fef0fc0ef25a9b055d78cb7a41b8c533edde9447c93c2ea010`  
		Last Modified: Sat, 15 Sep 2018 10:02:57 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff1f0c83749cd7d702a8626d0cfcc30572d85c0ebc4ae2d9f4beb3a1f133f1`  
		Last Modified: Tue, 16 Oct 2018 08:47:02 GMT  
		Size: 12.2 MB (12151957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6815f56615cb2e2ce055ad081156b99140dc1746b6dd272cbfdb75b642c91073`  
		Last Modified: Tue, 16 Oct 2018 08:46:59 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0772aaaf27ef8e70a9fae9fdddb53311ee5aea3c9a70ecbab6fbeac46bd01c65`  
		Last Modified: Tue, 16 Oct 2018 08:47:05 GMT  
		Size: 15.0 MB (15025639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d917c65c5f5638776038e8838f993f2950c8ca0d336eb6cfcc6558c9fb9ded59`  
		Last Modified: Tue, 16 Oct 2018 08:46:59 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91608b2542a3b408a30135929440576b1cf77904c4c712bd9e69cb2eab54d15a`  
		Last Modified: Tue, 16 Oct 2018 08:46:59 GMT  
		Size: 70.7 KB (70678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:cli-alpine3.6` - linux; ppc64le

```console
$ docker pull php@sha256:82c458e7e05a8650adb64104d770ab76856fa09fbe20be683ab458329dfbf5d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31359543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914993e77e780fdc959d7b9abbf8fdc838ac79e60f8f2bea6cb240f8974a6916`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:20 GMT
ADD file:ac6fb657973826bcc805434ec04036bace84515a17a0803bd6b9235488d3e985 in / 
# Wed, 12 Sep 2018 08:17:22 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:24 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:58:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 11:58:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 11:59:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 11:59:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 11:59:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 11:59:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 11:59:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 11:59:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 11:59:25 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 16 Oct 2018 10:16:41 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 10:16:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 10:16:42 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 10:16:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 16 Oct 2018 10:16:56 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:20:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 10:20:47 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:20:50 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 10:20:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 10:20:56 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:623f555e4e23c80d8e2db55a68a737efbe693f740299effc70dbf74c4895194f`  
		Last Modified: Wed, 12 Sep 2018 08:19:00 GMT  
		Size: 2.0 MB (2033807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0128a462deeaf1826e23031dd5e2aba3fc190b759543d689128fb101d8370092`  
		Last Modified: Wed, 12 Sep 2018 08:18:59 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2235e4f84ecdc253e3f4a39f0fb3534e4960a18a50b9ea65a0e07968b643d60a`  
		Last Modified: Wed, 12 Sep 2018 14:13:12 GMT  
		Size: 1.4 MB (1367716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5063eb4d76934a0c8d79552d67546f074080538c7f1226616d7816a0ebe94f4f`  
		Last Modified: Wed, 12 Sep 2018 14:13:10 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9c5282e13e98eae44dc8479715d7a593eb03bbc60bd6d9656ea460de8f649b`  
		Last Modified: Wed, 12 Sep 2018 14:13:10 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d167d7c4816bef19131c81c4b8b5d01ca66892f76def1a35aef1aa6ef080867`  
		Last Modified: Tue, 16 Oct 2018 12:38:07 GMT  
		Size: 12.2 MB (12152015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0fce32a777294db4160d4c6e7a91ddce6d5c48d30be1b2baa252aa0cf5dcdf`  
		Last Modified: Tue, 16 Oct 2018 12:38:05 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d7dc13e10bf00de3c2348e7b9ea010c7d0f7f997da027b3d4e3b750df0cb35`  
		Last Modified: Tue, 16 Oct 2018 12:38:13 GMT  
		Size: 15.7 MB (15730619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e9cf509826e7fbf58464c0e366f1b0441ac37e90067d40a315a720835b48d6`  
		Last Modified: Tue, 16 Oct 2018 12:38:05 GMT  
		Size: 2.2 KB (2164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aab99edfce39752667e29cb99aa17dce0d95503e7bb3e4c3b8195e1ef4d56d9`  
		Last Modified: Tue, 16 Oct 2018 12:38:05 GMT  
		Size: 71.1 KB (71069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
