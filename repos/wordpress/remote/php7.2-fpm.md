## `wordpress:php7.2-fpm`

```console
$ docker pull wordpress@sha256:812ae20bc242295a562e6147f688dae9705c27528f6aa968be030f1b4e6c7fea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:php7.2-fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:ec8d1abe4a4c4092ae4960991225e4273d8f827f0c3f62da66d02f0fdfd64852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140767446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ff68857442b96967a3d50960e93388b5b992d2cc9c5620ee032a0a19ab79b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:53:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Jun 2018 22:53:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:53:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:53:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 22:53:35 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 22:53:36 GMT
ENV PHP_VERSION=7.2.7
# Wed, 27 Jun 2018 22:53:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 22:53:36 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Wed, 27 Jun 2018 22:53:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 22:53:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:58:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 22:58:12 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:58:13 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 22:58:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 22:58:13 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 22:58:14 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 27 Jun 2018 22:58:14 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 22:58:14 GMT
CMD ["php-fpm"]
# Thu, 28 Jun 2018 07:22:23 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:22:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:22:24 GMT
VOLUME [/var/www/html]
# Thu, 28 Jun 2018 07:22:24 GMT
ENV WORDPRESS_VERSION=4.9.6
# Thu, 28 Jun 2018 07:22:24 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Thu, 28 Jun 2018 07:22:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 28 Jun 2018 07:22:28 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 28 Jun 2018 07:22:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 07:22:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3819d1baa328f25305cf4545cba466770ff545768922298c517abdf0bf547be`  
		Last Modified: Thu, 28 Jun 2018 05:24:52 GMT  
		Size: 12.4 MB (12443751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0accdf811530eec73fe6cff8546127fb5de8797b12539e9d37962656e3cf34`  
		Last Modified: Thu, 28 Jun 2018 05:24:50 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae0f8ea1fb7c7bf7fcb9e273e0c5ea137b108154321ef0021207308fecf1ec1`  
		Last Modified: Thu, 28 Jun 2018 05:24:54 GMT  
		Size: 28.7 MB (28658076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fb5070000514455c450de9e5670df99d22cb76379efdbd734f2fc5e59680ad`  
		Last Modified: Thu, 28 Jun 2018 05:24:48 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329e09de67b6d112bbf866ab3e47246de89b58c9216b0ab7b675524437dd7ef0`  
		Last Modified: Thu, 28 Jun 2018 05:24:49 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be24df044f736ee1dd2520ec54891a61ac01fb008023549a524863c5f6df379d`  
		Last Modified: Thu, 28 Jun 2018 05:24:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dc30fa0fe0803f9434f3c339f77c155fcce8d2bc3dfa0f0d7be44f7e9b5584`  
		Last Modified: Thu, 28 Jun 2018 05:24:48 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9c69edc02d58b37faa036f42470ab77ff6e0b1fe4b5ca7195156572a764e07`  
		Last Modified: Thu, 28 Jun 2018 07:51:31 GMT  
		Size: 1.1 MB (1095832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bbcae1b2b021e8298b2a16c1d125c599c2f91cf6a1c281ec0c5873bd839952`  
		Last Modified: Thu, 28 Jun 2018 07:51:30 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da0c7fc13a73415bf6d37fd669ffb91ae5438c69b7e365204ef58a85b28bb41`  
		Last Modified: Thu, 28 Jun 2018 07:51:33 GMT  
		Size: 8.6 MB (8600132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec2e75c9b773c04138ceae3c02b511a66c6d79910ea2710e54eaa6ab4fe4c44`  
		Last Modified: Thu, 28 Jun 2018 07:51:30 GMT  
		Size: 3.4 KB (3359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-fpm` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:4e66f65e7336589fa4247fcf1b066f08fc0f90f578ef96ff674549c92bfdd667
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128200201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebef21ed9758750bae55321566a090c582b3c3d76d9f2663d55779eedd1131c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:31:25 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 11:31:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 11:31:55 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:31:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 11:31:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 11:39:51 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Jun 2018 11:39:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 11:39:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 11:39:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 11:39:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 11:39:52 GMT
ENV PHP_VERSION=7.2.6
# Wed, 27 Jun 2018 11:39:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 11:39:53 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 27 Jun 2018 11:40:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 11:40:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:43:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 11:43:33 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:43:34 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 11:43:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 11:43:35 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 11:43:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 27 Jun 2018 11:43:36 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 11:43:36 GMT
CMD ["php-fpm"]
# Wed, 27 Jun 2018 17:03:33 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:03:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Jun 2018 17:03:35 GMT
VOLUME [/var/www/html]
# Wed, 27 Jun 2018 17:03:35 GMT
ENV WORDPRESS_VERSION=4.9.6
# Wed, 27 Jun 2018 17:03:36 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Wed, 27 Jun 2018 17:03:39 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 27 Jun 2018 17:03:39 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Wed, 27 Jun 2018 17:03:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 17:03:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6bd38d2d66fba6795e9e95342f0c8198844b627d537b3984b9cd0a7ab81b28`  
		Last Modified: Wed, 27 Jun 2018 13:30:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02622b231f7d6560393c5b61f3e13a841d8d285abfccffe908cfce7138bb0df`  
		Last Modified: Wed, 27 Jun 2018 13:30:21 GMT  
		Size: 57.5 MB (57478453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd35557af7f92d6e5324211b684f896eea12d5d3a3675e4b5021d319d2efbd50`  
		Last Modified: Wed, 27 Jun 2018 13:30:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffea3dfb5bb6383e35348e9413683220c9b098eb14c80c1fa2c9c033c993f42b`  
		Last Modified: Wed, 27 Jun 2018 13:33:08 GMT  
		Size: 12.4 MB (12439841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13dba24216ae14d4e548add3b69074898d40f098a51a89b1843f68c056aa237`  
		Last Modified: Wed, 27 Jun 2018 13:33:07 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e15637d96c07fcee4b5b56dd5624547c203c76aa038802a6ed1f1807a2eb5a`  
		Last Modified: Wed, 27 Jun 2018 13:33:14 GMT  
		Size: 27.4 MB (27438742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238185abe7e00f801c44e396e67b67cf63206eb4cfcdbf45971963a4a1667018`  
		Last Modified: Wed, 27 Jun 2018 13:33:06 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7673dc96536dc69cc03700b692b19e3d638f2e3e32e341ca67597de016ac885a`  
		Last Modified: Wed, 27 Jun 2018 13:33:06 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df2bfe1c6480b08c1b82338b6103a5407d457fd8355541d8c8189ef247eada2`  
		Last Modified: Wed, 27 Jun 2018 13:33:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a102418efee75770ef8418f415253aae450a42818da88e6068190fe32091e3`  
		Last Modified: Wed, 27 Jun 2018 13:33:06 GMT  
		Size: 7.8 KB (7798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183a5987c6bc221d0028c29a472cfb05c99a5bf8385ae4b9e773b5ae4c2a096f`  
		Last Modified: Wed, 27 Jun 2018 17:11:24 GMT  
		Size: 1.1 MB (1050716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f5a28befcbfb97be414b430208ee5dff236ea9c38cf8de6db3c3d3de9562c6`  
		Last Modified: Wed, 27 Jun 2018 17:11:23 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe6b7b7fb928ff49b0e03a32ad91ef221bddf65fa22ccab3ef334868facbbbb`  
		Last Modified: Wed, 27 Jun 2018 17:11:25 GMT  
		Size: 8.6 MB (8600104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a009b5b065f4c99691299e344330211266382a665ccfe908503dcbe6c26f83f8`  
		Last Modified: Wed, 27 Jun 2018 17:11:24 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-fpm` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:f14931a1cef479de4f478200d394b17de275482ae2b9a912ccea89e16903dc39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121273134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf2ed5d0a40be73798fcaaed5be6808a7010941079631714c7381b7139817e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:17:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 13:17:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 13:17:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:17:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 13:17:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 13:26:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Jun 2018 13:26:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 13:26:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 13:26:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 13:26:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 13:26:04 GMT
ENV PHP_VERSION=7.2.6
# Wed, 27 Jun 2018 13:26:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 13:26:05 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 27 Jun 2018 13:26:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 13:26:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:29:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 13:29:59 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:30:00 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 13:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 13:30:01 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 13:30:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 27 Jun 2018 13:30:02 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 13:30:03 GMT
CMD ["php-fpm"]
# Wed, 27 Jun 2018 18:19:59 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 18:20:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Jun 2018 18:20:00 GMT
VOLUME [/var/www/html]
# Wed, 27 Jun 2018 18:20:01 GMT
ENV WORDPRESS_VERSION=4.9.6
# Wed, 27 Jun 2018 18:20:01 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Wed, 27 Jun 2018 18:20:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 27 Jun 2018 18:20:05 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Wed, 27 Jun 2018 18:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 18:20:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad50898fd2c468f438e87e9be864ea4fca3efee5458e40c137a80c7466910fd6`  
		Last Modified: Wed, 27 Jun 2018 14:56:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bcea513727cf4e9481d7f75357c43152fa325c9c7ba3b6aa2c8ed9a0032a4b`  
		Last Modified: Wed, 27 Jun 2018 14:56:20 GMT  
		Size: 53.6 MB (53599452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8e708452a0833ff29c80d96e764145c7530053d5e7c17bb081690df152d9ae`  
		Last Modified: Wed, 27 Jun 2018 14:56:00 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e0384c46175c3b6c937da890bff03c1491f30bdb5117fd8d1ded2b969abb22`  
		Last Modified: Wed, 27 Jun 2018 14:59:18 GMT  
		Size: 12.4 MB (12439850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c639b69e3cd88ebff09edc73b188d4b3d2c1d5d12da47ddbb1fbc1ec578aa80`  
		Last Modified: Wed, 27 Jun 2018 14:59:16 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdbf3172849aba84e8658df3516b77580d9ad7a3c962c8bdbf415594924bfd0`  
		Last Modified: Wed, 27 Jun 2018 14:59:23 GMT  
		Size: 26.3 MB (26348304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ff7261cc6334647e8388cabc61291980e82681fe0775cba293374f197f5103`  
		Last Modified: Wed, 27 Jun 2018 14:59:15 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1914c788e18a81e985109786be6d022ffaae56b06be7ca147abfde853581eaa3`  
		Last Modified: Wed, 27 Jun 2018 14:59:15 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bb4ef0fdad0c7047beb1247b32e7857129771513cdb07785293252e1024be2`  
		Last Modified: Wed, 27 Jun 2018 14:59:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351b2af7c51cff7a5a263d8f3a221a6157739c90126ddc6aa04e390079ac899e`  
		Last Modified: Wed, 27 Jun 2018 14:59:15 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb697b80aa50bbdb26f08e9e3f4d4f814b58c88b8b8785e9331744c21346218a`  
		Last Modified: Wed, 27 Jun 2018 18:28:14 GMT  
		Size: 984.1 KB (984088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852abfa8c04f386082f41131b8afc37397a93877a5e5a3bbf5064096a5d34e54`  
		Last Modified: Wed, 27 Jun 2018 18:28:14 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241acea668e2af99b39ca4807c72314225274f82b43c7a13d77b2dbeaa0b3bc2`  
		Last Modified: Wed, 27 Jun 2018 18:28:17 GMT  
		Size: 8.6 MB (8600109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69671d134a8b027fbd2e313edaec5e1994834c8d3771fc9965d8d7fe945a56e4`  
		Last Modified: Wed, 27 Jun 2018 18:28:14 GMT  
		Size: 3.4 KB (3359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-fpm` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:edd6d667935002b824b3b19e504e2e86c5ce923862bf32144ab3b09bb27e391b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127491921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d02eb6968086f71769ab4e1c8c2272221bc13e8554375675f40fc8979c52ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:11:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 12:11:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 12:16:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:16:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 12:16:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 12:41:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Jun 2018 12:42:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 12:42:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 12:42:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 12:42:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 12:42:04 GMT
ENV PHP_VERSION=7.2.6
# Wed, 27 Jun 2018 12:42:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 12:42:05 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 27 Jun 2018 12:42:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 12:42:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:52:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 12:52:44 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:52:46 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 12:52:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 12:52:48 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 12:52:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 27 Jun 2018 12:52:55 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 12:52:58 GMT
CMD ["php-fpm"]
# Thu, 28 Jun 2018 02:48:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 02:48:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 02:48:25 GMT
VOLUME [/var/www/html]
# Thu, 28 Jun 2018 02:48:25 GMT
ENV WORDPRESS_VERSION=4.9.6
# Thu, 28 Jun 2018 02:48:26 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Thu, 28 Jun 2018 02:48:30 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 28 Jun 2018 02:48:31 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 02:48:33 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79dea09ab336187bf8ad7df4f32e934b757e7e0fc53c4cdd5b09f42294fcc2f`  
		Last Modified: Wed, 27 Jun 2018 14:57:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dede9e8795169f0b10a28122f3d7a16e3e9e8fde7266ce1ac8cd43499d1b65f`  
		Last Modified: Wed, 27 Jun 2018 14:58:14 GMT  
		Size: 57.6 MB (57634070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e7618d91111b739b7d8c61720a3f19b3b84bd6510b18a1e2bfaf8a14742c26`  
		Last Modified: Wed, 27 Jun 2018 14:57:49 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02381314b92e82d82982ab92e09bc01b308b72fecf4140aeb7c81957ea6d3e9`  
		Last Modified: Wed, 27 Jun 2018 15:02:55 GMT  
		Size: 12.4 MB (12440758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f27926a5814c741dd886ea33e3069c4f987787a0ccc2ed1bb04ba24a8685763`  
		Last Modified: Wed, 27 Jun 2018 15:02:41 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf82d857e3681e6867d6d582b27ae2dabd43dcc1059a1aec8202fbb4c73e61cc`  
		Last Modified: Wed, 27 Jun 2018 15:03:05 GMT  
		Size: 27.4 MB (27429982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee808aa80f76855bb180f9ddf663992abb2fba9ece5be6e33a07b0d992d6b8aa`  
		Last Modified: Wed, 27 Jun 2018 15:02:39 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9bd6343b21f1c05d1f263afefd9637ffbb6844d329c12d7fcbe132352ad204`  
		Last Modified: Wed, 27 Jun 2018 15:02:39 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2f3da60a078174379888af25d50d649ee726d0db5c5157dcd4f481fb10c5b9`  
		Last Modified: Wed, 27 Jun 2018 15:02:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d28c280e2820543bb8dc86fd50023304316e577c0eb33ebeb7b33049f984e6`  
		Last Modified: Wed, 27 Jun 2018 15:02:39 GMT  
		Size: 7.8 KB (7799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef4c56f650016fe8bbf8c8fc1262f77a86621c4c6f059004c6646b2463fa5c1`  
		Last Modified: Thu, 28 Jun 2018 03:00:28 GMT  
		Size: 1.0 MB (1023911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a58d896ebabe0bcdc7d10633881753bc0781df2dd362dac39de888616a4979b`  
		Last Modified: Thu, 28 Jun 2018 03:00:28 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6615912b509305ae883875c6cd210adb816dad0b7b379abba7921fe3505014d5`  
		Last Modified: Thu, 28 Jun 2018 03:00:31 GMT  
		Size: 8.6 MB (8600129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a51676cc529aa9db6f79104d24c3ef76f49418af3ae158ddca9650a7a50f2a7`  
		Last Modified: Thu, 28 Jun 2018 03:00:27 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-fpm` - linux; 386

```console
$ docker pull wordpress@sha256:91a3548139bc15ebdee09f078692dc130e7444f6bc0ccd9d2fcfe22e32146dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146146290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e803813b0be2a1c7882442b620411a1ee088dd03c44ac0521e0fe03c967507a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:39:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 13:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 13:39:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:39:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 13:39:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 13:48:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Jun 2018 13:48:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 13:48:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 13:48:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 13:48:40 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 13:48:40 GMT
ENV PHP_VERSION=7.2.6
# Wed, 27 Jun 2018 13:48:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 13:48:40 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 27 Jun 2018 13:48:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 13:48:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:53:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 13:53:08 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:53:09 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 13:53:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 13:53:09 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 13:53:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 27 Jun 2018 13:53:10 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 13:53:10 GMT
CMD ["php-fpm"]
# Wed, 27 Jun 2018 18:27:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 18:27:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Jun 2018 18:27:10 GMT
VOLUME [/var/www/html]
# Wed, 27 Jun 2018 18:27:10 GMT
ENV WORDPRESS_VERSION=4.9.6
# Wed, 27 Jun 2018 18:27:11 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Wed, 27 Jun 2018 18:27:14 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 27 Jun 2018 18:27:14 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Wed, 27 Jun 2018 18:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 18:27:15 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baad8197006209bfe81c1a81c6d83eb29845c5210a5818d2a01ca3f4396fc7c1`  
		Last Modified: Wed, 27 Jun 2018 16:04:40 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd2f11dac5d775ab0e35851f2fd75bf172e146b62a935818333717b9adb7c7d`  
		Last Modified: Wed, 27 Jun 2018 16:05:13 GMT  
		Size: 71.5 MB (71519761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6614119214dcbd3cc94e0c89b9db7085ff00a17fe410275ff8eb29babd608f36`  
		Last Modified: Wed, 27 Jun 2018 16:04:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5675e0e6a209058a865e9f041b2929b13ef7a243088ea645bd190a1dfaa418cb`  
		Last Modified: Wed, 27 Jun 2018 16:11:26 GMT  
		Size: 12.4 MB (12441224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e5a1a6f8399d178b01c036681b9810c2e4720d600a8eadd83335c89171a14d`  
		Last Modified: Wed, 27 Jun 2018 16:11:23 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d988d0fc42f9a3fe61a7683b43530803c38b9ffd3400827d7fda534dd2d6af`  
		Last Modified: Wed, 27 Jun 2018 16:11:35 GMT  
		Size: 29.3 MB (29285448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbf9730b26a61e0fc3d84b6efd956db89f42e5e941fd5cb8eb16d3c4b601f74`  
		Last Modified: Wed, 27 Jun 2018 16:11:21 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13c842d800ab9885f6423994cb3cb56ac5fc9f87f484ee33c7bde03f8259e20`  
		Last Modified: Wed, 27 Jun 2018 16:11:21 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1db70165884ce24e793f236d1019c073349bf42e9993e6251be0d0b5cb3911`  
		Last Modified: Wed, 27 Jun 2018 16:11:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084c1f2caff12168aa386906d2517e1730640ecbc3c1669038c48d9bacdb0da`  
		Last Modified: Wed, 27 Jun 2018 16:11:21 GMT  
		Size: 7.8 KB (7798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817619bf76a7531f0cfbb7290be74db69561bc01fd8200bbafea58f338df07b3`  
		Last Modified: Wed, 27 Jun 2018 18:40:00 GMT  
		Size: 1.1 MB (1144637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a44bc98b2725e61a5711a43b07572505c405946f7ab4015aaeb87e3d7e3f0ae`  
		Last Modified: Wed, 27 Jun 2018 18:39:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee055a63bd26361cf358adbe5a17cd51325c4ec72c92e9a6f007a9e70e14d8`  
		Last Modified: Wed, 27 Jun 2018 18:40:03 GMT  
		Size: 8.6 MB (8600131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30feab8ba0b20068f9be5521dab38835c4eb008bcc4d97c188cabea85d3e50e`  
		Last Modified: Wed, 27 Jun 2018 18:39:59 GMT  
		Size: 3.4 KB (3355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-fpm` - linux; ppc64le

```console
$ docker pull wordpress@sha256:776c14349efce1e37fec7332f2cf94f94263098a8ac0f40de4a16a54f53672f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135253424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bc9923ae332ec4ec845810bbcbd4b6c4d791cfb58d0b828ccb2368042d5af7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:45:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 10:45:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 10:47:19 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 10:47:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 11:00:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Jun 2018 11:00:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 11:00:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 11:00:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 11:00:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 11:00:35 GMT
ENV PHP_VERSION=7.2.6
# Wed, 27 Jun 2018 11:00:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 11:00:39 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 27 Jun 2018 11:01:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 11:01:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:06:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 11:06:15 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:06:17 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 11:06:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 11:06:19 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 11:06:23 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 27 Jun 2018 11:06:25 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 11:06:26 GMT
CMD ["php-fpm"]
# Wed, 27 Jun 2018 18:08:32 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 18:08:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Jun 2018 18:08:43 GMT
VOLUME [/var/www/html]
# Wed, 27 Jun 2018 18:08:44 GMT
ENV WORDPRESS_VERSION=4.9.6
# Wed, 27 Jun 2018 18:08:45 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Wed, 27 Jun 2018 18:08:56 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 27 Jun 2018 18:09:00 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Wed, 27 Jun 2018 18:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 18:09:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ae4b56e2ace7c7646846f86dc3f38e26dd5c28d15897bcf27f31ca7b53f48`  
		Last Modified: Wed, 27 Jun 2018 12:47:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0239e446c0f4fb7482d751c07130186f67b204554bcb03b85c33a693da8c97`  
		Last Modified: Wed, 27 Jun 2018 12:47:36 GMT  
		Size: 61.8 MB (61842303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9525044a6e16dd077fce234b360c9d4a245ef72dec9d426d72292313e81283a`  
		Last Modified: Wed, 27 Jun 2018 12:47:08 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760540cddf59ca6c2f286a922bdc36aa43c69b2f60e7c57c87150447e339e443`  
		Last Modified: Wed, 27 Jun 2018 12:51:19 GMT  
		Size: 12.4 MB (12440320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05e6fb54b83029647bfb5671ac61e17fae61d125da275e14994a17c2ac507f8`  
		Last Modified: Wed, 27 Jun 2018 12:51:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a673e53c18404ba601b86cb49352fd3115e8d3b304272424e7e931e88019a531`  
		Last Modified: Wed, 27 Jun 2018 12:51:26 GMT  
		Size: 28.5 MB (28500080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f0be7a898d666145ca55f0feb01773f850f3cf355fc371ae16d095d069334c`  
		Last Modified: Wed, 27 Jun 2018 12:51:13 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1311d2b09b852e61b763f9e8432116bfb1da860d987ea59ad0e4d3edf9dd73cc`  
		Last Modified: Wed, 27 Jun 2018 12:51:13 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5e5034719e513adc011be346941f2407c1d9a80b7bd8df958d2b315c8da991`  
		Last Modified: Wed, 27 Jun 2018 12:51:13 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dcf0981a0e194c59fdf6b741922f02ed6b16823a65fcb5a5c989b9ad6fe9c8`  
		Last Modified: Wed, 27 Jun 2018 12:51:13 GMT  
		Size: 7.8 KB (7799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b654d2feac59fb030050223d46d8606783263a60005da1dc4544f04f2fb3bab`  
		Last Modified: Wed, 27 Jun 2018 18:20:28 GMT  
		Size: 1.1 MB (1102531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8951bf7b43554bb0031e7f6352995a8a1d499922e6dadfc03128525a05f87a96`  
		Last Modified: Wed, 27 Jun 2018 18:20:28 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b552ecf11850b17c9f1981c8c05fe53e78e268c21b30f17e5c732e0131c2d62c`  
		Last Modified: Wed, 27 Jun 2018 18:20:31 GMT  
		Size: 8.6 MB (8600110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5714b9cea78be7e99a5978227c471b5d9caede66b9588faa79faf6b09f125758`  
		Last Modified: Wed, 27 Jun 2018 18:20:28 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
