## `wordpress:5-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:33a519cf154a89c12e7875661743d7755377bde8e9208859934ff450fc6d2a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:5-php7.1-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:31bb6dbe9d2d09445fc283d1185cd1964908fbbec6cfdb063bb7b422a5c0e644
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44057363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad2a51227ba8f2b50cbc72efd74a494b42b1feda2818fb22868b43fc988005`
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
# Wed, 12 Sep 2018 02:32:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Mon, 10 Dec 2018 16:20:24 GMT
ENV PHP_VERSION=7.1.25
# Mon, 10 Dec 2018 16:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Mon, 10 Dec 2018 16:20:25 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Mon, 10 Dec 2018 16:20:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 10 Dec 2018 16:20:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Dec 2018 16:30:08 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Dec 2018 16:30:09 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Mon, 10 Dec 2018 16:30:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Dec 2018 16:30:09 GMT
WORKDIR /var/www/html
# Mon, 10 Dec 2018 16:30:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Dec 2018 16:30:11 GMT
EXPOSE 9000/tcp
# Mon, 10 Dec 2018 16:30:11 GMT
CMD ["php-fpm"]
# Mon, 10 Dec 2018 20:26:33 GMT
RUN apk add --no-cache 		bash 		sed
# Mon, 10 Dec 2018 20:27:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 10 Dec 2018 20:27:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 10 Dec 2018 20:27:50 GMT
VOLUME [/var/www/html]
# Thu, 20 Dec 2018 03:43:27 GMT
ENV WORDPRESS_VERSION=5.0.2
# Thu, 20 Dec 2018 03:43:27 GMT
ENV WORDPRESS_SHA1=4a6971d35eb92e2fc30034141b1c865e8c156add
# Thu, 20 Dec 2018 03:43:29 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 20 Dec 2018 03:43:29 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Thu, 20 Dec 2018 03:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 03:43:30 GMT
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
	-	`sha256:083e7e40c8daa7e8071b295e161ce7b15fad5737c692c0d5aacdf8c999d6566a`  
		Last Modified: Mon, 10 Dec 2018 19:22:09 GMT  
		Size: 12.2 MB (12225602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff3a34138e24cdf07b1aac0c2a3cd6f4b519b4036a2e5a694a2e25e752f1c2f`  
		Last Modified: Mon, 10 Dec 2018 19:22:07 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3210092019faa4d86af2d5037218aef55f6109f210df5062ec342ffa50433464`  
		Last Modified: Mon, 10 Dec 2018 19:22:11 GMT  
		Size: 15.0 MB (15040367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24c2518ce4c844fde3097c8de8f83f2a512f8cd36db2032efa589e966096533`  
		Last Modified: Mon, 10 Dec 2018 19:22:08 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90aec2038a23129fc8be643d9e2fe8e62f185e6f3ee7cddf71c0716be8d2cf7c`  
		Last Modified: Mon, 10 Dec 2018 19:22:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6a83db6584799293913fd7e306457f46dbb874debb3e0199b087cca5c14b3d`  
		Last Modified: Mon, 10 Dec 2018 19:22:07 GMT  
		Size: 7.8 KB (7756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79ca67f25c860d7868e38d02d8bacbb17950bee5b166022ec86bbb362f31392`  
		Last Modified: Mon, 10 Dec 2018 21:03:52 GMT  
		Size: 663.5 KB (663539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c830e4ab4b04b7402d8a5b76bc5cbd8a5d83b380af0d6e7fd1d07597e9b1abfe`  
		Last Modified: Mon, 10 Dec 2018 21:03:56 GMT  
		Size: 2.2 MB (2176635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9711586667c2577228923f91345569b9155e082cb7f77937236affa367c82d`  
		Last Modified: Mon, 10 Dec 2018 21:03:52 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c513c6687ed62fb8d3c8019fbc978a5cffb716485b3feb46bcf749e78684b60`  
		Last Modified: Thu, 20 Dec 2018 03:46:06 GMT  
		Size: 10.4 MB (10374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f71a0bad9a2d266c02d11a25318fb45666fb6eccb13a68484015958bef062f`  
		Last Modified: Thu, 20 Dec 2018 03:46:03 GMT  
		Size: 3.8 KB (3782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
