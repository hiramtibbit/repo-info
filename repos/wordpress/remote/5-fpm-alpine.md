## `wordpress:5-fpm-alpine`

```console
$ docker pull wordpress@sha256:8c6714b8a0d872d7181da5d53d27a5a154eb10935dcd7fb11d6ac27fe12ec4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:5-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:951fc909258e8f091c0089b7a2d1b60089192827820d88b7f63cc2f3b5d7b5c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45776501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243c3b16ed8211e6ca914bda7cfa7b02ed6c95d68f94bcaa8851810f7eb63473`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 09 Mar 2019 02:12:46 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Mar 2019 02:12:46 GMT
ENV PHP_VERSION=7.2.16
# Sat, 09 Mar 2019 02:12:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 02:12:47 GMT
ENV PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482 PHP_MD5=
# Sat, 09 Mar 2019 02:12:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 09 Mar 2019 02:12:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 02:19:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 02:19:28 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 09 Mar 2019 02:19:29 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 02:19:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 02:19:29 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 02:19:30 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Mar 2019 02:19:30 GMT
EXPOSE 9000
# Sat, 09 Mar 2019 02:19:30 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 05:10:07 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 09 Mar 2019 05:11:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 09 Mar 2019 05:11:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Mar 2019 05:11:13 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 05:11:13 GMT
ENV WORDPRESS_VERSION=5.1
# Sat, 09 Mar 2019 05:11:13 GMT
ENV WORDPRESS_SHA1=830eadf0afa15928d7f6856b1b85bf57b8e1f585
# Sat, 09 Mar 2019 05:11:16 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 09 Mar 2019 05:11:16 GMT
COPY file:e58f51f533559b19b2027e8e3fb61208537033a0d75bb1fe07b3a92a4861e017 in /usr/local/bin/ 
# Sat, 09 Mar 2019 05:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Mar 2019 05:11:16 GMT
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
	-	`sha256:9b45034dff5cf6201acee80a317321b4e9bbd8962fb85a7fea2adeb48490298d`  
		Last Modified: Sat, 09 Mar 2019 04:14:34 GMT  
		Size: 12.2 MB (12185974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba91f3a949c17d44d087d067e96afb530f3f4e258d904e8ef08cfd52657b6997`  
		Last Modified: Sat, 09 Mar 2019 04:14:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5077dcff51e858fd0d66229768c6cca029a54e2ff22749f23c6417a733c24e0d`  
		Last Modified: Sat, 09 Mar 2019 04:14:36 GMT  
		Size: 15.9 MB (15879346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2710a8f57b4ddca7a85674970e0a52a1202debf0eb0344d39e03e60a6306f6c`  
		Last Modified: Sat, 09 Mar 2019 04:14:32 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c22f4626ff2f4ed4cf9d260efdfc35410adec1820550329c8c5435f9f6f5e9`  
		Last Modified: Sat, 09 Mar 2019 04:14:32 GMT  
		Size: 72.0 KB (71954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50d65f8b9bb59ef76ca5e497f941dfd8888a50183f49bb08f6fd3c07918f3d8`  
		Last Modified: Sat, 09 Mar 2019 04:14:32 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476a7825843c14c11d76cab614c13f5dbc844dcf00966091da3042148ac2b496`  
		Last Modified: Sat, 09 Mar 2019 05:20:56 GMT  
		Size: 663.7 KB (663658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed64f7ada43d7bfa13c3c2a64e4366311b26551e2964c36b4dd3be6c1f0ee728`  
		Last Modified: Sat, 09 Mar 2019 05:20:54 GMT  
		Size: 2.3 MB (2251436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14069627cd238cd3d9211bdc3fa90371a84c35262125446d87694f66ae7772c0`  
		Last Modified: Sat, 09 Mar 2019 05:20:54 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9717428f5a19d5f4ac99f6709da66b33519bf72aaf2f034b7d8f0051ebf075`  
		Last Modified: Sat, 09 Mar 2019 05:20:58 GMT  
		Size: 10.5 MB (10517105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e03885fd8f36ed6e08cf005b29f58ca17c4a8bc01ca26f1d57f604f9c0156a`  
		Last Modified: Sat, 09 Mar 2019 05:20:54 GMT  
		Size: 3.8 KB (3813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-fpm-alpine` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:a187008b0b68fbf4ad10acbaab17850c91e6318635c89bb2a2da6b48cd459b8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44182641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:911ce969f199e9e25c810e4652374344200cc8dc050b1caadbef5836aa2a9f18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:23:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 08 Mar 2019 05:23:09 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 08 Mar 2019 05:23:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 08 Mar 2019 05:23:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Mar 2019 05:23:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Fri, 08 Mar 2019 05:27:07 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 08 Mar 2019 05:27:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Mar 2019 05:27:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Mar 2019 05:27:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Mar 2019 05:50:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 08 Mar 2019 05:50:12 GMT
ENV PHP_VERSION=7.2.15
# Fri, 08 Mar 2019 05:50:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Fri, 08 Mar 2019 05:50:13 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Fri, 08 Mar 2019 05:50:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 08 Mar 2019 05:50:17 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:53:39 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Mar 2019 05:53:40 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:53:42 GMT
RUN docker-php-ext-enable sodium
# Fri, 08 Mar 2019 05:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Mar 2019 05:53:43 GMT
WORKDIR /var/www/html
# Fri, 08 Mar 2019 05:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Mar 2019 05:53:45 GMT
EXPOSE 9000
# Fri, 08 Mar 2019 05:53:45 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 10:35:36 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 09 Mar 2019 10:37:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 09 Mar 2019 10:38:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Mar 2019 10:38:01 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 10:38:01 GMT
ENV WORDPRESS_VERSION=5.1
# Sat, 09 Mar 2019 10:38:02 GMT
ENV WORDPRESS_SHA1=830eadf0afa15928d7f6856b1b85bf57b8e1f585
# Sat, 09 Mar 2019 10:38:07 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 09 Mar 2019 10:38:08 GMT
COPY file:e58f51f533559b19b2027e8e3fb61208537033a0d75bb1fe07b3a92a4861e017 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Mar 2019 10:38:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b79d62ee5ebfac3a1b4d951ce35ce67eb0dcb25245cd34612e20d949cb9d68e`  
		Last Modified: Fri, 08 Mar 2019 06:31:07 GMT  
		Size: 1.4 MB (1381563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80db09b5538b4f131a790d5d4921bf9cd3c07e5893d93085476da105737a619`  
		Last Modified: Fri, 08 Mar 2019 06:31:06 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987664cf0bdbf3848062fa5d3d7e97e36dbf87c36ae587d72127119f23885197`  
		Last Modified: Fri, 08 Mar 2019 06:31:05 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e88d95e6994814d419e20751cc577d5c88bfc4c9e59ad1cea187b9feebe9981`  
		Last Modified: Fri, 08 Mar 2019 06:34:21 GMT  
		Size: 12.2 MB (12184128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4692b7dcd09cd804bff93549bff1b71e093a32bffedd2a8fe6c6420227435bdc`  
		Last Modified: Fri, 08 Mar 2019 06:34:19 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b326febbcb1832856fd809d9e9c125ec203f65e1d2ad92b379f8e9faa2b420b4`  
		Last Modified: Fri, 08 Mar 2019 06:34:24 GMT  
		Size: 14.7 MB (14707400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b17ec60e997780d238bc14f2e4fa8a19c5eb369652091fe04a4992b8dc76a39`  
		Last Modified: Fri, 08 Mar 2019 06:34:18 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71e63142a65ed433da41c7c8a31f96d47a73f4c6ba9677c81db2e917dd3f2c2`  
		Last Modified: Fri, 08 Mar 2019 06:34:18 GMT  
		Size: 71.6 KB (71622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f862b37747c78af0b5cf945eac5c04dd8cd9206539c9590664b53bbd7b051554`  
		Last Modified: Fri, 08 Mar 2019 06:34:18 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7a0ef3c3a51e19b33646513b670b112036db306db85ae35b3bd0b6755a22fa`  
		Last Modified: Sat, 09 Mar 2019 10:47:53 GMT  
		Size: 630.5 KB (630536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79040b74b997ee8839cd7ba65afb3723d7c2fc65fed547ce797dd9ad36b7dc5e`  
		Last Modified: Sat, 09 Mar 2019 10:47:53 GMT  
		Size: 2.1 MB (2133426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43cf74cb041792a440d7abd2dbab1e428ddf70e99f0b5cb7c00ee28c9999bf0`  
		Last Modified: Sat, 09 Mar 2019 10:47:53 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd85b301f9f88ce3f0059b593e2ae0fee8ed565be42e79e7a53511367f0e94a5`  
		Last Modified: Sat, 09 Mar 2019 10:48:04 GMT  
		Size: 10.5 MB (10517137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b8417cb6490bb4c80c309f18c4ee7fa5ee642e8061d22374e1c1f535aba412`  
		Last Modified: Sat, 09 Mar 2019 10:47:53 GMT  
		Size: 3.8 KB (3817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:a1e966f5f35f2ff7ea4009dd5d39d08b8f115cd199045e493b17f6ec40c412b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45442019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5af4e18559dcbdd9b5398c1a0cf5fd070a2355ea63ac2ac77a4dde64d7e516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:42:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 08 Mar 2019 04:42:37 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 08 Mar 2019 04:42:40 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 08 Mar 2019 04:42:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Mar 2019 04:42:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Fri, 08 Mar 2019 04:54:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 08 Mar 2019 04:54:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Mar 2019 04:54:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Mar 2019 04:54:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Mar 2019 05:53:06 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 08 Mar 2019 05:53:07 GMT
ENV PHP_VERSION=7.2.15
# Fri, 08 Mar 2019 05:53:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Fri, 08 Mar 2019 05:53:08 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Fri, 08 Mar 2019 05:53:15 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 08 Mar 2019 05:53:16 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:03:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Mar 2019 06:03:03 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:03:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 08 Mar 2019 06:03:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Mar 2019 06:03:06 GMT
WORKDIR /var/www/html
# Fri, 08 Mar 2019 06:03:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Mar 2019 06:03:09 GMT
EXPOSE 9000
# Fri, 08 Mar 2019 06:03:10 GMT
CMD ["php-fpm"]
# Sat, 09 Mar 2019 16:14:39 GMT
RUN apk add --no-cache 		bash 		sed
# Sat, 09 Mar 2019 16:17:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 09 Mar 2019 16:17:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Mar 2019 16:17:47 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 16:17:49 GMT
ENV WORDPRESS_VERSION=5.1
# Sat, 09 Mar 2019 16:17:50 GMT
ENV WORDPRESS_SHA1=830eadf0afa15928d7f6856b1b85bf57b8e1f585
# Sat, 09 Mar 2019 16:17:57 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 09 Mar 2019 16:17:58 GMT
COPY file:e58f51f533559b19b2027e8e3fb61208537033a0d75bb1fe07b3a92a4861e017 in /usr/local/bin/ 
# Sat, 09 Mar 2019 16:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Mar 2019 16:18:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a6af376b7c00109bbd92b6c0e6ccfaf2e0e34f19d53316338ae91a6699f2f0`  
		Last Modified: Fri, 08 Mar 2019 07:38:28 GMT  
		Size: 1.4 MB (1443023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf6db2cf4e6d7308b159a8b510c11f6694e2c32eb2459a2dbd1f4ade5bfac6`  
		Last Modified: Fri, 08 Mar 2019 07:38:26 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2871f7ac22aabd9142b679c95a09141ffe675045288a498d204631fde934b5ee`  
		Last Modified: Fri, 08 Mar 2019 07:38:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b128e408061101b2778c8582c897507c055725ceded11884251401dcb9cdac`  
		Last Modified: Fri, 08 Mar 2019 07:43:07 GMT  
		Size: 12.2 MB (12184108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18df5845790a98ab81916d0d2e976b93110d870c5e155c118acdbfd38a27d9e9`  
		Last Modified: Fri, 08 Mar 2019 07:43:03 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2697744341cff175d735492fbb40ccc175c6bc6befb66f354f437ee661f4179`  
		Last Modified: Fri, 08 Mar 2019 07:43:10 GMT  
		Size: 15.6 MB (15642189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352a5089256dc405ed4dd9ce21e9551803a95b63dc772cab2b506b4ad0a93f6e`  
		Last Modified: Fri, 08 Mar 2019 07:43:03 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f9ade4713278e27d14c01c1595377d7ec903484b4be7eaad9b8e9ea2300dca`  
		Last Modified: Fri, 08 Mar 2019 07:43:03 GMT  
		Size: 71.1 KB (71115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca794fef5672c0f512c6b1f14b42f7d7e2c2d8674c8454557eaf4773771d92b`  
		Last Modified: Fri, 08 Mar 2019 07:43:03 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82a5d5970daadb62f823a5cc9b6c4ee327a6ff759793f5f2996acd542d5add5`  
		Last Modified: Sat, 09 Mar 2019 16:41:23 GMT  
		Size: 673.1 KB (673142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba465576922940e5c43af2ce9c3734ccb4153ee73bb4c23bb093cd633bca73e`  
		Last Modified: Sat, 09 Mar 2019 16:41:23 GMT  
		Size: 2.2 MB (2207312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03966abc141dd99908e897ee86313cba500e01139befa9c69974cbbdf19af17`  
		Last Modified: Sat, 09 Mar 2019 16:41:22 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afab2543bba83fc327c29f16b500e4d5dee02942e958611cb74cddb4f4921b5c`  
		Last Modified: Sat, 09 Mar 2019 16:41:28 GMT  
		Size: 10.5 MB (10517106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60721345339d3180be97680de2d84b21e6ec9de5d25439533c28156a8c474f04`  
		Last Modified: Sat, 09 Mar 2019 16:41:22 GMT  
		Size: 3.8 KB (3817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-fpm-alpine` - linux; 386

```console
$ docker pull wordpress@sha256:af1b03e8f982a98e70907356d9869ebfe84add3d321bc53212e378e86a39dd99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46366169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f3669937782ee493d7ab2aeeb51ff9a8fe96ebc250e384258c0b4df8b35c92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 14:36:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 14:36:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 16:25:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 13:26:58 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 13:26:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 13:26:58 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 13:27:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 13:27:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 13:26:33 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 13:26:34 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 13:26:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 13:26:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 13:26:35 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 13:26:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 13:26:36 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 13:26:36 GMT
CMD ["php-fpm"]
# Fri, 22 Feb 2019 17:34:27 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 22 Feb 2019 17:35:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 22 Feb 2019 17:35:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 22 Feb 2019 17:35:34 GMT
VOLUME [/var/www/html]
# Tue, 26 Feb 2019 12:21:55 GMT
ENV WORDPRESS_VERSION=5.1
# Tue, 26 Feb 2019 12:21:55 GMT
ENV WORDPRESS_SHA1=830eadf0afa15928d7f6856b1b85bf57b8e1f585
# Tue, 26 Feb 2019 12:21:58 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 26 Feb 2019 12:21:58 GMT
COPY file:e58f51f533559b19b2027e8e3fb61208537033a0d75bb1fe07b3a92a4861e017 in /usr/local/bin/ 
# Tue, 26 Feb 2019 12:21:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Feb 2019 12:21:59 GMT
CMD ["php-fpm"]
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
	-	`sha256:a199591e8c1cdbe546a2437365d1e889f5c6273bdd0474f1eb8e09ee41b4216a`  
		Last Modified: Sat, 09 Feb 2019 14:02:41 GMT  
		Size: 12.2 MB (12184109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21447eafecfcd6df405f6a2fba3f8562af57549a4fb36224e1a236819a7fcf8a`  
		Last Modified: Sat, 09 Feb 2019 14:02:39 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d143d2a8e1570a2d3c183051a04158073500f2b3b0d64c9fc52e0f8455189be5`  
		Last Modified: Fri, 22 Feb 2019 15:29:47 GMT  
		Size: 16.3 MB (16298821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0bfa6db72584bb90e61a47be6001ee76bc4173d1f72598369f40e6bc605ca`  
		Last Modified: Fri, 22 Feb 2019 15:29:42 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea8876a75ee08beeb5b02216727f568a340da599256738e87b927c5929f20f0`  
		Last Modified: Fri, 22 Feb 2019 15:29:41 GMT  
		Size: 71.2 KB (71232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3600a09c66fce1cd2fdd038d61f4efb2c5a6ea16855a4d38328720d5fdd0f55d`  
		Last Modified: Fri, 22 Feb 2019 15:29:42 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f85dfaa92f092e97857e8bb918b3353a2ce9142ce6c670d1d996cef1428ca16`  
		Last Modified: Fri, 22 Feb 2019 17:45:22 GMT  
		Size: 705.1 KB (705146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24018f8d7e103b8617387187406fac58e40bef9d36c60f1400760497abcdbba2`  
		Last Modified: Fri, 22 Feb 2019 17:45:22 GMT  
		Size: 2.3 MB (2291555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972eabc588c62e5bba7c38f6d706173243848ad965b7a92d417da908b8a63979`  
		Last Modified: Fri, 22 Feb 2019 17:45:22 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f775d9b20e4478c3e4ae4b73cd1d5541028ba3bcc8f1a6f0c90e38748c47c7ea`  
		Last Modified: Tue, 26 Feb 2019 12:24:06 GMT  
		Size: 10.5 MB (10517109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a569ba8cfef664c135d418e9690918f9ee5f72554254d806e2d54549b74249`  
		Last Modified: Tue, 26 Feb 2019 12:24:02 GMT  
		Size: 3.8 KB (3823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-fpm-alpine` - linux; ppc64le

```console
$ docker pull wordpress@sha256:07e476e3cf718c00ccc668104842b6e88261d4a6256f547b45c2008b9c9fa522
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47352311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fba76dbe1ae218e5c439d6c987458cf3338ec62fb3cc024d67bfa23339a69ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:09:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 12:09:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 12:09:48 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 12:09:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:09:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:15:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:15:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:15:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 13:15:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 11:09:26 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 11:09:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 11:09:31 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 11:09:43 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 11:09:45 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 11:00:16 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:26 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 11:00:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 11:00:34 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 11:00:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 11:00:46 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 11:00:48 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 22:15:45 GMT
RUN apk add --no-cache 		bash 		sed
# Tue, 05 Mar 2019 22:17:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 05 Mar 2019 22:17:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 05 Mar 2019 22:17:32 GMT
VOLUME [/var/www/html]
# Tue, 05 Mar 2019 22:17:35 GMT
ENV WORDPRESS_VERSION=5.1
# Tue, 05 Mar 2019 22:17:39 GMT
ENV WORDPRESS_SHA1=830eadf0afa15928d7f6856b1b85bf57b8e1f585
# Tue, 05 Mar 2019 22:17:50 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 05 Mar 2019 22:17:53 GMT
COPY file:e58f51f533559b19b2027e8e3fb61208537033a0d75bb1fe07b3a92a4861e017 in /usr/local/bin/ 
# Tue, 05 Mar 2019 22:17:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:18:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006a6e8afc2777ec253fea25976cdd6be63a90686ef1bc6de98b9820f6540317`  
		Last Modified: Wed, 06 Feb 2019 14:34:00 GMT  
		Size: 1.5 MB (1481558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606fda705dd9f7203978c790055eb22b11c28d5fbf86862db7ef1a570e4a38de`  
		Last Modified: Wed, 06 Feb 2019 14:33:59 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c7962c28755ae856273684f2b741ba269cf10b16c22da3a999ae700a32aa87`  
		Last Modified: Wed, 06 Feb 2019 14:33:58 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19820056993ffa547b59aadf4cf8a92a0c2db99ac593abaa1cee5aee4f2e8b8d`  
		Last Modified: Sat, 09 Feb 2019 11:42:51 GMT  
		Size: 12.2 MB (12184122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1182eda49238da2870c10f4508a3ea79c27ace656c7ec9490fcb2cffcc887a97`  
		Last Modified: Sat, 09 Feb 2019 11:42:47 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38795f429fcd4aaadb4792633fa5475a4c89a0b68fa5e75b806833d4c27ac239`  
		Last Modified: Fri, 22 Feb 2019 12:10:06 GMT  
		Size: 17.3 MB (17250172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65463ca1b6d38867a2d8ec597c5f2bcc9acb14ff3c253f77291813b7f373623d`  
		Last Modified: Fri, 22 Feb 2019 12:09:56 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743dc521e0e8ec708358053f580cbce3fa97c90b76fe1afe4cdc2e04c3f1781f`  
		Last Modified: Fri, 22 Feb 2019 12:09:56 GMT  
		Size: 71.9 KB (71903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2093dbd42ef8ef14dc65c8d72b81a298b0166b81eafd378809d087a5b4ab8ff`  
		Last Modified: Fri, 22 Feb 2019 12:09:56 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb7da0a5cb5bd700e9e6cf49946d1fa6b69259a40fab2a52bc2707ba8cd3742`  
		Last Modified: Tue, 05 Mar 2019 22:34:36 GMT  
		Size: 729.1 KB (729132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793c730306c8485ae939bfeb60a6a3a9321ba2dac721d8ce4f0d482f03a2e2c7`  
		Last Modified: Tue, 05 Mar 2019 22:34:36 GMT  
		Size: 2.3 MB (2323283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c288275c1eaba1589424af11a7dff64c8596f9966b860e2e1e2557c5240fa61`  
		Last Modified: Tue, 05 Mar 2019 22:34:36 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6052578caf693eb227461f2d46ab9f530e169369a666f70c17b19d3f909cf163`  
		Last Modified: Tue, 05 Mar 2019 22:34:39 GMT  
		Size: 10.5 MB (10517143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5177b071e9f4dfc2eba92f905d6dd31343d2253347df232c37ea32e29d805648`  
		Last Modified: Tue, 05 Mar 2019 22:34:36 GMT  
		Size: 3.8 KB (3817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
