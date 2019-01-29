## `matomo:fpm-alpine`

```console
$ docker pull matomo@sha256:59d2414badd1387d026d2fa1f93e91387232170c83d5ff9c4ba5409fc2ed5757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `matomo:fpm-alpine` - linux; amd64

```console
$ docker pull matomo@sha256:7776891ad340cfbca333d6068c81a433076ea0e5e280b9ce887368ad41946b67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82481067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f203d8911cc21deb75f994f14498570c5374d6a84b7ea607ece2771201141c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:27:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 01:27:06 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 01:27:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 01:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 01:27:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 02:14:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:37:36 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 01:37:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:43:54 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:55 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:43:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:43:56 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:43:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:43:57 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:43:57 GMT
CMD ["php-fpm"]
# Mon, 28 Jan 2019 23:25:43 GMT
LABEL maintainer=pierre@piwik.org
# Mon, 28 Jan 2019 23:28:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Mon, 28 Jan 2019 23:28:11 GMT
ENV MATOMO_VERSION=3.8.1
# Mon, 28 Jan 2019 23:28:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Mon, 28 Jan 2019 23:28:23 GMT
COPY file:5a36d7fba12e383595e7235267e54c5714dbf865acd4c4596c92ac0f17d139b3 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Mon, 28 Jan 2019 23:28:27 GMT
RUN set -ex; 	curl -fsSL -o GeoIPCity.tar.gz 		"https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz"; 	curl -fsSL -o GeoIPCity.tar.gz.md5 		"https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz.md5"; 	echo "$(cat GeoIPCity.tar.gz.md5)  GeoIPCity.tar.gz" | md5sum -c -; 	mkdir /usr/src/GeoIPCity; 	tar -xf GeoIPCity.tar.gz -C /usr/src/GeoIPCity --strip-components=1; 	mv /usr/src/GeoIPCity/GeoLite2-City.mmdb /usr/src/piwik/misc/GeoLite2-City.mmdb; 	rm -rf GeoIPCity*
# Mon, 28 Jan 2019 23:28:27 GMT
COPY file:936a2120dd12b2005a1e297032173a949f09ad7582eddbd34d39c5d178603641 in /entrypoint.sh 
# Mon, 28 Jan 2019 23:28:27 GMT
VOLUME [/var/www/html]
# Mon, 28 Jan 2019 23:28:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Jan 2019 23:28:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207535cd57f878f70cace5fa6b787bea470b519e83a0ad0d8b65fab8c3c4e6d`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.4 MB (1353714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1167ab95319c6a4c7a06ffb91e63738c89f46e9005296b25e2f2ea414b102a16`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff34bff7f50ba85c4ee1c081add1128c1e00de9eb29733452f99cd0508cd0e0`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fbf86b8ee75311d14ab1f14e52c487825f8abfd673ed327b74ada7b8fa9a4`  
		Last Modified: Fri, 11 Jan 2019 01:54:29 GMT  
		Size: 12.2 MB (12176072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cfe903e31f6c8457c1a157f44e5f89cfa1201cbf4b732e84ab0bb600bfc2bea`  
		Last Modified: Fri, 11 Jan 2019 01:54:28 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d3f120681c5f895e4e7abba7fec687dbc6351dc71c799068b6fc87d3e821b9`  
		Last Modified: Fri, 11 Jan 2019 01:54:31 GMT  
		Size: 15.9 MB (15850690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9077db937f31b26ee5611ad3ae7bc0990dfa2cfad23190c7520ad48940c188fa`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb3fe9faa6ea3ab065ca5c490b9d3e73402b2d4eafb428ec374b5252256de61`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 71.8 KB (71846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17142adf57d1cd7af7e226398f6081ca1d67538db0b95590cc2c07983780b236`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36147ae6ebdd27e07bff79107107a6966911a54511ebb47e04c1f557c590ba8b`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d444eca13f86d887b47d1283bd7505775993e3d61bb61b06108de2e7bb02fda`  
		Last Modified: Mon, 28 Jan 2019 23:29:30 GMT  
		Size: 4.9 MB (4945215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93d23eddd8fcffe079668f37a80ddda205760966a8729a1f9bedc95a1796db0`  
		Last Modified: Mon, 28 Jan 2019 23:29:36 GMT  
		Size: 16.6 MB (16584247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35e7dd515c5b3474020032d51a72c74d9bba537aa7dfaf8047a6fe9471ee0f8`  
		Last Modified: Mon, 28 Jan 2019 23:29:29 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fc6de4b6fd7e001ff2fdcdbd38e4202eed687a38e8f871267ac1240f01c1ed`  
		Last Modified: Mon, 28 Jan 2019 23:29:35 GMT  
		Size: 29.3 MB (29279730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ab1f3e9684a179151cde76580ff1538222898e6ed8190daa0cfe89ac4e809d`  
		Last Modified: Mon, 28 Jan 2019 23:29:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `matomo:fpm-alpine` - linux; arm variant v6

```console
$ docker pull matomo@sha256:49e3dcc7b685d1ca8732f01c1d111199d09e7267d685ebf7173d745bbcaf5bd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81140575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa971ee96e213431b96e43a32f6d333b16a9b0ca85090bdf1b8f4f7560db7eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 09:57:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:16:09 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 09:08:56 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 09:08:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 09:12:07 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 09:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 09:12:09 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 09:12:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 09:12:11 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 09:12:11 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 08:49:48 GMT
LABEL maintainer=pierre@piwik.org
# Tue, 29 Jan 2019 08:52:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 08:52:40 GMT
ENV MATOMO_VERSION=3.8.1
# Tue, 29 Jan 2019 08:53:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Tue, 29 Jan 2019 08:53:01 GMT
COPY file:5a36d7fba12e383595e7235267e54c5714dbf865acd4c4596c92ac0f17d139b3 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Tue, 29 Jan 2019 08:53:05 GMT
RUN set -ex; 	curl -fsSL -o GeoIPCity.tar.gz 		"https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz"; 	curl -fsSL -o GeoIPCity.tar.gz.md5 		"https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz.md5"; 	echo "$(cat GeoIPCity.tar.gz.md5)  GeoIPCity.tar.gz" | md5sum -c -; 	mkdir /usr/src/GeoIPCity; 	tar -xf GeoIPCity.tar.gz -C /usr/src/GeoIPCity --strip-components=1; 	mv /usr/src/GeoIPCity/GeoLite2-City.mmdb /usr/src/piwik/misc/GeoLite2-City.mmdb; 	rm -rf GeoIPCity*
# Tue, 29 Jan 2019 08:53:06 GMT
COPY file:936a2120dd12b2005a1e297032173a949f09ad7582eddbd34d39c5d178603641 in /entrypoint.sh 
# Tue, 29 Jan 2019 08:53:06 GMT
VOLUME [/var/www/html]
# Tue, 29 Jan 2019 08:53:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 08:53:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a2d87e934f6881656d209530a5523fac4c28881bb465188a3ad7a4d3e4ddcf`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1ebf4ee6810b35a62de681eea1dc64fdd53da3094056821cefc8e83b6bd1`  
		Last Modified: Fri, 11 Jan 2019 09:28:39 GMT  
		Size: 12.2 MB (12176107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20edf344459e597273b938c8cc2b35f240a6a8b2744f18af4fe0d0d4afeac06e`  
		Last Modified: Fri, 11 Jan 2019 09:28:37 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea16dd24d9f1abfe1fd20fd8c758d487099491493da09645d669e9e462282911`  
		Last Modified: Fri, 11 Jan 2019 09:28:42 GMT  
		Size: 14.8 MB (14819818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f6f7363efefa22acc9276e23b3af33e7ca06d0876aa7582b6273465195a7bc`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a88bafb3d42385829f2d6bdd67b0121042656f2203927e594ba4b6dd89bbf6`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 71.4 KB (71377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebf6b04113c0621a72dd93ea11c20853b659670f0df6d031e795fc59c878526`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ca9567a4e5148666d049816b91f6fad8921fe8a67a81449dcb9c8529c7cd4`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c9c580e35fb964fd4aa039647cd387278f97d417e6bdad0a5d3f5b996ac1a`  
		Last Modified: Tue, 29 Jan 2019 08:53:24 GMT  
		Size: 4.7 MB (4735453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ea3cb7db3d8a736bfc95dc8190413ffaa97c29ff3cff67605a110419f95757`  
		Last Modified: Tue, 29 Jan 2019 08:53:32 GMT  
		Size: 16.6 MB (16584104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008362b2508acbde039a763ab4e8f51ea262bc3662ddaff8eb441fbb6abe818c`  
		Last Modified: Tue, 29 Jan 2019 08:53:23 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f535451f2b1dcdd58f7e8e520da73f568a2578c39e8da225b431b3570694b820`  
		Last Modified: Tue, 29 Jan 2019 08:53:32 GMT  
		Size: 29.3 MB (29279819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e261ee8cdbd91b4eba8db4749959a87e9c679519cd108b7b4b560e6bd14b8fcc`  
		Last Modified: Tue, 29 Jan 2019 08:53:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `matomo:fpm-alpine` - linux; ppc64le

```console
$ docker pull matomo@sha256:6555ea7f697eacba7de6bfc1610aa275f31c0f9dd67538107d777447e8baedaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82072461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daedfd8db74ef8991eccc9e932f42a9c2b06e1eb0b6b1993c0fc527dd2d80757`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 10:33:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:39:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:39:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:57:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:37:49 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:37:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:37:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:38:10 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 10:38:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:28 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:42:29 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:42:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:42:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:42:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 10:42:46 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 10:42:48 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 09:31:55 GMT
LABEL maintainer=pierre@piwik.org
# Tue, 29 Jan 2019 09:34:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 09:34:33 GMT
ENV MATOMO_VERSION=3.8.1
# Tue, 29 Jan 2019 09:34:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Tue, 29 Jan 2019 09:34:59 GMT
COPY file:5a36d7fba12e383595e7235267e54c5714dbf865acd4c4596c92ac0f17d139b3 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Tue, 29 Jan 2019 09:35:08 GMT
RUN set -ex; 	curl -fsSL -o GeoIPCity.tar.gz 		"https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz"; 	curl -fsSL -o GeoIPCity.tar.gz.md5 		"https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz.md5"; 	echo "$(cat GeoIPCity.tar.gz.md5)  GeoIPCity.tar.gz" | md5sum -c -; 	mkdir /usr/src/GeoIPCity; 	tar -xf GeoIPCity.tar.gz -C /usr/src/GeoIPCity --strip-components=1; 	mv /usr/src/GeoIPCity/GeoLite2-City.mmdb /usr/src/piwik/misc/GeoLite2-City.mmdb; 	rm -rf GeoIPCity*
# Tue, 29 Jan 2019 09:35:09 GMT
COPY file:936a2120dd12b2005a1e297032173a949f09ad7582eddbd34d39c5d178603641 in /entrypoint.sh 
# Tue, 29 Jan 2019 09:35:11 GMT
VOLUME [/var/www/html]
# Tue, 29 Jan 2019 09:35:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 09:35:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bb9008fe21d12c735aed250535f34b51e732ec5488ca7e1772bca1a0b7028`  
		Last Modified: Fri, 21 Dec 2018 12:04:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cec34919370c2384818df7d9f4f38274d4a735df6356b22e9718d2900346fab`  
		Last Modified: Fri, 11 Jan 2019 11:28:44 GMT  
		Size: 12.2 MB (12176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7e795fa94c1d605263cefed6b18af78b41b8bc09e0f1a8e0af21d57760ff7`  
		Last Modified: Fri, 11 Jan 2019 11:28:43 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafa685ce7431d4ac7441095a659bff7369c8ebef767e58b5e3016c64051a5ec`  
		Last Modified: Fri, 11 Jan 2019 11:28:48 GMT  
		Size: 15.5 MB (15520333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6830c0786b7b0018e9fb675e042b6e92069a7a262e1c9a932e03a671a3667d34`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9893e5c1d00fc2bc1ab12822cc8c764d4ddc8e78005f5ca7ae73641fad7d66d`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 71.6 KB (71637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d417b6dbb5b926e72a79fcf217c400a3ba448cc706b4827fae2ee2aac16294ed`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d20b494607f4d906d31390b43388557b1f3851de4bfcc51436d582954225184`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef29be766d7863c188ef6345857e230679962cce06c3eb98f46b0179038449`  
		Last Modified: Tue, 29 Jan 2019 09:36:59 GMT  
		Size: 4.9 MB (4910367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e556c15bc60f3f3db528c095f5d34f6d433faaafcb192efa04facf3fe018c32`  
		Last Modified: Tue, 29 Jan 2019 09:37:03 GMT  
		Size: 16.6 MB (16584279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044c73f3c496887256889bb3490471f8e10f96f2c764a39e21516647e92730b`  
		Last Modified: Tue, 29 Jan 2019 09:36:58 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3950c79b1aa5cbde035c7a1e25479483e6e6233ee318592f3fb71c2a5efbb2fb`  
		Last Modified: Tue, 29 Jan 2019 09:37:04 GMT  
		Size: 29.3 MB (29279827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ba425c54234216bcd1d58b66a4928af47f529dc6c637350fd390227426b52`  
		Last Modified: Tue, 29 Jan 2019 09:36:58 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
