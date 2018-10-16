<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `known`

-	[`known:0`](#known0)
-	[`known:0.9`](#known09)
-	[`known:0.9.9`](#known099)
-	[`known:latest`](#knownlatest)

## `known:0`

```console
$ docker pull known@sha256:be889b6b17f5af0534f10d9d761583472daead2d95f4c898cf764c4012f8247a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `known:0` - linux; amd64

```console
$ docker pull known@sha256:d4b2522006df37716ca3ef898049bc0e461ab92a265478fc12e73cbba3e24f88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172984648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba94f2d4f6d5b125b79aaf02c295418d70bdc2bcc0c41bc4a4ca2aa79b0c5c24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:00:56 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 00:00:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 00:01:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:01:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 00:01:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 02:40:52 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 02:40:52 GMT
ENV PHP_VERSION=5.6.38
# Tue, 16 Oct 2018 02:40:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 02:40:53 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Tue, 16 Oct 2018 02:41:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 02:41:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 02:47:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 02:47:19 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 16 Oct 2018 02:47:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 02:47:19 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 02:47:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 16 Oct 2018 02:47:20 GMT
EXPOSE 9000/tcp
# Tue, 16 Oct 2018 02:47:20 GMT
CMD ["php-fpm"]
# Tue, 16 Oct 2018 14:14:37 GMT
LABEL maintainer=hello@withknown.com
# Tue, 16 Oct 2018 14:18:34 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:18:35 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 14:18:57 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Tue, 16 Oct 2018 14:18:57 GMT
ENV KNOWN_VERSION=0.9.9
# Tue, 16 Oct 2018 14:18:57 GMT
VOLUME [/var/www/html]
# Tue, 16 Oct 2018 14:19:21 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:19:22 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:19:23 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376d99d019dce3a5ff8f42cc7c09a445c00fefe9777517ee3a1a87b6c587dc6e`  
		Last Modified: Tue, 16 Oct 2018 03:22:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b3573727f01ab65fc76fcf001e31fcb67bf9ccaeaaa0e03188545d73767ecc`  
		Last Modified: Tue, 16 Oct 2018 03:23:02 GMT  
		Size: 67.4 MB (67428848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c492579cd1fe1c25aa2791fa1a68522f4ceb9cd73a56c3d8a054d57f2b4458e`  
		Last Modified: Tue, 16 Oct 2018 03:22:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc29282e77a28c6610e9f9d3a7f11cff2453cfd68e8227eb3e35af82631668ea`  
		Last Modified: Tue, 16 Oct 2018 03:56:42 GMT  
		Size: 12.8 MB (12795272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ed4c9467f4d4886ea9764c9649cf85204ea246d190350b9c494b7f5f7f3d30`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0719bb073f9e8412ad7d013071205f30827c3b96da28a1c7b55d14caaed7fe0`  
		Last Modified: Tue, 16 Oct 2018 03:56:45 GMT  
		Size: 23.0 MB (23032145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b640ccfb8b277c426301a926f0501f43995ed85543dac4dd61262dfd9398bf`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ca05848ebd4c2095f82d75cf1af281ee892eed42dc7911ad9a54e60b3b15a8`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ef235f69fd530c32dceda2c2f63e9fa1a8fd641fe654123b758c4e3aab038`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 7.7 KB (7711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dfc3e3fcbf7f06ceb9efc40cc1011866f56c46ca1c1f546e199db2b379ef7e`  
		Last Modified: Tue, 16 Oct 2018 14:19:56 GMT  
		Size: 24.1 MB (24060615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b94e6b1890ff77b0d88910410e5557929672384a0f55a57a68055d12b766cb5`  
		Last Modified: Tue, 16 Oct 2018 14:19:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c1ecd28f531b33d2f2ab7cc0fb0864a626b640279e2af946eadf7edf1ea0`  
		Last Modified: Tue, 16 Oct 2018 14:19:46 GMT  
		Size: 445.1 KB (445066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eced66049b8d0a7e4223c02244c05d451c16dcbf7e3bf3375ffb9c0bf00cf7`  
		Last Modified: Tue, 16 Oct 2018 14:19:54 GMT  
		Size: 22.7 MB (22724131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213042dede37e071b70c04281ec7975366aee75ca05309146ee6f1b8f2b52da6`  
		Last Modified: Tue, 16 Oct 2018 14:19:46 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `known:0` - linux; arm64 variant v8

```console
$ docker pull known@sha256:2b40e2f1ebe05b70d38a33b1eb64b468d98a8308264b60122c47266009fd0e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158988166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71be40243337b433035cb0eba10b1eb3ef551d45a0055dd49cae6d10c75af47f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 14:29:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 14:30:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:30:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 14:30:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:54:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 14:54:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 18:14:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 16:58:22 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 16:58:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 16:58:27 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 16:59:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 16:59:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 17:07:14 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 17:07:16 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 17:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 17:07:24 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 17:07:25 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 19:34:59 GMT
LABEL maintainer=hello@withknown.com
# Sat, 15 Sep 2018 19:40:25 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:40:27 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:40:50 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:40:51 GMT
ENV KNOWN_VERSION=0.9.9
# Sat, 15 Sep 2018 19:40:51 GMT
VOLUME [/var/www/html]
# Sat, 15 Sep 2018 19:42:33 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:34 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Sat, 15 Sep 2018 19:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Sep 2018 19:42:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9a0c6139ac02ec19ae2b9abd5a62e150d1d48fa5b2f2ce6288673d4abf8c89`  
		Last Modified: Wed, 05 Sep 2018 18:37:30 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f9aedb13f6184ef6937e7fd4e572275b5c360fb3a82984e60f9f409ded5a`  
		Last Modified: Wed, 05 Sep 2018 18:38:28 GMT  
		Size: 57.6 MB (57596375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82954d79d5da39fa6ca0661f210feebf6a504b18c3871386acdc845a57e25927`  
		Last Modified: Wed, 05 Sep 2018 18:37:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad557cb7ac1017107c693b1c39dc70ae205074265e96f855307918bb2a724a`  
		Last Modified: Sat, 15 Sep 2018 18:50:25 GMT  
		Size: 12.8 MB (12793244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e644cd97383e42967ce0bf65b966c2f736332395cfc86463b047c42d07c0aa`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9599e63b88549bf4e8f854ea7f275fdda765eac7b3a37ad6a2a65289e46428`  
		Last Modified: Sat, 15 Sep 2018 18:50:29 GMT  
		Size: 22.6 MB (22589900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18d67168ece9abde29d49e89305b2212af92181b1c718736c1368fee7c10072`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0880d9481a3ec7c59a8af5b30221659b279b9b1a5ad2b1ad2b2eee920f4931`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e31655d5168c5cd12e5a2cee160e93599d3b0e4409851a56d9dc1d565957e8d`  
		Last Modified: Sat, 15 Sep 2018 18:50:22 GMT  
		Size: 7.7 KB (7709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4f91810f14f52d67cdece6b77f2d160ff9f823c213e970a4b906be9bf3f15`  
		Last Modified: Sat, 15 Sep 2018 19:43:04 GMT  
		Size: 22.5 MB (22503945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90b262dd9b7bbc25493351dd07de3bd239a22b3b410101aba759111acfcef1`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb350d41189f0b4cef7e92033ea3b31665dfdf0dc9ce9aed75641eb9351eb283`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 438.1 KB (438057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba265bb1ee0b658c64549f5fae2ba46319762d051ee079ea08151525283fc7c`  
		Last Modified: Sat, 15 Sep 2018 19:43:03 GMT  
		Size: 22.7 MB (22722481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee475c81c9d82d30ec4b9af9f032428890a1e9fe926cb5b995a46dc9fb4ccd6`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `known:0.9`

```console
$ docker pull known@sha256:be889b6b17f5af0534f10d9d761583472daead2d95f4c898cf764c4012f8247a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `known:0.9` - linux; amd64

```console
$ docker pull known@sha256:d4b2522006df37716ca3ef898049bc0e461ab92a265478fc12e73cbba3e24f88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172984648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba94f2d4f6d5b125b79aaf02c295418d70bdc2bcc0c41bc4a4ca2aa79b0c5c24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:00:56 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 00:00:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 00:01:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:01:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 00:01:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 02:40:52 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 02:40:52 GMT
ENV PHP_VERSION=5.6.38
# Tue, 16 Oct 2018 02:40:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 02:40:53 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Tue, 16 Oct 2018 02:41:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 02:41:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 02:47:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 02:47:19 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 16 Oct 2018 02:47:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 02:47:19 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 02:47:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 16 Oct 2018 02:47:20 GMT
EXPOSE 9000/tcp
# Tue, 16 Oct 2018 02:47:20 GMT
CMD ["php-fpm"]
# Tue, 16 Oct 2018 14:14:37 GMT
LABEL maintainer=hello@withknown.com
# Tue, 16 Oct 2018 14:18:34 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:18:35 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 14:18:57 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Tue, 16 Oct 2018 14:18:57 GMT
ENV KNOWN_VERSION=0.9.9
# Tue, 16 Oct 2018 14:18:57 GMT
VOLUME [/var/www/html]
# Tue, 16 Oct 2018 14:19:21 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:19:22 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:19:23 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376d99d019dce3a5ff8f42cc7c09a445c00fefe9777517ee3a1a87b6c587dc6e`  
		Last Modified: Tue, 16 Oct 2018 03:22:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b3573727f01ab65fc76fcf001e31fcb67bf9ccaeaaa0e03188545d73767ecc`  
		Last Modified: Tue, 16 Oct 2018 03:23:02 GMT  
		Size: 67.4 MB (67428848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c492579cd1fe1c25aa2791fa1a68522f4ceb9cd73a56c3d8a054d57f2b4458e`  
		Last Modified: Tue, 16 Oct 2018 03:22:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc29282e77a28c6610e9f9d3a7f11cff2453cfd68e8227eb3e35af82631668ea`  
		Last Modified: Tue, 16 Oct 2018 03:56:42 GMT  
		Size: 12.8 MB (12795272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ed4c9467f4d4886ea9764c9649cf85204ea246d190350b9c494b7f5f7f3d30`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0719bb073f9e8412ad7d013071205f30827c3b96da28a1c7b55d14caaed7fe0`  
		Last Modified: Tue, 16 Oct 2018 03:56:45 GMT  
		Size: 23.0 MB (23032145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b640ccfb8b277c426301a926f0501f43995ed85543dac4dd61262dfd9398bf`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ca05848ebd4c2095f82d75cf1af281ee892eed42dc7911ad9a54e60b3b15a8`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ef235f69fd530c32dceda2c2f63e9fa1a8fd641fe654123b758c4e3aab038`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 7.7 KB (7711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dfc3e3fcbf7f06ceb9efc40cc1011866f56c46ca1c1f546e199db2b379ef7e`  
		Last Modified: Tue, 16 Oct 2018 14:19:56 GMT  
		Size: 24.1 MB (24060615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b94e6b1890ff77b0d88910410e5557929672384a0f55a57a68055d12b766cb5`  
		Last Modified: Tue, 16 Oct 2018 14:19:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c1ecd28f531b33d2f2ab7cc0fb0864a626b640279e2af946eadf7edf1ea0`  
		Last Modified: Tue, 16 Oct 2018 14:19:46 GMT  
		Size: 445.1 KB (445066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eced66049b8d0a7e4223c02244c05d451c16dcbf7e3bf3375ffb9c0bf00cf7`  
		Last Modified: Tue, 16 Oct 2018 14:19:54 GMT  
		Size: 22.7 MB (22724131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213042dede37e071b70c04281ec7975366aee75ca05309146ee6f1b8f2b52da6`  
		Last Modified: Tue, 16 Oct 2018 14:19:46 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `known:0.9` - linux; arm64 variant v8

```console
$ docker pull known@sha256:2b40e2f1ebe05b70d38a33b1eb64b468d98a8308264b60122c47266009fd0e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158988166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71be40243337b433035cb0eba10b1eb3ef551d45a0055dd49cae6d10c75af47f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 14:29:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 14:30:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:30:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 14:30:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:54:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 14:54:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 18:14:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 16:58:22 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 16:58:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 16:58:27 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 16:59:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 16:59:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 17:07:14 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 17:07:16 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 17:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 17:07:24 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 17:07:25 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 19:34:59 GMT
LABEL maintainer=hello@withknown.com
# Sat, 15 Sep 2018 19:40:25 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:40:27 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:40:50 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:40:51 GMT
ENV KNOWN_VERSION=0.9.9
# Sat, 15 Sep 2018 19:40:51 GMT
VOLUME [/var/www/html]
# Sat, 15 Sep 2018 19:42:33 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:34 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Sat, 15 Sep 2018 19:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Sep 2018 19:42:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9a0c6139ac02ec19ae2b9abd5a62e150d1d48fa5b2f2ce6288673d4abf8c89`  
		Last Modified: Wed, 05 Sep 2018 18:37:30 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f9aedb13f6184ef6937e7fd4e572275b5c360fb3a82984e60f9f409ded5a`  
		Last Modified: Wed, 05 Sep 2018 18:38:28 GMT  
		Size: 57.6 MB (57596375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82954d79d5da39fa6ca0661f210feebf6a504b18c3871386acdc845a57e25927`  
		Last Modified: Wed, 05 Sep 2018 18:37:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad557cb7ac1017107c693b1c39dc70ae205074265e96f855307918bb2a724a`  
		Last Modified: Sat, 15 Sep 2018 18:50:25 GMT  
		Size: 12.8 MB (12793244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e644cd97383e42967ce0bf65b966c2f736332395cfc86463b047c42d07c0aa`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9599e63b88549bf4e8f854ea7f275fdda765eac7b3a37ad6a2a65289e46428`  
		Last Modified: Sat, 15 Sep 2018 18:50:29 GMT  
		Size: 22.6 MB (22589900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18d67168ece9abde29d49e89305b2212af92181b1c718736c1368fee7c10072`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0880d9481a3ec7c59a8af5b30221659b279b9b1a5ad2b1ad2b2eee920f4931`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e31655d5168c5cd12e5a2cee160e93599d3b0e4409851a56d9dc1d565957e8d`  
		Last Modified: Sat, 15 Sep 2018 18:50:22 GMT  
		Size: 7.7 KB (7709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4f91810f14f52d67cdece6b77f2d160ff9f823c213e970a4b906be9bf3f15`  
		Last Modified: Sat, 15 Sep 2018 19:43:04 GMT  
		Size: 22.5 MB (22503945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90b262dd9b7bbc25493351dd07de3bd239a22b3b410101aba759111acfcef1`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb350d41189f0b4cef7e92033ea3b31665dfdf0dc9ce9aed75641eb9351eb283`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 438.1 KB (438057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba265bb1ee0b658c64549f5fae2ba46319762d051ee079ea08151525283fc7c`  
		Last Modified: Sat, 15 Sep 2018 19:43:03 GMT  
		Size: 22.7 MB (22722481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee475c81c9d82d30ec4b9af9f032428890a1e9fe926cb5b995a46dc9fb4ccd6`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `known:0.9.9`

```console
$ docker pull known@sha256:be889b6b17f5af0534f10d9d761583472daead2d95f4c898cf764c4012f8247a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `known:0.9.9` - linux; amd64

```console
$ docker pull known@sha256:d4b2522006df37716ca3ef898049bc0e461ab92a265478fc12e73cbba3e24f88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172984648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba94f2d4f6d5b125b79aaf02c295418d70bdc2bcc0c41bc4a4ca2aa79b0c5c24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:00:56 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 00:00:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 00:01:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:01:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 00:01:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:16:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 02:40:52 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 02:40:52 GMT
ENV PHP_VERSION=5.6.38
# Tue, 16 Oct 2018 02:40:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 02:40:53 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Tue, 16 Oct 2018 02:41:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 02:41:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 02:47:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 02:47:19 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 16 Oct 2018 02:47:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 02:47:19 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 02:47:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 16 Oct 2018 02:47:20 GMT
EXPOSE 9000/tcp
# Tue, 16 Oct 2018 02:47:20 GMT
CMD ["php-fpm"]
# Tue, 16 Oct 2018 14:14:37 GMT
LABEL maintainer=hello@withknown.com
# Tue, 16 Oct 2018 14:18:34 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:18:35 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 14:18:57 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Tue, 16 Oct 2018 14:18:57 GMT
ENV KNOWN_VERSION=0.9.9
# Tue, 16 Oct 2018 14:18:57 GMT
VOLUME [/var/www/html]
# Tue, 16 Oct 2018 14:19:21 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:19:22 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:19:23 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376d99d019dce3a5ff8f42cc7c09a445c00fefe9777517ee3a1a87b6c587dc6e`  
		Last Modified: Tue, 16 Oct 2018 03:22:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b3573727f01ab65fc76fcf001e31fcb67bf9ccaeaaa0e03188545d73767ecc`  
		Last Modified: Tue, 16 Oct 2018 03:23:02 GMT  
		Size: 67.4 MB (67428848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c492579cd1fe1c25aa2791fa1a68522f4ceb9cd73a56c3d8a054d57f2b4458e`  
		Last Modified: Tue, 16 Oct 2018 03:22:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc29282e77a28c6610e9f9d3a7f11cff2453cfd68e8227eb3e35af82631668ea`  
		Last Modified: Tue, 16 Oct 2018 03:56:42 GMT  
		Size: 12.8 MB (12795272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ed4c9467f4d4886ea9764c9649cf85204ea246d190350b9c494b7f5f7f3d30`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0719bb073f9e8412ad7d013071205f30827c3b96da28a1c7b55d14caaed7fe0`  
		Last Modified: Tue, 16 Oct 2018 03:56:45 GMT  
		Size: 23.0 MB (23032145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b640ccfb8b277c426301a926f0501f43995ed85543dac4dd61262dfd9398bf`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ca05848ebd4c2095f82d75cf1af281ee892eed42dc7911ad9a54e60b3b15a8`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ef235f69fd530c32dceda2c2f63e9fa1a8fd641fe654123b758c4e3aab038`  
		Last Modified: Tue, 16 Oct 2018 03:56:40 GMT  
		Size: 7.7 KB (7711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dfc3e3fcbf7f06ceb9efc40cc1011866f56c46ca1c1f546e199db2b379ef7e`  
		Last Modified: Tue, 16 Oct 2018 14:19:56 GMT  
		Size: 24.1 MB (24060615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b94e6b1890ff77b0d88910410e5557929672384a0f55a57a68055d12b766cb5`  
		Last Modified: Tue, 16 Oct 2018 14:19:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c1ecd28f531b33d2f2ab7cc0fb0864a626b640279e2af946eadf7edf1ea0`  
		Last Modified: Tue, 16 Oct 2018 14:19:46 GMT  
		Size: 445.1 KB (445066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eced66049b8d0a7e4223c02244c05d451c16dcbf7e3bf3375ffb9c0bf00cf7`  
		Last Modified: Tue, 16 Oct 2018 14:19:54 GMT  
		Size: 22.7 MB (22724131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213042dede37e071b70c04281ec7975366aee75ca05309146ee6f1b8f2b52da6`  
		Last Modified: Tue, 16 Oct 2018 14:19:46 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `known:0.9.9` - linux; arm64 variant v8

```console
$ docker pull known@sha256:2b40e2f1ebe05b70d38a33b1eb64b468d98a8308264b60122c47266009fd0e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158988166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71be40243337b433035cb0eba10b1eb3ef551d45a0055dd49cae6d10c75af47f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 14:29:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 14:30:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:30:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 14:30:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:54:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 14:54:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 18:14:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 16:58:22 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 16:58:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 16:58:27 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 16:59:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 16:59:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 17:07:14 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 17:07:16 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 17:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 17:07:24 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 17:07:25 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 19:34:59 GMT
LABEL maintainer=hello@withknown.com
# Sat, 15 Sep 2018 19:40:25 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:40:27 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:40:50 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:40:51 GMT
ENV KNOWN_VERSION=0.9.9
# Sat, 15 Sep 2018 19:40:51 GMT
VOLUME [/var/www/html]
# Sat, 15 Sep 2018 19:42:33 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:34 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Sat, 15 Sep 2018 19:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Sep 2018 19:42:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9a0c6139ac02ec19ae2b9abd5a62e150d1d48fa5b2f2ce6288673d4abf8c89`  
		Last Modified: Wed, 05 Sep 2018 18:37:30 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f9aedb13f6184ef6937e7fd4e572275b5c360fb3a82984e60f9f409ded5a`  
		Last Modified: Wed, 05 Sep 2018 18:38:28 GMT  
		Size: 57.6 MB (57596375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82954d79d5da39fa6ca0661f210feebf6a504b18c3871386acdc845a57e25927`  
		Last Modified: Wed, 05 Sep 2018 18:37:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad557cb7ac1017107c693b1c39dc70ae205074265e96f855307918bb2a724a`  
		Last Modified: Sat, 15 Sep 2018 18:50:25 GMT  
		Size: 12.8 MB (12793244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e644cd97383e42967ce0bf65b966c2f736332395cfc86463b047c42d07c0aa`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9599e63b88549bf4e8f854ea7f275fdda765eac7b3a37ad6a2a65289e46428`  
		Last Modified: Sat, 15 Sep 2018 18:50:29 GMT  
		Size: 22.6 MB (22589900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18d67168ece9abde29d49e89305b2212af92181b1c718736c1368fee7c10072`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0880d9481a3ec7c59a8af5b30221659b279b9b1a5ad2b1ad2b2eee920f4931`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e31655d5168c5cd12e5a2cee160e93599d3b0e4409851a56d9dc1d565957e8d`  
		Last Modified: Sat, 15 Sep 2018 18:50:22 GMT  
		Size: 7.7 KB (7709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4f91810f14f52d67cdece6b77f2d160ff9f823c213e970a4b906be9bf3f15`  
		Last Modified: Sat, 15 Sep 2018 19:43:04 GMT  
		Size: 22.5 MB (22503945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90b262dd9b7bbc25493351dd07de3bd239a22b3b410101aba759111acfcef1`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb350d41189f0b4cef7e92033ea3b31665dfdf0dc9ce9aed75641eb9351eb283`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 438.1 KB (438057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba265bb1ee0b658c64549f5fae2ba46319762d051ee079ea08151525283fc7c`  
		Last Modified: Sat, 15 Sep 2018 19:43:03 GMT  
		Size: 22.7 MB (22722481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee475c81c9d82d30ec4b9af9f032428890a1e9fe926cb5b995a46dc9fb4ccd6`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `known:latest`

```console
$ docker pull known@sha256:83ed058845325d100561919fc221f70ed799e627c65de2bc0efd5b0ffe76f997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `known:latest` - linux; amd64

```console
$ docker pull known@sha256:dced6db699de246a9b7dff9a47cd31054e1ee278aec22824b7383b42a8bfecbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173352781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7074c471a138bd14a7d60dd6909e7c94b3489a4466ad5e049470896939ae39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:11:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 02:11:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:11:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:11:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 07:46:52 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 05:30:18 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 05:30:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 05:30:19 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 05:30:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 05:30:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 05:34:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 05:34:21 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 05:34:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 05:34:21 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 05:34:22 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 05:34:22 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 05:34:22 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:34:03 GMT
LABEL maintainer=hello@withknown.com
# Sat, 15 Sep 2018 07:36:03 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 07:36:03 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 07:36:12 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Sat, 15 Sep 2018 07:36:12 GMT
ENV KNOWN_VERSION=0.9.9
# Sat, 15 Sep 2018 07:36:13 GMT
VOLUME [/var/www/html]
# Sat, 15 Sep 2018 07:36:30 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 07:36:31 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Sat, 15 Sep 2018 07:36:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Sep 2018 07:36:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db355f716c43e40f6c1060db33763fa67b1c9d213174a66f1de0d4db15788b26`  
		Last Modified: Sat, 15 Sep 2018 06:54:30 GMT  
		Size: 12.8 MB (12795275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25369d214236f5df709e0f4c83a7e005f48f89cdd737646f83bbf6a30c3c904b`  
		Last Modified: Sat, 15 Sep 2018 06:54:29 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1116c84965f7869607dd93f3d205f34ceec4f9e94ae61672f0545bd3350450`  
		Last Modified: Sat, 15 Sep 2018 06:54:32 GMT  
		Size: 23.4 MB (23400091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a8c4edb49681ce87305340fc72cfdaa0e779e0bef73e4c9ad107c841201c01`  
		Last Modified: Sat, 15 Sep 2018 06:54:28 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27817b64d3ee390cc677dcc0aaa6d00563e60594059bb3589f866bac9aee3725`  
		Last Modified: Sat, 15 Sep 2018 06:54:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bacd1cc6cc593c90cf2961130ed749ff67346f493cb94058ee8b6715d37ccc4`  
		Last Modified: Sat, 15 Sep 2018 06:54:28 GMT  
		Size: 7.7 KB (7710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd46746f1c3b187775571231b7c0a20b28ddf4835c3e9c2c202ac41c72c3eb`  
		Last Modified: Sat, 15 Sep 2018 07:37:05 GMT  
		Size: 24.1 MB (24060846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92070d86eb4996a6896e0b5d9cb7384cf031cc51a139ef031eb974de77293fcb`  
		Last Modified: Sat, 15 Sep 2018 07:36:59 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb90b8a90ca901aae691107d37545eed810368b68a069818b1277bb37ceaf81`  
		Last Modified: Sat, 15 Sep 2018 07:36:59 GMT  
		Size: 445.1 KB (445051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bcf0002cf17a5878df163af33fd0a7c5b49fbe0d228c79bc9a25a59c36a5d8`  
		Last Modified: Sat, 15 Sep 2018 07:37:04 GMT  
		Size: 22.7 MB (22724071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc1531ee2246350068d033aac7762d3ce360b0813586feebf0f2a104af130ad`  
		Last Modified: Sat, 15 Sep 2018 07:37:00 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `known:latest` - linux; arm64 variant v8

```console
$ docker pull known@sha256:2b40e2f1ebe05b70d38a33b1eb64b468d98a8308264b60122c47266009fd0e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158988166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71be40243337b433035cb0eba10b1eb3ef551d45a0055dd49cae6d10c75af47f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 14:29:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 14:30:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:30:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 14:30:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:54:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 14:54:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 18:14:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 16:58:22 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 16:58:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 16:58:27 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 16:59:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 16:59:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 17:07:14 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 17:07:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 17:07:16 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 17:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 17:07:24 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 17:07:25 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 19:34:59 GMT
LABEL maintainer=hello@withknown.com
# Sat, 15 Sep 2018 19:40:25 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:40:27 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:40:50 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:40:51 GMT
ENV KNOWN_VERSION=0.9.9
# Sat, 15 Sep 2018 19:40:51 GMT
VOLUME [/var/www/html]
# Sat, 15 Sep 2018 19:42:33 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:34 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Sat, 15 Sep 2018 19:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Sep 2018 19:42:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9a0c6139ac02ec19ae2b9abd5a62e150d1d48fa5b2f2ce6288673d4abf8c89`  
		Last Modified: Wed, 05 Sep 2018 18:37:30 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f9aedb13f6184ef6937e7fd4e572275b5c360fb3a82984e60f9f409ded5a`  
		Last Modified: Wed, 05 Sep 2018 18:38:28 GMT  
		Size: 57.6 MB (57596375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82954d79d5da39fa6ca0661f210feebf6a504b18c3871386acdc845a57e25927`  
		Last Modified: Wed, 05 Sep 2018 18:37:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad557cb7ac1017107c693b1c39dc70ae205074265e96f855307918bb2a724a`  
		Last Modified: Sat, 15 Sep 2018 18:50:25 GMT  
		Size: 12.8 MB (12793244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e644cd97383e42967ce0bf65b966c2f736332395cfc86463b047c42d07c0aa`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9599e63b88549bf4e8f854ea7f275fdda765eac7b3a37ad6a2a65289e46428`  
		Last Modified: Sat, 15 Sep 2018 18:50:29 GMT  
		Size: 22.6 MB (22589900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18d67168ece9abde29d49e89305b2212af92181b1c718736c1368fee7c10072`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0880d9481a3ec7c59a8af5b30221659b279b9b1a5ad2b1ad2b2eee920f4931`  
		Last Modified: Sat, 15 Sep 2018 18:50:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e31655d5168c5cd12e5a2cee160e93599d3b0e4409851a56d9dc1d565957e8d`  
		Last Modified: Sat, 15 Sep 2018 18:50:22 GMT  
		Size: 7.7 KB (7709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4f91810f14f52d67cdece6b77f2d160ff9f823c213e970a4b906be9bf3f15`  
		Last Modified: Sat, 15 Sep 2018 19:43:04 GMT  
		Size: 22.5 MB (22503945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90b262dd9b7bbc25493351dd07de3bd239a22b3b410101aba759111acfcef1`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb350d41189f0b4cef7e92033ea3b31665dfdf0dc9ce9aed75641eb9351eb283`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 438.1 KB (438057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba265bb1ee0b658c64549f5fae2ba46319762d051ee079ea08151525283fc7c`  
		Last Modified: Sat, 15 Sep 2018 19:43:03 GMT  
		Size: 22.7 MB (22722481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee475c81c9d82d30ec4b9af9f032428890a1e9fe926cb5b995a46dc9fb4ccd6`  
		Last Modified: Sat, 15 Sep 2018 19:42:55 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
