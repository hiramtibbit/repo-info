## `wordpress:php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:d93b7d8cbc5a1736e392b25f1e000a072af87fce1c259c59de1fd80f3c1a958b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:0d535ac59ffa1fcc65936bc0f925a2ba89cd9dd16897c64ed1dbb24ea3cdaba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39616045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25e6580564189e99ded27a5586cbddfe5189735d87790d059d05e63568fce4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 03:38:50 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 10 Dec 2018 18:30:39 GMT
ENV PHP_VERSION=5.6.39
# Mon, 10 Dec 2018 18:30:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Mon, 10 Dec 2018 18:30:39 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Mon, 10 Dec 2018 18:30:43 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 10 Dec 2018 18:30:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Dec 2018 18:34:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Dec 2018 18:34:35 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Mon, 10 Dec 2018 18:34:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Dec 2018 18:34:36 GMT
WORKDIR /var/www/html
# Mon, 10 Dec 2018 18:34:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Dec 2018 18:34:37 GMT
EXPOSE 9000/tcp
# Mon, 10 Dec 2018 18:34:37 GMT
CMD ["php-fpm"]
# Mon, 10 Dec 2018 20:16:40 GMT
RUN apk add --no-cache 		bash 		sed
# Mon, 10 Dec 2018 20:17:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 10 Dec 2018 20:17:39 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 10 Dec 2018 20:17:39 GMT
VOLUME [/var/www/html]
# Thu, 20 Dec 2018 03:42:51 GMT
ENV WORDPRESS_VERSION=5.0.2
# Thu, 20 Dec 2018 03:42:51 GMT
ENV WORDPRESS_SHA1=4a6971d35eb92e2fc30034141b1c865e8c156add
# Thu, 20 Dec 2018 03:42:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 20 Dec 2018 03:42:54 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Thu, 20 Dec 2018 03:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 03:42:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb4133bbaca53da357c7963d05986e6754634793650df2c7b7279d028b237e7`  
		Last Modified: Mon, 10 Dec 2018 19:53:47 GMT  
		Size: 12.5 MB (12486383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d238f1453aeb812ebfeb26dc52b09be35401ff474acc6f96767fd2e498b5b27`  
		Last Modified: Mon, 10 Dec 2018 19:53:45 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829e65ec690edfe3debbe07c0fe3f4379b942c096c441da61ddeef1db3ad2472`  
		Last Modified: Mon, 10 Dec 2018 19:53:48 GMT  
		Size: 10.4 MB (10444444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f2e3e99a13f33e2e2a6100766b53375f19ca5ca414fb6ee196b3df895b690`  
		Last Modified: Mon, 10 Dec 2018 19:53:45 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b680e3976486ea05e93d8f8dea4e489151e9082c02749d3c3ec26238ef300f3`  
		Last Modified: Mon, 10 Dec 2018 19:53:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fba7e839a073347f185234a8189bb3dde92bbf0aac0696d77cd69c2786da2`  
		Last Modified: Mon, 10 Dec 2018 19:53:45 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b674be2c818400d948d644e2ef57d1500522c90ace04c129c947c1fd703d9e5`  
		Last Modified: Mon, 10 Dec 2018 20:52:06 GMT  
		Size: 663.5 KB (663540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1e28926196ead027b611b6a1b35a4769b4bbe64507ed1088c6fb2f17f5b03`  
		Last Modified: Mon, 10 Dec 2018 20:52:05 GMT  
		Size: 2.1 MB (2070533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374476ae022451982b6c182ed7b423488100eff80cccb8acd021149b9971943a`  
		Last Modified: Mon, 10 Dec 2018 20:52:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02eda8af135d93420f5158658a733d68985ff9a1bd9e534c5e8d125ed440a16`  
		Last Modified: Thu, 20 Dec 2018 03:45:00 GMT  
		Size: 10.4 MB (10374520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1d8c111214b53cec8f8f125d3338e459b2a1fe2608c3eb4bae840426b72552`  
		Last Modified: Thu, 20 Dec 2018 03:44:57 GMT  
		Size: 3.8 KB (3779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
