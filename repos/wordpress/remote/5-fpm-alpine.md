## `wordpress:5-fpm-alpine`

```console
$ docker pull wordpress@sha256:d83ce0bbeedc410f4b6c4ced50c4867f6ddac29fc97d322a2ceb335ccb195db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:5-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:2e5abd5e2aaa0b4d975b12e6c02e771cb2f7d4de29a0f7a195c4f990c0d7da77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45776351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754c543a5765fbd4ee430166e603c83c482be486448e12411589b13c572f4547`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Wed, 06 Feb 2019 02:27:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 03:06:39 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 03:06:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 03:06:40 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 03:06:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 03:06:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:06:47 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 00:06:48 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:06:49 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 00:06:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 00:06:49 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 00:06:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 00:06:50 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 00:06:50 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 02:29:35 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 22 Feb 2019 02:30:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 22 Feb 2019 02:30:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 22 Feb 2019 02:30:40 GMT
VOLUME [/var/www/html]
# Mon, 25 Feb 2019 21:52:29 GMT
ENV WORDPRESS_VERSION=5.1
# Mon, 25 Feb 2019 21:52:30 GMT
ENV WORDPRESS_SHA1=830eadf0afa15928d7f6856b1b85bf57b8e1f585
# Mon, 25 Feb 2019 21:52:33 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Mon, 25 Feb 2019 21:52:34 GMT
COPY file:e58f51f533559b19b2027e8e3fb61208537033a0d75bb1fe07b3a92a4861e017 in /usr/local/bin/ 
# Mon, 25 Feb 2019 21:52:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Feb 2019 21:52:34 GMT
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
	-	`sha256:c88e1b94ad8c1b605909e344896aeffcaa449998a8f7e014bc0daa0135015fe2`  
		Last Modified: Sat, 09 Feb 2019 03:38:53 GMT  
		Size: 12.2 MB (12184099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32ec16d09a45ae075672f2cb240bd9cf328d69ee59b03099bb4b93da7b189a7`  
		Last Modified: Sat, 09 Feb 2019 03:38:52 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8031faf1a35e0c370da240e00d20619a80a64b68b7fb31157472fa9aee96fef`  
		Last Modified: Fri, 22 Feb 2019 02:03:26 GMT  
		Size: 15.9 MB (15882631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b55144e6e7a19281b4c178bf90b1d07dd4d6981c7c81ec54aec388db7e9c0c2`  
		Last Modified: Fri, 22 Feb 2019 02:03:21 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09f5d73f4bcd4ee41a885cbf4e2a63e1460b5a210ee66520cc58acac3ada904`  
		Last Modified: Fri, 22 Feb 2019 02:03:21 GMT  
		Size: 72.1 KB (72092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b7741ffbb9ee3cd2cd326e623d8111d8829edca54b3a0f07d43d4a60ec3dee`  
		Last Modified: Fri, 22 Feb 2019 02:03:21 GMT  
		Size: 7.8 KB (7780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4212f3d81c1cb73270a4b13b13eea34aa761696042853e1aeb289ac7befcff71`  
		Last Modified: Fri, 22 Feb 2019 02:40:58 GMT  
		Size: 663.8 KB (663804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37534f6b7931e2f068ab73d3ae740c1a60300b3215c4f980babc26628b8b14a`  
		Last Modified: Fri, 22 Feb 2019 02:40:58 GMT  
		Size: 2.3 MB (2251415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c56915a34920b5ba5a3c9db48f86ac913af14e3a83279c22b5e42c632908dd`  
		Last Modified: Fri, 22 Feb 2019 02:40:58 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0840e31c19dd8f2a7ebb32220304991340a3da2ef67f47f5f91e34cf1a400742`  
		Last Modified: Mon, 25 Feb 2019 21:56:03 GMT  
		Size: 10.5 MB (10517125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a855eec4abe9aa682beb0abb661e04eaaf42a281896a076d25b5a6025209e20f`  
		Last Modified: Mon, 25 Feb 2019 21:55:59 GMT  
		Size: 3.8 KB (3821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
