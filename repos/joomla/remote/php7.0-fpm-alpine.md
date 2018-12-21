## `joomla:php7.0-fpm-alpine`

```console
$ docker pull joomla@sha256:2e56497c169f3d3cfa1ee100e43ec6daaf2a3d4840fb9274f49cafd07acab130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `joomla:php7.0-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:9cf0a09cdb61edd0c04c398eac4f0d068c29f035996b8ff891cdd1fee879ae46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45675544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576edc6b513ccfef24b9b018eec8f030d94ddce00722075dc476e29bee4dc4b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:11:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 03:11:28 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 03:11:29 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 03:11:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 03:11:31 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 03:20:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 03:20:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 03:20:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 03:20:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 03:20:00 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Dec 2018 03:20:00 GMT
ENV PHP_VERSION=7.0.33
# Fri, 21 Dec 2018 03:20:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Fri, 21 Dec 2018 03:20:01 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Fri, 21 Dec 2018 03:20:05 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 21 Dec 2018 03:20:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 21 Dec 2018 03:27:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 21 Dec 2018 03:27:14 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 21 Dec 2018 03:27:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 21 Dec 2018 03:27:15 GMT
WORKDIR /var/www/html
# Fri, 21 Dec 2018 03:27:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Dec 2018 03:27:16 GMT
EXPOSE 9000
# Fri, 21 Dec 2018 03:27:16 GMT
CMD ["php-fpm"]
# Fri, 21 Dec 2018 06:30:34 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 21 Dec 2018 06:30:34 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 21 Dec 2018 06:30:35 GMT
RUN apk add --no-cache 	bash
# Fri, 21 Dec 2018 06:32:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.13; 	pecl install memcached-3.0.4; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Fri, 21 Dec 2018 06:32:18 GMT
VOLUME [/var/www/html]
# Fri, 21 Dec 2018 06:32:18 GMT
ENV JOOMLA_VERSION=3.9.1
# Fri, 21 Dec 2018 06:32:19 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Fri, 21 Dec 2018 06:32:24 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 21 Dec 2018 06:32:24 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 21 Dec 2018 06:32:24 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 21 Dec 2018 06:32:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 06:32:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9640ba8e8795792bafce066356b7f7fcca7429e0248a407bd2fe3e07cb4912`  
		Last Modified: Fri, 21 Dec 2018 03:59:53 GMT  
		Size: 1.3 MB (1262221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f36bcfe13449840c970a57c1ee013f0173c0ae2743945267842e7ace84b0240`  
		Last Modified: Fri, 21 Dec 2018 03:59:53 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e154d06ee2aed55f5922af4914290d5dc31fc2970a3616fd84e7b7a1aa7e67e`  
		Last Modified: Fri, 21 Dec 2018 03:59:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a22652b93e3c845b115161780f2ad7193ecce9e937914b44cd652f5c5b020a9`  
		Last Modified: Fri, 21 Dec 2018 04:00:09 GMT  
		Size: 12.1 MB (12052131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2866bf55ccc42e52fe7ad83e1666f0e89df05748f3ced7ecfa3a894182f618ec`  
		Last Modified: Fri, 21 Dec 2018 04:00:06 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8050edcb28bb315c91ba2164aff35dba5d1c38447300be83e461646a1c334`  
		Last Modified: Fri, 21 Dec 2018 04:00:08 GMT  
		Size: 14.4 MB (14389693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b091cb3cdc855ed1c29c98b5f91012ebcdaa5a553d97b9f122365e782d8eb4`  
		Last Modified: Fri, 21 Dec 2018 04:00:06 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ea4982023d752116fbce2a267a8281741e1341b0fdf284470749ac2e57d634`  
		Last Modified: Fri, 21 Dec 2018 04:00:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0261c37d309c93a74185dedf495471fa73b3a61e99a4214e0eb384e47ce4933a`  
		Last Modified: Fri, 21 Dec 2018 04:00:05 GMT  
		Size: 7.7 KB (7747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03fc5844c6c1805e03fefe9fcad3bce844108c9bb60050a690086d1e18f3624`  
		Last Modified: Fri, 21 Dec 2018 06:37:23 GMT  
		Size: 689.0 KB (689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d43d04c4a7868c15094bd031b8e6054b295171803bc5429997afbc997cfa18`  
		Last Modified: Fri, 21 Dec 2018 06:37:24 GMT  
		Size: 5.6 MB (5592055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadf7fcfd5d170ecbd9f148c2ed894307fa0babaa1623a0a0f563b22ff931cc5`  
		Last Modified: Fri, 21 Dec 2018 06:37:26 GMT  
		Size: 9.6 MB (9569495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80664d1e6a7e86ce5ff47f1c4cb1f2b761b93d72ab2052a1228241d34d1dc395`  
		Last Modified: Fri, 21 Dec 2018 06:37:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decf28c6bdb969a5e617952d3299790d723fbc1e6b3c397899835971b91310b7`  
		Last Modified: Fri, 21 Dec 2018 06:37:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.0-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:5910763ca73d3f849d51ab18951c5c2dd9d4dc579186fbb426314952609a1e11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44558651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b88999a4b629291a3f3ebb3a2742c671afc90e7a4a299fe3ef67a0989549dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:38:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:38:30 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:38:31 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:38:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 10:38:33 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:42:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:43:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:43:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:43:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:43:01 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Dec 2018 10:43:01 GMT
ENV PHP_VERSION=7.0.33
# Fri, 21 Dec 2018 10:43:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Fri, 21 Dec 2018 10:43:02 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Fri, 21 Dec 2018 10:43:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 21 Dec 2018 10:43:09 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:47:12 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 21 Dec 2018 10:47:13 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:47:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 21 Dec 2018 10:47:14 GMT
WORKDIR /var/www/html
# Fri, 21 Dec 2018 10:47:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Dec 2018 10:47:15 GMT
EXPOSE 9000
# Fri, 21 Dec 2018 10:47:16 GMT
CMD ["php-fpm"]
# Fri, 21 Dec 2018 12:09:27 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 21 Dec 2018 12:09:27 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 21 Dec 2018 12:09:29 GMT
RUN apk add --no-cache 	bash
# Fri, 21 Dec 2018 12:12:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.13; 	pecl install memcached-3.0.4; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Fri, 21 Dec 2018 12:12:31 GMT
VOLUME [/var/www/html]
# Fri, 21 Dec 2018 12:12:32 GMT
ENV JOOMLA_VERSION=3.9.1
# Fri, 21 Dec 2018 12:12:32 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Fri, 21 Dec 2018 12:12:41 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 21 Dec 2018 12:12:43 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 21 Dec 2018 12:12:43 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 21 Dec 2018 12:12:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 12:12:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bb2ad2571cfd73ae5c0de989c501b6d483e5b9c6a26c89c46f336332ccb260`  
		Last Modified: Fri, 21 Dec 2018 11:07:39 GMT  
		Size: 1.2 MB (1236667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b51430d74e54b52554404d97943b9afe3b26663dd64884b335b58c0bb5f0fe`  
		Last Modified: Fri, 21 Dec 2018 11:07:39 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556d7431253da64c065164614af14ff79a652b4810f938e377158fa6c00a51a0`  
		Last Modified: Fri, 21 Dec 2018 11:07:38 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d220a0f27562ff3543226daa0cada95d6784dc0d6357963bbf314dad1aea9843`  
		Last Modified: Fri, 21 Dec 2018 11:08:01 GMT  
		Size: 12.1 MB (12052140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29b3652ee83a70dfdd72b9a8a535fb570bc2b5a0e94c4b881ce4b9ef82bba3b`  
		Last Modified: Fri, 21 Dec 2018 11:07:58 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bff4965674dc1c4013b2159fdbe10d33ba0d2802623c49f593db724337ccf1`  
		Last Modified: Fri, 21 Dec 2018 11:08:03 GMT  
		Size: 13.6 MB (13625204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349d4f7605e3bac5c5b977a5f68d1758534cb502952603ed5441bca8cb004ed5`  
		Last Modified: Fri, 21 Dec 2018 11:07:58 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bc7cdc6f46f45c564e04ece11ca784cb9b2ca34a400e71c30ed642dcc13afc`  
		Last Modified: Fri, 21 Dec 2018 11:07:58 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60536e3db2d71c5ac9d35263436b8c2089786fe5543e09133d1a6ede44cdbd53`  
		Last Modified: Fri, 21 Dec 2018 11:07:58 GMT  
		Size: 7.7 KB (7745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06817e78d068b3c88a61392d488c9e7027d98bc3e0c567371e2f369132658170`  
		Last Modified: Fri, 21 Dec 2018 12:20:22 GMT  
		Size: 666.5 KB (666457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e538df4c8cf202179e1d65b7087e06d0746a7feda50cfb74dc59d73603a392`  
		Last Modified: Fri, 21 Dec 2018 12:20:23 GMT  
		Size: 5.3 MB (5344210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a526b9d2faaed675e2a1128bdaa1abbf811b2ccfb010819a450f85ec7a5037`  
		Last Modified: Fri, 21 Dec 2018 12:20:28 GMT  
		Size: 9.6 MB (9569454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4d7fedb0fcea6eb498b011145d7fd0ce88b17682f4a6e679ea4fa58a926d35`  
		Last Modified: Fri, 21 Dec 2018 12:20:21 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcbd902e653a5e054340606510e2d944749c31249e790b6df06ba9470c6798f`  
		Last Modified: Fri, 21 Dec 2018 12:20:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.0-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:0a0bd72c36d9fe115ff8da50f64dba361d0d65a94edb28a1ab5f180f87a40369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44547642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0694fe5ab4d511ef78ea3cf5254226efa5e3807326c380d67eaeb65fa73054e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Fri, 14 Sep 2018 21:26:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 14 Sep 2018 21:26:25 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 14 Sep 2018 21:26:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 14 Sep 2018 21:26:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 14 Sep 2018 21:26:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 14 Sep 2018 21:34:14 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 14 Sep 2018 21:34:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 21:34:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 21:34:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 15 Sep 2018 00:00:32 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 14:02:44 GMT
ENV PHP_VERSION=7.0.33
# Tue, 11 Dec 2018 14:02:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 14:02:45 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Tue, 11 Dec 2018 14:02:55 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 14:02:56 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 14:08:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 14:08:51 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 14:08:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 14:08:52 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 14:08:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 14:08:54 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 14:08:55 GMT
CMD ["php-fpm"]
# Tue, 11 Dec 2018 18:28:00 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 11 Dec 2018 18:28:00 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 11 Dec 2018 18:28:04 GMT
RUN apk add --no-cache 	bash
# Tue, 11 Dec 2018 18:31:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.13; 	pecl install memcached-3.0.4; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Tue, 11 Dec 2018 18:31:50 GMT
VOLUME [/var/www/html]
# Tue, 11 Dec 2018 18:31:51 GMT
ENV JOOMLA_VERSION=3.9.1
# Tue, 11 Dec 2018 18:31:52 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Tue, 11 Dec 2018 18:32:01 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 11 Dec 2018 18:32:02 GMT
COPY file:25b57bf11549456c8a7b3fadac31b0211225c2cd85b3a380a644dcec5f8a605c in /entrypoint.sh 
# Tue, 11 Dec 2018 18:32:03 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 11 Dec 2018 18:32:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Dec 2018 18:32:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177e9b2d5973e82fa764da6515f665b8ecc83702dfdb3491d59b97c2d1538b6a`  
		Last Modified: Sat, 15 Sep 2018 01:41:16 GMT  
		Size: 1.2 MB (1201244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a4bb7af219238a6e664c1d5ef1def4321454ee38795bade28ba20f938051ae`  
		Last Modified: Sat, 15 Sep 2018 01:41:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc759d47a6f74298f9e4b858152c8ae0fe9f4c91429f2b85a48a755a09119ba`  
		Last Modified: Sat, 15 Sep 2018 01:41:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241b702652055aae5f5e794434e3cbaedfe5356fd18e1f80b4f359e1d48cc894`  
		Last Modified: Tue, 11 Dec 2018 15:41:21 GMT  
		Size: 12.1 MB (12052127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e4ebfc8d9b0797a7c5a48c6b05e3b40baa304f8743eb4b2b264af6ab5e32a0`  
		Last Modified: Tue, 11 Dec 2018 15:41:17 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858bf013fc5dad6cbf0c8ee9e8da29b0909007b25379cacad30f40dcc0ae7297`  
		Last Modified: Tue, 11 Dec 2018 15:41:23 GMT  
		Size: 13.7 MB (13658838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438d36013562e09469ab2d916fd2b41d7b4fd4e6b0d06ca6ea60805d214f6eff`  
		Last Modified: Tue, 11 Dec 2018 15:41:17 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5296000375edb913b42d47c172970e34fe3154a28f6c31cdf326d7a0cabef4`  
		Last Modified: Tue, 11 Dec 2018 15:41:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23707528c44dda8d8ca20c8f453a4367cda76549f92e0d5ef0a8b6047844680a`  
		Last Modified: Tue, 11 Dec 2018 15:41:17 GMT  
		Size: 7.7 KB (7748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb27f40794c908d6fc21b8e71f21ab7666a9607c41ec6e8d35b104efe61f1c`  
		Last Modified: Tue, 11 Dec 2018 19:08:28 GMT  
		Size: 649.5 KB (649456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7717552cb66a6e36a6848fb8a2ada12c040a23760b2c8f2aeeaf000b97037141`  
		Last Modified: Tue, 11 Dec 2018 19:08:31 GMT  
		Size: 5.4 MB (5403352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e431c058ccf7041d2eaed540e500f11fe98dc3e63abbfb550b20ce0094ad38c`  
		Last Modified: Tue, 11 Dec 2018 19:08:33 GMT  
		Size: 9.6 MB (9569524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc9299cc7f7fa85490cdea7a53abaaee237047f41427ce536be46ad040edf87`  
		Last Modified: Tue, 11 Dec 2018 19:08:28 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822ff35f7e481c17ca9c59a3086f866a87397ea71f88cd8c265549ee681e1ac6`  
		Last Modified: Tue, 11 Dec 2018 19:08:28 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.0-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:d490b9ff8c26088a02cb4fd5df86092edcfef9f3c92faba25d280f69c9a2f615
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46800009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed8d9e66cf551592e1522f78f5ce18f572c82747462694ada015402e88fdadc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 13:19:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 13:19:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 13:19:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 13:19:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 13:26:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 14:45:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 14:50:16 GMT
ENV PHP_VERSION=7.0.33
# Tue, 11 Dec 2018 14:50:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 14:50:16 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Tue, 11 Dec 2018 14:50:21 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 14:50:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 14:55:02 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 14:55:02 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 14:55:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 14:55:03 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 14:55:04 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 14:55:04 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 14:55:04 GMT
CMD ["php-fpm"]
# Tue, 11 Dec 2018 20:24:11 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 11 Dec 2018 20:24:11 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 11 Dec 2018 20:24:12 GMT
RUN apk add --no-cache 	bash
# Tue, 11 Dec 2018 20:25:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.13; 	pecl install memcached-3.0.4; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Tue, 11 Dec 2018 20:25:54 GMT
VOLUME [/var/www/html]
# Tue, 11 Dec 2018 20:25:54 GMT
ENV JOOMLA_VERSION=3.9.1
# Tue, 11 Dec 2018 20:25:55 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Tue, 11 Dec 2018 20:26:00 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 11 Dec 2018 20:26:00 GMT
COPY file:25b57bf11549456c8a7b3fadac31b0211225c2cd85b3a380a644dcec5f8a605c in /entrypoint.sh 
# Tue, 11 Dec 2018 20:26:01 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 11 Dec 2018 20:26:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Dec 2018 20:26:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e502b1ee09ccedac85066f7920c16408eb67c985ad3105e35ad62eff89ec1432`  
		Last Modified: Wed, 12 Sep 2018 15:38:25 GMT  
		Size: 1.4 MB (1354598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e82dd4c45e0d9802c4cfce783b30894adae2ec0f73a200c770aa970d0d69db`  
		Last Modified: Wed, 12 Sep 2018 15:38:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6413536fc860ffe5ae2f1ed1a95ec8aab5cb970d8a83014e65e9745b4af7632`  
		Last Modified: Wed, 12 Sep 2018 15:38:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca8833c980ccf30db7191c150d4f22c8dfa9303345ae36adf0be250f58c2c62`  
		Last Modified: Tue, 11 Dec 2018 16:51:05 GMT  
		Size: 12.1 MB (12052129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31c936c90758c0cc88aebb99769d1194a6f395fd8dfaec777dc951998f60342`  
		Last Modified: Tue, 11 Dec 2018 16:51:04 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89a79159a2eb33ff7932c1948ca08d0068753e95234514efe99b5c67c384341`  
		Last Modified: Tue, 11 Dec 2018 16:51:07 GMT  
		Size: 15.1 MB (15142142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0dc74946b5b35f192bab5088ebe2b7ae9e4bfc6a6b9461350979bb441b6179`  
		Last Modified: Tue, 11 Dec 2018 16:51:03 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f0e5245598d666f5ace1d579ae1ce8b2d89cd2f40eb1c1a32f205bb0b3bc9`  
		Last Modified: Tue, 11 Dec 2018 16:51:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1897b539df8774cdeb197b133269477bac42f19bda9cfe48e8001c1ef5d08c`  
		Last Modified: Tue, 11 Dec 2018 16:51:03 GMT  
		Size: 7.8 KB (7750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ceba0598d3d0d61c7bdf979c5a5c4451ed5b2943d115b8b36cfe3a14fceb71e`  
		Last Modified: Tue, 11 Dec 2018 20:51:12 GMT  
		Size: 725.0 KB (725001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7604e8cd4a5e08971983ac8b28e2d2d6aa895f88cca0db91355049439d8a8c8`  
		Last Modified: Tue, 11 Dec 2018 20:51:14 GMT  
		Size: 5.8 MB (5772380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d736a987ef8b4fdf1ee761cb50d0f10602f7d8d3c6906449c2b4a5784452e4`  
		Last Modified: Tue, 11 Dec 2018 20:51:18 GMT  
		Size: 9.6 MB (9570814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca65c7f9da35c041509cb85d9565aa4cf33f4bf41630f83d111f6f63ec4485ee`  
		Last Modified: Tue, 11 Dec 2018 20:51:12 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d8737524ffa0baabb4eaf865d8ab8000adb8ed476783b0f22a989244fa61ab`  
		Last Modified: Tue, 11 Dec 2018 20:51:12 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.0-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:1a7ab56a594ffd9f12053d14157afc00f92cc33cce1e6c4b50dd38050fec49d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45426210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef725f702148a1ad8b97f2fa2fe024db0d2f70cf168c953b895d4490250f678`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:26:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 11:27:06 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 11:27:12 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 11:27:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 11:27:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 11:32:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 11:32:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 11:32:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 11:32:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 11:32:30 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Dec 2018 11:32:31 GMT
ENV PHP_VERSION=7.0.33
# Fri, 21 Dec 2018 11:32:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror
# Fri, 21 Dec 2018 11:32:33 GMT
ENV PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96 PHP_MD5=
# Fri, 21 Dec 2018 11:32:46 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 21 Dec 2018 11:32:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:37:32 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 21 Dec 2018 11:37:34 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:37:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 21 Dec 2018 11:37:38 GMT
WORKDIR /var/www/html
# Fri, 21 Dec 2018 11:37:42 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Dec 2018 11:37:46 GMT
EXPOSE 9000
# Fri, 21 Dec 2018 11:37:48 GMT
CMD ["php-fpm"]
# Fri, 21 Dec 2018 14:31:03 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 21 Dec 2018 14:31:06 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 21 Dec 2018 14:31:14 GMT
RUN apk add --no-cache 	bash
# Fri, 21 Dec 2018 14:33:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.13; 	pecl install memcached-3.0.4; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Fri, 21 Dec 2018 14:34:02 GMT
VOLUME [/var/www/html]
# Fri, 21 Dec 2018 14:34:03 GMT
ENV JOOMLA_VERSION=3.9.1
# Fri, 21 Dec 2018 14:34:07 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Fri, 21 Dec 2018 14:34:22 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 21 Dec 2018 14:34:28 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 21 Dec 2018 14:34:30 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 21 Dec 2018 14:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 14:34:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca19e0877dd8628a8a21f4811f8259b88cd7fbd8fce79ab2b71026e4ab87706`  
		Last Modified: Fri, 21 Dec 2018 12:10:01 GMT  
		Size: 1.2 MB (1244276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30483e5f086f4c808d72fde34e16b3a11a70594ad99c16597a37642a85f62da0`  
		Last Modified: Fri, 21 Dec 2018 12:09:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bed026212d5a121cca68a8f421f55bda5d4c40a5df9dc255f3cd0ea0490c94`  
		Last Modified: Fri, 21 Dec 2018 12:09:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d180f8518b2526c5cea1fd22e51f04596f2c6e6f18a963ee8223261de0c503b9`  
		Last Modified: Fri, 21 Dec 2018 12:10:38 GMT  
		Size: 12.1 MB (12052153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea556a2c5eca58c02de7dee1df6ef540f5dedd1ae2e879f6039587d498f8498`  
		Last Modified: Fri, 21 Dec 2018 12:10:34 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4764bf7c56ce0e1526c67a220c4c5a278a90b5ccba94f55ca50d1c6d2f5201`  
		Last Modified: Fri, 21 Dec 2018 12:10:41 GMT  
		Size: 14.1 MB (14117254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9487c27a50f7ae59ecf2ab71ba9e2bb5a8ea281c18051a9abf71e82eb461741e`  
		Last Modified: Fri, 21 Dec 2018 12:10:34 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da36f93d1fbce06c535954bd5652f2bafe7a30ed55d9b1f0bd31011780553b9`  
		Last Modified: Fri, 21 Dec 2018 12:10:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9da794d5ae14fc8fa34aa2dcf9eb306c6c7e77f6194d5e4ab5d68d6f13d6c8`  
		Last Modified: Fri, 21 Dec 2018 12:10:34 GMT  
		Size: 7.7 KB (7749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d644594df56903718ff2d336dff40723231c4db2dc0b381d842bc6789fa500a`  
		Last Modified: Fri, 21 Dec 2018 14:43:54 GMT  
		Size: 711.2 KB (711217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864ace5f03dbdbbe50ae5caf8959340b6c9ddd15d004562c763ccac1522d6d5`  
		Last Modified: Fri, 21 Dec 2018 14:43:54 GMT  
		Size: 5.6 MB (5618632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f46867b3585b973381a40b364974d6ec162b9f4870f9a0f53089926d47f21b`  
		Last Modified: Fri, 21 Dec 2018 14:43:56 GMT  
		Size: 9.6 MB (9569576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b4f2d022abaa797e391cf018556e97d703c5a90bb5231627bd1cc23ebc1c70`  
		Last Modified: Fri, 21 Dec 2018 14:43:53 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdc34d254b7c66d89c03e83985f9c63f6fe3455208f484ddca7b94230404d2a`  
		Last Modified: Fri, 21 Dec 2018 14:43:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
