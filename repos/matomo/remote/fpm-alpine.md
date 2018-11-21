## `matomo:fpm-alpine`

```console
$ docker pull matomo@sha256:adee73886a8de9a08e07b349ae7d14ec44cb469ac70a4cebfb6497d3bb193b31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `matomo:fpm-alpine` - linux; amd64

```console
$ docker pull matomo@sha256:43307b6677bde8f3f1f26abab8c084cf333b60c0030c1834cdeddaaa0165f928
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66189509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f8d6f773b429670841b174efe5fa867dc3b7067e80c47353e3cd9e1f62c810`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 15 Nov 2018 02:02:35 GMT
ENV PHP_VERSION=7.1.24
# Thu, 15 Nov 2018 02:02:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.24.tar.xz.asc/from/this/mirror
# Thu, 15 Nov 2018 02:02:36 GMT
ENV PHP_SHA256=e70dcec0ae28b6bc308b78972ec15aa850808819cc765f505aa51e5a7e2fa5d7 PHP_MD5=
# Fri, 16 Nov 2018 05:50:04 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 05:50:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 05:55:33 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 05:55:34 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Fri, 16 Nov 2018 05:55:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 05:55:35 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 05:55:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Nov 2018 05:55:36 GMT
EXPOSE 9000/tcp
# Fri, 16 Nov 2018 05:55:36 GMT
CMD ["php-fpm"]
# Sat, 17 Nov 2018 02:34:12 GMT
LABEL maintainer=pierre@piwik.org
# Sat, 17 Nov 2018 02:36:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Wed, 21 Nov 2018 00:42:10 GMT
ENV MATOMO_VERSION=3.7.0
# Wed, 21 Nov 2018 00:42:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Wed, 21 Nov 2018 00:42:19 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Wed, 21 Nov 2018 00:42:20 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 21 Nov 2018 00:42:21 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Wed, 21 Nov 2018 00:42:21 GMT
VOLUME [/var/www/html]
# Wed, 21 Nov 2018 00:42:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Nov 2018 00:42:21 GMT
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
	-	`sha256:a00f319b3be876b9e3bf3262b38730c0e8b96d03e4603e43ab0ce7bad0003c79`  
		Last Modified: Fri, 16 Nov 2018 09:19:00 GMT  
		Size: 12.2 MB (12224744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd02d586ad22d864ce6c61151fac8d2359f8c1fa415d9049aa75e352c2c15cf5`  
		Last Modified: Fri, 16 Nov 2018 09:18:59 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0093854ed9eab26cd936e38ac1091ea87f01f61b44eb1e1a9e29e1a40dbb2`  
		Last Modified: Fri, 16 Nov 2018 09:19:03 GMT  
		Size: 15.0 MB (15040178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc04350ebad5325b55706bddab727cf8e78e46d45e10da9b3339e78b7ac3aa0`  
		Last Modified: Fri, 16 Nov 2018 09:18:58 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341abe1b7a6171eb5544990121146aa0f99218f1b5cabb5a21e3e03e379957f5`  
		Last Modified: Fri, 16 Nov 2018 09:18:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a608be743c8d906ca521d50a68f550e1e89c10d4db5fdaa20c04d9d3dbff7898`  
		Last Modified: Fri, 16 Nov 2018 09:19:00 GMT  
		Size: 7.8 KB (7756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a56760373108bff63aa831a3cefe2edce4078a6cc43a32c0ba5ada91973c22`  
		Last Modified: Sat, 17 Nov 2018 02:39:44 GMT  
		Size: 5.1 MB (5068041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed4cec3e360e15d9de5156ce531d6b0861ac0d38bcefd8ea57291c6cac633b4`  
		Last Modified: Wed, 21 Nov 2018 00:46:24 GMT  
		Size: 16.4 MB (16367670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb09326298161b477261ea9932a2a4699f063980635af5187aef83ae1e0acca0`  
		Last Modified: Wed, 21 Nov 2018 00:46:20 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96898b73ed409c58c1292b0beea2f15975045b71a362c8d26adbbf5060d57266`  
		Last Modified: Wed, 21 Nov 2018 00:46:23 GMT  
		Size: 13.9 MB (13915770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1798198d635cfd59d54a6a4d952bf89b6c178fdcda707ea5ba4d4156e18f9f9d`  
		Last Modified: Wed, 21 Nov 2018 00:46:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
