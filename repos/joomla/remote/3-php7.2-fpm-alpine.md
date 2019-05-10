## `joomla:3-php7.2-fpm-alpine`

```console
$ docker pull joomla@sha256:33f5cf967d5eb492444921b0f7982aa8837a6393ddc943fd789b7531d0793eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `joomla:3-php7.2-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:1c4323e19e489416826b22f44cb60f7e57e85c12eba0aa179b6c3c03d6356bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48631673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8be82e474cdcddfcb5d51aa87809a6b53e1b35320a0b80aa2d5a8337032d1bf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:00:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 00:00:05 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 00:00:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 00:00:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 00:00:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 00:07:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 10 Apr 2019 00:07:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 00:07:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 00:07:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 00:34:49 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 04 May 2019 02:27:36 GMT
ENV PHP_VERSION=7.2.18
# Sat, 04 May 2019 02:27:36 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Sat, 04 May 2019 02:27:37 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Sat, 04 May 2019 02:27:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 04 May 2019 02:27:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 04 May 2019 02:37:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 May 2019 02:37:43 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 04 May 2019 02:37:44 GMT
RUN docker-php-ext-enable sodium
# Sat, 04 May 2019 02:37:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 May 2019 02:37:45 GMT
WORKDIR /var/www/html
# Sat, 04 May 2019 02:37:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 May 2019 02:37:47 GMT
STOPSIGNAL SIGQUIT
# Sat, 04 May 2019 02:37:47 GMT
EXPOSE 9000
# Sat, 04 May 2019 02:37:47 GMT
CMD ["php-fpm"]
# Sat, 04 May 2019 07:11:38 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 May 2019 07:11:38 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 May 2019 07:11:40 GMT
RUN apk add --no-cache 	bash
# Sat, 04 May 2019 07:13:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 May 2019 07:13:50 GMT
VOLUME [/var/www/html]
# Thu, 09 May 2019 23:20:31 GMT
ENV JOOMLA_VERSION=3.9.6
# Thu, 09 May 2019 23:20:31 GMT
ENV JOOMLA_SHA512=f6edf4745c1e63de52504dbdc244ba9e424da663181fb149b597393c4841e47278563f50703abcf588a7e2b811c7e2b0033cbc5915b880e0a28425a498504ac4
# Thu, 09 May 2019 23:20:36 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 09 May 2019 23:20:36 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Thu, 09 May 2019 23:20:36 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Thu, 09 May 2019 23:20:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 May 2019 23:20:37 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6e561c50e026054b7413aa88834a7ed97292eb60663ab45930f71ce6d05873`  
		Last Modified: Wed, 10 Apr 2019 01:17:36 GMT  
		Size: 1.4 MB (1437164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f581654c6ada4fba71ebfbfe4cd96430abe7b5dabebd92a6a62c11391a79cc98`  
		Last Modified: Wed, 10 Apr 2019 01:17:35 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f205a73992503ad7da02dbaf0a635da1604dec99f89f056c8db161ff3da6f514`  
		Last Modified: Wed, 10 Apr 2019 01:17:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be168a59f377fa4ecc7ac5390eb3c771811cd9614dc3fc6a2c9860fcfdae1b9f`  
		Last Modified: Sat, 04 May 2019 05:31:51 GMT  
		Size: 12.2 MB (12192126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073e30dbac02e8509fd80ebd34c13c9432ff6ee1a31d4801b2f1baf259f558ac`  
		Last Modified: Sat, 04 May 2019 05:31:48 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94cea587efec795e49249422c73a50138a9fc4d39f4c421d947d0197bad2754`  
		Last Modified: Sat, 04 May 2019 05:31:55 GMT  
		Size: 15.9 MB (15885079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed026e6424cf0259e0e9cc3b055bbdcfea41a71286f2a4750964448deacd1dc`  
		Last Modified: Sat, 04 May 2019 05:31:48 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695dbe186452a78ae891f406e3b17424fe3957a90adccff358813283a9330165`  
		Last Modified: Sat, 04 May 2019 05:31:48 GMT  
		Size: 72.0 KB (71968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f0d83843fec4df9c0f643cc8665c2f6a8732b2125781bfbe29318de558ab31`  
		Last Modified: Sat, 04 May 2019 05:31:49 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771f3a991892092b858d9c25b4be3db3256a024b9d2d23faa61705376a82cc23`  
		Last Modified: Sat, 04 May 2019 07:23:56 GMT  
		Size: 583.3 KB (583267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1654b635014bed04e6c89cd9391c4a9cc802a22bf21f8092b9b5e45a71e7b63`  
		Last Modified: Sat, 04 May 2019 07:23:57 GMT  
		Size: 6.0 MB (6040444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a736666db10fc41b7a46b51dc5b9e048b57d89812782830203143fc6eb906ca5`  
		Last Modified: Thu, 09 May 2019 23:22:44 GMT  
		Size: 9.7 MB (9650890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548df3ca2828bb17a987e328e5c6a6f26e8918bbc2e8f6939adb4c52e89fddb6`  
		Last Modified: Thu, 09 May 2019 23:22:39 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc616af371c757bd6ca4a93813f8924a33f8293a81b6bcbe44b57e98bf381e`  
		Last Modified: Thu, 09 May 2019 23:22:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:83d9be55dd5b53c6f860cc1edafc72d0865dffc2552d79df0ae2fef5a7deba5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46813784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d052e064f0b8c527e0e7fa6ed6c288f3da16891a726901bec1185a522259e823`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:47:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 08:47:20 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 08:47:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 08:47:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 08:47:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 08:51:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 10 Apr 2019 08:51:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 08:51:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 08:51:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 09:02:46 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 04 May 2019 01:44:36 GMT
ENV PHP_VERSION=7.2.18
# Sat, 04 May 2019 01:44:37 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Sat, 04 May 2019 01:44:37 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Sat, 04 May 2019 01:44:46 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 04 May 2019 01:44:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 04 May 2019 01:49:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 May 2019 01:49:07 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 04 May 2019 01:49:11 GMT
RUN docker-php-ext-enable sodium
# Sat, 04 May 2019 01:49:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 May 2019 01:49:14 GMT
WORKDIR /var/www/html
# Sat, 04 May 2019 01:49:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 May 2019 01:49:16 GMT
STOPSIGNAL SIGQUIT
# Sat, 04 May 2019 01:49:16 GMT
EXPOSE 9000
# Sat, 04 May 2019 01:49:17 GMT
CMD ["php-fpm"]
# Sat, 04 May 2019 02:52:44 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 May 2019 02:52:45 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 May 2019 02:52:47 GMT
RUN apk add --no-cache 	bash
# Sat, 04 May 2019 02:55:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 May 2019 02:55:46 GMT
VOLUME [/var/www/html]
# Fri, 10 May 2019 07:50:40 GMT
ENV JOOMLA_VERSION=3.9.6
# Fri, 10 May 2019 07:50:40 GMT
ENV JOOMLA_SHA512=f6edf4745c1e63de52504dbdc244ba9e424da663181fb149b597393c4841e47278563f50703abcf588a7e2b811c7e2b0033cbc5915b880e0a28425a498504ac4
# Fri, 10 May 2019 07:50:49 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 10 May 2019 07:50:50 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 10 May 2019 07:50:51 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 10 May 2019 07:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 10 May 2019 07:50:51 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced3a278b93563da486745edb7c10cb2410a4ec84163ba38336d42d25a745b4c`  
		Last Modified: Wed, 10 Apr 2019 09:23:11 GMT  
		Size: 1.4 MB (1382897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3adad16834c492476bdc5cbb5edb76b259959079fb55b5b14e0fa0a349f54`  
		Last Modified: Wed, 10 Apr 2019 09:23:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f253a87727f214296da38d6a2752cdc4c00e2fb333fbdc0c05e3151ef6d7f0`  
		Last Modified: Wed, 10 Apr 2019 09:23:10 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f799c29fe91c823b7aca3145ba4b8f686d02f266593a60b6f96c5eac8c7ac919`  
		Last Modified: Sat, 04 May 2019 02:31:23 GMT  
		Size: 12.2 MB (12192152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cea515145b64a6e415bc203a8c9cb4c35fffcf3f5b9b8c04fa5494c4e0309dd`  
		Last Modified: Sat, 04 May 2019 02:31:20 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69de2e504b16a2ba2e2d7c0036979ea457e220b034397614f117419e262af6cd`  
		Last Modified: Sat, 04 May 2019 02:31:29 GMT  
		Size: 14.7 MB (14706396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0099007209e834723418aa3aff5922a0a9455c2d3c672270fd09600f616d515`  
		Last Modified: Sat, 04 May 2019 02:31:20 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3c2b8a70c214a5265b932d197faa621a8089e397d1efe8ad888c2ebd3f2873`  
		Last Modified: Sat, 04 May 2019 02:31:20 GMT  
		Size: 71.5 KB (71488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c55cfe76f60299ce3ce69d0f1e999998fa7e1b331818d48732bab6bb0bbaec`  
		Last Modified: Sat, 04 May 2019 02:31:20 GMT  
		Size: 7.8 KB (7785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee31acc7c6ad0e8280358b431c17e3d529a6d0d239d1391f072ad8159103cac`  
		Last Modified: Sat, 04 May 2019 02:59:55 GMT  
		Size: 556.9 KB (556929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c72e3d0cbff6c8aed42d642315eeb37cabf7bad91ccd6ef8563efdd960b21b`  
		Last Modified: Sat, 04 May 2019 02:59:57 GMT  
		Size: 5.7 MB (5695811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f259ae1bc7cbe425bdb33f07b3c31315c6b2fab5aeb81e2f53f3af105fe04f77`  
		Last Modified: Fri, 10 May 2019 07:51:53 GMT  
		Size: 9.7 MB (9650868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f25aedbe7e7a69eea522a066c71b5575773f59e9d09797703347de4f7e4422c`  
		Last Modified: Fri, 10 May 2019 07:51:46 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c762b42db4ab3af1bc46f66b43fcc12c72bb077b1cfa616a0230cccbb9fef2`  
		Last Modified: Fri, 10 May 2019 07:51:46 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:18ababda7115e3f24239e83e56d6433dfd8a871520c2fa463c33684ca7002664
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48287483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc82be3d682611dc49337a4c8ef07b08e3eabbaa3c133ebbf0729dc4e869fafb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:16:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 10:16:53 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 10:16:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 10:16:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 10:16:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 10:30:03 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 10 Apr 2019 10:30:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 10:30:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 10:30:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 11:13:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 04 May 2019 06:16:30 GMT
ENV PHP_VERSION=7.2.18
# Sat, 04 May 2019 06:16:31 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Sat, 04 May 2019 06:16:31 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Sat, 04 May 2019 06:16:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 04 May 2019 06:16:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 04 May 2019 06:26:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 May 2019 06:26:19 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 04 May 2019 06:26:21 GMT
RUN docker-php-ext-enable sodium
# Sat, 04 May 2019 06:26:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 May 2019 06:26:23 GMT
WORKDIR /var/www/html
# Sat, 04 May 2019 06:26:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 May 2019 06:26:25 GMT
STOPSIGNAL SIGQUIT
# Sat, 04 May 2019 06:26:26 GMT
EXPOSE 9000
# Sat, 04 May 2019 06:26:26 GMT
CMD ["php-fpm"]
# Sat, 04 May 2019 09:27:31 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 May 2019 09:27:32 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 May 2019 09:27:36 GMT
RUN apk add --no-cache 	bash
# Sat, 04 May 2019 09:31:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 May 2019 09:31:42 GMT
VOLUME [/var/www/html]
# Fri, 10 May 2019 08:45:27 GMT
ENV JOOMLA_VERSION=3.9.6
# Fri, 10 May 2019 08:45:28 GMT
ENV JOOMLA_SHA512=f6edf4745c1e63de52504dbdc244ba9e424da663181fb149b597393c4841e47278563f50703abcf588a7e2b811c7e2b0033cbc5915b880e0a28425a498504ac4
# Fri, 10 May 2019 08:45:41 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 10 May 2019 08:45:42 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 10 May 2019 08:45:42 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 10 May 2019 08:45:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 10 May 2019 08:45:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4d4c058c9484c09aacc75aaa536438be79ddf1dc96911b12d5f8e2431702fb`  
		Last Modified: Wed, 10 Apr 2019 12:21:57 GMT  
		Size: 1.4 MB (1444145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce60bb4176934f2b0ff58c1f7a464f8ba6123b120897beaed2a2a3098e264fe`  
		Last Modified: Wed, 10 Apr 2019 12:21:57 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad719ebf6954aaef148a134fc6e945814a86bc1e16f21ef9963221a226707bd`  
		Last Modified: Wed, 10 Apr 2019 12:21:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a644ab11878ecd13c6a9961ef7f28b859451bb7e61c6eddad9ebbdfba76f9751`  
		Last Modified: Sat, 04 May 2019 08:40:26 GMT  
		Size: 12.2 MB (12192138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc8d174e8909f711cf1c0078fb348da26afa5bd9db717ba92099d92bceb8c75`  
		Last Modified: Sat, 04 May 2019 08:40:22 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab0fec0cc453488e1db4ecd92b9c9758d0a223a9e93c780f41db72affbd4329`  
		Last Modified: Sat, 04 May 2019 08:40:29 GMT  
		Size: 15.6 MB (15639934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026fe28385e0ac81ec7d4fafd241881a713f1498013df4688637109e928c6b96`  
		Last Modified: Sat, 04 May 2019 08:40:22 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d55b5addc8c91aa117f7acde923bd1e9caa9b6d0a09ecaca0f8d7f08116455`  
		Last Modified: Sat, 04 May 2019 08:40:22 GMT  
		Size: 71.0 KB (70983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe7be7c2a153b8a163501fc9e8c12c2ccaea3c421dc7db5c09aed69074f8ecb`  
		Last Modified: Sat, 04 May 2019 08:40:22 GMT  
		Size: 7.8 KB (7785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43da79a35c45334b9db1a67f68e422fd98d51aba8d9517ad15d543f4907dd802`  
		Last Modified: Sat, 04 May 2019 09:49:55 GMT  
		Size: 592.0 KB (591957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1e5e868a87387115aa7ed435144e98d74883b5359da08a6a8485d3ef542a57`  
		Last Modified: Sat, 04 May 2019 09:49:57 GMT  
		Size: 6.0 MB (5994927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2d888f120fd617a7a2fb366d6b8962b05a873dda7c5ff5275c2a41a2d0e167`  
		Last Modified: Fri, 10 May 2019 08:51:00 GMT  
		Size: 9.7 MB (9650887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b61032d008139d1dfd458f51c718965468af65d13c7e6a30ec6853c4b00dc0`  
		Last Modified: Fri, 10 May 2019 08:50:54 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c025eb559b3417360d4797500905fa3b7da87cf64571cb287a4f3ad08309766a`  
		Last Modified: Fri, 10 May 2019 08:50:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:e276157588ab482eab8f5cedd49c78e995b0355dcf7d99349929d889ceb8bd40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49329997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8036dab08a60d1e1660edfed49e45c2a5651c384329cc80b89c303f5d964c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:26:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 13:26:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 13:26:44 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 13:26:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 13:26:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 13:33:14 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 10 Apr 2019 13:33:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 13:33:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 13:33:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 13:53:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 04 May 2019 04:18:58 GMT
ENV PHP_VERSION=7.2.18
# Sat, 04 May 2019 04:18:58 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Sat, 04 May 2019 04:18:58 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Sat, 04 May 2019 04:19:03 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 04 May 2019 04:19:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 04 May 2019 04:27:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 May 2019 04:27:23 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 04 May 2019 04:27:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 04 May 2019 04:27:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 May 2019 04:27:24 GMT
WORKDIR /var/www/html
# Sat, 04 May 2019 04:27:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 May 2019 04:27:25 GMT
STOPSIGNAL SIGQUIT
# Sat, 04 May 2019 04:27:25 GMT
EXPOSE 9000
# Sat, 04 May 2019 04:27:26 GMT
CMD ["php-fpm"]
# Sat, 04 May 2019 08:07:03 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 May 2019 08:07:04 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 May 2019 08:07:04 GMT
RUN apk add --no-cache 	bash
# Sat, 04 May 2019 08:08:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 May 2019 08:08:49 GMT
VOLUME [/var/www/html]
# Fri, 10 May 2019 10:45:40 GMT
ENV JOOMLA_VERSION=3.9.6
# Fri, 10 May 2019 10:45:40 GMT
ENV JOOMLA_SHA512=f6edf4745c1e63de52504dbdc244ba9e424da663181fb149b597393c4841e47278563f50703abcf588a7e2b811c7e2b0033cbc5915b880e0a28425a498504ac4
# Fri, 10 May 2019 10:45:45 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 10 May 2019 10:45:46 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 10 May 2019 10:45:46 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 10 May 2019 10:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 10 May 2019 10:45:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41db8e405680ca3dffe0c52a20bbbdec6175a393e1cabe2983144683429a58e`  
		Last Modified: Wed, 10 Apr 2019 14:25:49 GMT  
		Size: 1.5 MB (1535398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1e9e870287e47a824e2b26ad2f46ad64aeee38c40342457131450453daa95b`  
		Last Modified: Wed, 10 Apr 2019 14:25:49 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d5742a8d83243f5336ce5e656cd7c080f9f1152f7f88a138b899b606e4976`  
		Last Modified: Wed, 10 Apr 2019 14:25:49 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac60d99ac78492f353e2826bd9b7979b814adf253b809c5fa346b57321383d8`  
		Last Modified: Sat, 04 May 2019 07:25:45 GMT  
		Size: 12.2 MB (12192134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5dec08ae598528e93dae8fb6216436bfe2835d1a3ea4cdec8092cd6b281e1f`  
		Last Modified: Sat, 04 May 2019 07:25:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f223398e64fec05206500d28cdf5961be88b8c87ba16f53f73e274a18da214`  
		Last Modified: Sat, 04 May 2019 07:25:48 GMT  
		Size: 16.3 MB (16300821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0543bea92bdf8ed34b4a36878fb87e2b9ba4af4aa7d5cf4609a00d886d6a13`  
		Last Modified: Sat, 04 May 2019 07:25:43 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11d8bb190a5c26eda272ff9ae240dcf3c6b1e4fc48bbdf0a67a981140d1f5f2`  
		Last Modified: Sat, 04 May 2019 07:25:43 GMT  
		Size: 71.1 KB (71095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642e475503d81f3457ba8838811ac537b337c3f35aa80ec2bda223672752e7b`  
		Last Modified: Sat, 04 May 2019 07:25:43 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61931a9cbf219407ebc12844eddfaf03c9cce668fd06be8a74d0fdefd5a538af`  
		Last Modified: Sat, 04 May 2019 08:16:30 GMT  
		Size: 619.1 KB (619140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74088853a85162f64df46366c6e4cb6affeb6dd00cb64d1b10177109892398ad`  
		Last Modified: Sat, 04 May 2019 08:16:31 GMT  
		Size: 6.2 MB (6194635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8198940feb0e18fc7cafa869cb6d1af949fbd49967ea57f11efa0a8101bbc1`  
		Last Modified: Fri, 10 May 2019 10:48:07 GMT  
		Size: 9.7 MB (9650887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af77a17d15bc327bf2deaf43c869ae59d5668e59482e36e873b232fe9f10b1a9`  
		Last Modified: Fri, 10 May 2019 10:48:01 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87593400aa656e95b4809a9c3b92ab4a8202e9e5dee462b5fc4202100681120b`  
		Last Modified: Fri, 10 May 2019 10:48:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:1254d5103ebe1261e4466b9517b80a2ef4c511e02b5bb7716b063da6d2bf8a12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50338487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92af58f181f551369c8f411a0669ba34dee40c5d2549db42c1dc985e20800c4a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:08:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Apr 2019 11:08:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Apr 2019 11:08:37 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 11:08:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Apr 2019 11:08:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 10 Apr 2019 11:14:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 10 Apr 2019 11:14:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 11:15:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Apr 2019 11:15:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Apr 2019 11:32:28 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 04 May 2019 03:31:50 GMT
ENV PHP_VERSION=7.2.18
# Sat, 04 May 2019 03:31:53 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Sat, 04 May 2019 03:31:56 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Sat, 04 May 2019 03:32:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del --no-network .fetch-deps
# Sat, 04 May 2019 03:32:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 04 May 2019 03:36:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& find -type f -name '*.a' -delete 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache $runDeps 		&& apk del --no-network .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 May 2019 03:36:41 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 04 May 2019 03:36:45 GMT
RUN docker-php-ext-enable sodium
# Sat, 04 May 2019 03:36:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 May 2019 03:36:50 GMT
WORKDIR /var/www/html
# Sat, 04 May 2019 03:36:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 May 2019 03:36:55 GMT
STOPSIGNAL SIGQUIT
# Sat, 04 May 2019 03:36:57 GMT
EXPOSE 9000
# Sat, 04 May 2019 03:36:59 GMT
CMD ["php-fpm"]
# Sat, 04 May 2019 07:31:32 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 May 2019 07:31:34 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 May 2019 07:31:39 GMT
RUN apk add --no-cache 	bash
# Sat, 04 May 2019 07:34:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Sat, 04 May 2019 07:34:28 GMT
VOLUME [/var/www/html]
# Fri, 10 May 2019 08:59:00 GMT
ENV JOOMLA_VERSION=3.9.6
# Fri, 10 May 2019 08:59:09 GMT
ENV JOOMLA_SHA512=f6edf4745c1e63de52504dbdc244ba9e424da663181fb149b597393c4841e47278563f50703abcf588a7e2b811c7e2b0033cbc5915b880e0a28425a498504ac4
# Fri, 10 May 2019 08:59:46 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 10 May 2019 08:59:51 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 10 May 2019 08:59:53 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 10 May 2019 08:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 10 May 2019 09:00:02 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27aba49f624392c74b92208a142e5b8394873221e656f091124cd19d954e9cc`  
		Last Modified: Wed, 10 Apr 2019 12:01:42 GMT  
		Size: 1.5 MB (1485215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779f53629e964458fcd4e8c7ff34a6d1336293b1d512a1d04b1bfe2a994333be`  
		Last Modified: Wed, 10 Apr 2019 12:01:41 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e21fde3ed1193487bcdd4168ca2a75d7d8d6ad56516877c0967488813e43d7`  
		Last Modified: Wed, 10 Apr 2019 12:01:41 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3aa3d05890d987a72363fe36587ded9235d35e8153f2304b53b17000ed3cd93`  
		Last Modified: Sat, 04 May 2019 05:03:34 GMT  
		Size: 12.2 MB (12192156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e41e7551ec49d4baa4d6df24dd9adcbecae73f8b34b10586680f4e1634c1cbe`  
		Last Modified: Sat, 04 May 2019 05:03:29 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30597941c8452f411d71f61a6240f0b74ee9d69209f0807c2a67c86aa6945086`  
		Last Modified: Sat, 04 May 2019 05:03:36 GMT  
		Size: 17.2 MB (17233429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b60d660ea55558b33656a8e92208d532d91be34f1cc7c5ced389f9045b597ad`  
		Last Modified: Sat, 04 May 2019 05:03:29 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfab55a03626bfba123b8ad444bb1aac3504e011debb73851501d84960dcd787`  
		Last Modified: Sat, 04 May 2019 05:03:30 GMT  
		Size: 71.8 KB (71784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ceeb183d93ba5160b9ec06efd60f63bdfdb219dbe4b884f913ab06b6496a7e`  
		Last Modified: Sat, 04 May 2019 05:03:29 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b896beb150084665c4361ee33fa818340b9297f4268a9155292e685aaa32c9f7`  
		Last Modified: Sat, 04 May 2019 07:51:23 GMT  
		Size: 645.3 KB (645314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3078773e3f7275fa6b3440c61e2dd8bab1210f3ab16231c3b707571d33f43c`  
		Last Modified: Sat, 04 May 2019 07:51:30 GMT  
		Size: 6.3 MB (6264898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7dde66fd4328369fd53cdf3a6023d1bf2c1d07c10fd5c4a903fe04ab436c28`  
		Last Modified: Fri, 10 May 2019 09:11:29 GMT  
		Size: 9.7 MB (9650857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c1eb0342ce406bbce78b2fc633d57a53088efd97d6b11cf84e1e7dd9cff8a3`  
		Last Modified: Fri, 10 May 2019 09:11:09 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cead86823bbc6f4ca725962f1ff72e0e4ebe281ed425c6ff8d4e7228dea81bc`  
		Last Modified: Fri, 10 May 2019 09:11:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
