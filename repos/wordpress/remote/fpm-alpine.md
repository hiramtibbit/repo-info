## `wordpress:fpm-alpine`

```console
$ docker pull wordpress@sha256:e4fa802edb55cac0c054b60a8037ca0794f0d9da41bbf5397a67727aee72b14c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `wordpress:fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:f9e0b957ed7b33ba81faacebab89aff84c2686ad83bf4d5e4a6615a77f5a49ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41130524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daebe7bc1690d303d0cb9963a7bc619a28822ef005027307dd74c81077bee358`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Jan 2018 02:16:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 10 Jan 2018 02:16:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Jan 2018 02:16:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Jan 2018 02:16:58 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 Jan 2018 02:29:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 10 Jan 2018 02:29:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 02:29:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 02:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Jan 2018 02:29:54 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 06 Feb 2018 23:20:28 GMT
ENV PHP_VERSION=7.2.2
# Tue, 06 Feb 2018 23:20:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.2.tar.xz.asc/from/this/mirror
# Tue, 06 Feb 2018 23:20:29 GMT
ENV PHP_SHA256=47d7607d38a1d565fc43ea942c92229a7cd165f156737f210937e375b243cb11 PHP_MD5=
# Tue, 06 Feb 2018 23:20:39 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 06 Feb 2018 23:20:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Feb 2018 23:25:36 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Feb 2018 23:28:50 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Feb 2018 23:28:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Feb 2018 23:28:51 GMT
WORKDIR /var/www/html
# Tue, 06 Feb 2018 23:28:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Feb 2018 23:28:52 GMT
EXPOSE 9000/tcp
# Tue, 06 Feb 2018 23:28:52 GMT
CMD ["php-fpm"]
# Wed, 07 Feb 2018 19:22:56 GMT
RUN apk add --no-cache 		bash 		sed
# Wed, 07 Feb 2018 19:23:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Wed, 07 Feb 2018 19:28:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Feb 2018 19:28:18 GMT
VOLUME [/var/www/html]
# Fri, 09 Feb 2018 00:10:26 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 09 Feb 2018 00:10:27 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 09 Feb 2018 00:10:30 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 09 Feb 2018 00:10:30 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:10:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:10:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5aa494661d4ce499e894e1ff4107c24fa7d5ccb23bf1e3c8240f547a9c3993`  
		Last Modified: Wed, 10 Jan 2018 04:31:15 GMT  
		Size: 1.4 MB (1386596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7963c90c835a47aacef9a89e2028103b267818e84b69293ce2045917158a6ba5`  
		Last Modified: Wed, 10 Jan 2018 04:31:15 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f2a1640434671ac201f14d75ba5a18a2869bf2882f9e25afd23767c8ea61b0`  
		Last Modified: Wed, 10 Jan 2018 04:31:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fda071cd29f55051d3ce52fae8e3810ebffbd8c8b23bcb961e4b86558ac985d`  
		Last Modified: Wed, 07 Feb 2018 01:26:20 GMT  
		Size: 12.0 MB (12041571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf8577597961ed3fe79d1fa541078700fc9381aa280bff88c4e89c4aeedcbb3`  
		Last Modified: Wed, 07 Feb 2018 01:26:17 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75199bdd301549359c19cb95a6b4e97acca6bb5c8405bbdf15d47b68332a0c75`  
		Last Modified: Wed, 07 Feb 2018 01:26:29 GMT  
		Size: 15.8 MB (15803632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbecfe6476038e082a5aae8f2208ff5c8897fce358b6ba6e27cc07d11a70a486`  
		Last Modified: Wed, 07 Feb 2018 01:26:17 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2ca14e9b19bd6c6459a3fed82add7dbe3541c060ab48f2be724f1c815264e8`  
		Last Modified: Wed, 07 Feb 2018 01:26:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396930a5281099a58cbb35792c41f6a2809de07ea4ca050ae9cc7d0f6960964b`  
		Last Modified: Wed, 07 Feb 2018 01:26:17 GMT  
		Size: 7.7 KB (7695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8dc092f38cec5167827190e43957eb09d5bb04d89a5546a0faa3e5572df4ef`  
		Last Modified: Wed, 07 Feb 2018 19:54:24 GMT  
		Size: 621.9 KB (621921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ae50cb99f165ae28ab60021586618dc8e85ef887a8612ea581787144805f07`  
		Last Modified: Wed, 07 Feb 2018 19:54:25 GMT  
		Size: 847.2 KB (847174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f2672b4b365cf59221078bfb0f5f5129ef8b216c8e73ecde2167099555ba04`  
		Last Modified: Wed, 07 Feb 2018 19:54:24 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e14b20813031ec7a803868bc322f8e626e80952dbb0916fe3372781c56d56dd`  
		Last Modified: Fri, 09 Feb 2018 00:41:07 GMT  
		Size: 8.4 MB (8422276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f5240ca043604409a82ce8a8da626c21e7d0f8025a5c5888b263c95ccdb3f2`  
		Last Modified: Fri, 09 Feb 2018 00:41:04 GMT  
		Size: 3.4 KB (3353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm-alpine` - linux; 386

```console
$ docker pull wordpress@sha256:4f9443bda7c86d0012735f9758b7ccec5e061cba8c1947c16f86b61ae0fe32db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43390284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3746677c0595c09b970e33cdeefb930b13dce34ab5bdefb962b152ce8ad3ffb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 10:15:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 10:15:45 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Dec 2017 10:15:46 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 10:15:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 10:15:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 10:26:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 10:26:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:26:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 10:26:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 10:26:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 07 Feb 2018 17:51:48 GMT
ENV PHP_VERSION=7.2.2
# Wed, 07 Feb 2018 17:51:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.2.tar.xz.asc/from/this/mirror
# Wed, 07 Feb 2018 17:51:48 GMT
ENV PHP_SHA256=47d7607d38a1d565fc43ea942c92229a7cd165f156737f210937e375b243cb11 PHP_MD5=
# Wed, 07 Feb 2018 17:52:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 07 Feb 2018 17:52:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 07 Feb 2018 17:58:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 07 Feb 2018 18:01:29 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Wed, 07 Feb 2018 18:16:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 07 Feb 2018 18:16:27 GMT
WORKDIR /var/www/html
# Wed, 07 Feb 2018 18:16:28 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Feb 2018 18:16:39 GMT
EXPOSE 9000/tcp
# Wed, 07 Feb 2018 18:16:40 GMT
CMD ["php-fpm"]
# Thu, 08 Feb 2018 09:39:01 GMT
RUN apk add --no-cache 		bash 		sed
# Thu, 08 Feb 2018 09:40:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 08 Feb 2018 09:48:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 08 Feb 2018 09:48:12 GMT
VOLUME [/var/www/html]
# Fri, 09 Feb 2018 07:36:11 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 09 Feb 2018 07:36:11 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 09 Feb 2018 07:36:16 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 09 Feb 2018 07:36:16 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 09 Feb 2018 07:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 07:36:16 GMT
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
	-	`sha256:241284dd6990a200e39d5c51505aabf96dae828a1fd3e46ec2abcce395561cc3`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 1.5 MB (1481807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d33d795be3b40c48d6d1c484027a84445adcd89daaa8d7e5c718a8fedfbeb5`  
		Last Modified: Fri, 01 Dec 2017 12:36:28 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834623b83dedeee1c9a45c1fbba1aed0a83e4144b7f4b1f1be2288c87738ceff`  
		Last Modified: Fri, 01 Dec 2017 12:36:29 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1bf1687666a3f03d6e8f2acbcef1f509bbd8f5b98f6cc59e0075b49e702521e`  
		Last Modified: Wed, 07 Feb 2018 22:58:37 GMT  
		Size: 12.0 MB (12041983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2f77b0fae8edf20954eed0b496396d03476f658009586f313dc613ebcb5241`  
		Last Modified: Wed, 07 Feb 2018 22:58:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430f1974ae6ae83721e880351e34a718a05eafdc1639b4c787fa960264599b01`  
		Last Modified: Wed, 07 Feb 2018 22:58:43 GMT  
		Size: 17.8 MB (17825885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233145e1268bc2a9ee11f97bfe577da6227c6a8772e3bd16ba1720914df20bd8`  
		Last Modified: Wed, 07 Feb 2018 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63618be8e050d7b9a4216bba0cddd3768a9f636ed4b587715f76baad416d94f`  
		Last Modified: Wed, 07 Feb 2018 22:58:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8c729b6ad51c10d597f641c73550bcc9d9e8fa863506033756437214dc3e8e`  
		Last Modified: Wed, 07 Feb 2018 22:58:35 GMT  
		Size: 7.7 KB (7695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60875c7ba73b2cfab4c5847adac1d66b87cf68964254a4fbaf3d16ba5696e81`  
		Last Modified: Thu, 08 Feb 2018 14:00:45 GMT  
		Size: 662.8 KB (662823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e13cff2404b6eadb50a6f22f8ff4725145f0a6db885610c55b648bc941bd070`  
		Last Modified: Thu, 08 Feb 2018 14:00:44 GMT  
		Size: 894.1 KB (894125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8e5213d35cc00bc758b5ada44e80ff131073bbbeee67b701f44cfdc1114607`  
		Last Modified: Thu, 08 Feb 2018 14:00:44 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125d7a5e7b102d00ceb709d944756f67cb2c7dd13af529a23332b4719b98615a`  
		Last Modified: Fri, 09 Feb 2018 09:54:45 GMT  
		Size: 8.4 MB (8422285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b9d10f69fdc92d41308f666798ebcfd3d76178f07f291961c21226de72d18`  
		Last Modified: Fri, 09 Feb 2018 09:54:40 GMT  
		Size: 3.4 KB (3352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
