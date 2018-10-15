## `php:fpm-alpine3.6`

```console
$ docker pull php@sha256:2f8840aae43238cdf9b6ae03273162293e4be02a76cfaea33ad3ca4838c94930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:fpm-alpine3.6` - linux; amd64

```console
$ docker pull php@sha256:b5e1117806dc35b2c152d6df8a8833bda1ff7495ed874eb4731e67ce1c5c55dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31743363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97e1041280037db095825970be3555efcf8a599e0b97b3c1fdeec1e0c63ee92`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 12 Sep 2018 02:05:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 02:05:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 02:05:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 02:05:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:05:59 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 15 Oct 2018 19:22:54 GMT
ENV PHP_VERSION=7.2.11
# Mon, 15 Oct 2018 19:22:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 19:22:54 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Mon, 15 Oct 2018 19:22:58 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 15 Oct 2018 19:22:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:27:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 19:27:53 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:27:53 GMT
RUN docker-php-ext-enable sodium
# Mon, 15 Oct 2018 19:27:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 19:27:54 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 19:27:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 15 Oct 2018 19:27:55 GMT
EXPOSE 9000/tcp
# Mon, 15 Oct 2018 19:27:55 GMT
CMD ["php-fpm"]
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
	-	`sha256:88c4595077bc5aecdfd07371763e18d5d6f91c19e3ea372cc0aba6e202f10e57`  
		Last Modified: Mon, 15 Oct 2018 20:58:52 GMT  
		Size: 12.2 MB (12151955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf800c625296e966647a55def41acd208f1b148938404bfffd6e6919e17e0dd`  
		Last Modified: Mon, 15 Oct 2018 20:58:50 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6e6ddfcc2d0c11231167a70d26789bbc0aacd5af41fac88291676b4e76416b`  
		Last Modified: Mon, 15 Oct 2018 20:58:53 GMT  
		Size: 16.1 MB (16113556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a306e8664132ed7e5d747b53ba29f6126435772a55dfea343b2f486f23016e77`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27916fbff51b777d49f5ee31ce10dc1747f46ac0868a6f3ef86e0c5a5c647028`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 71.2 KB (71210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536d94532946ac4bf514403584885bc488307db801b43dc8c23607a9361e3af9`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96acb14315f612539d4f61d0ec08ec7dcdac5d96d82cd543f4d6134074c15d94`  
		Last Modified: Mon, 15 Oct 2018 20:58:49 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
