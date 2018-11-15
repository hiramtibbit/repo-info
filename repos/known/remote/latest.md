## `known:latest`

```console
$ docker pull known@sha256:45eee06e17302b6fefdf0c7440e691abfd5c8f2a6728b19bcf04b2b8fa6f8f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `known:latest` - linux; amd64

```console
$ docker pull known@sha256:5e1679706add9fef7bc3cbbd437d365d6aa4fa19902468bad914edf2a5783218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172984826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12fe573c76eb66def27744c70a52cea77bc994f304220c94f5da681fbd05213`
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
# Thu, 15 Nov 2018 02:15:59 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Thu, 15 Nov 2018 02:15:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 02:16:00 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 02:16:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 15 Nov 2018 02:16:01 GMT
EXPOSE 9000/tcp
# Thu, 15 Nov 2018 02:16:01 GMT
CMD ["php-fpm"]
# Thu, 15 Nov 2018 03:49:31 GMT
LABEL maintainer=hello@withknown.com
# Thu, 15 Nov 2018 03:51:31 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Thu, 15 Nov 2018 03:51:32 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Nov 2018 03:51:42 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Thu, 15 Nov 2018 03:51:42 GMT
ENV KNOWN_VERSION=0.9.9
# Thu, 15 Nov 2018 03:51:42 GMT
VOLUME [/var/www/html]
# Thu, 15 Nov 2018 03:51:56 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Thu, 15 Nov 2018 03:51:57 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Thu, 15 Nov 2018 03:51:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Nov 2018 03:51:57 GMT
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
	-	`sha256:b851b1db7356bca736afb0af76ccb32b36f27978af9605de89244347837e9d90`  
		Last Modified: Thu, 15 Nov 2018 03:06:12 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf6513169c44acb8cc3ae8724c91cc626f4d37c1c20533b09869330e2d55a6c`  
		Last Modified: Thu, 15 Nov 2018 03:06:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4053d4f682132b3192ec0daae3bda446f0b999a85caa33dda40e6399d1d53204`  
		Last Modified: Thu, 15 Nov 2018 03:06:13 GMT  
		Size: 7.7 KB (7718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3a629e11db99d5e1d2823ce28132817ffc9825c8649ac63e2acca22c9b3661`  
		Last Modified: Thu, 15 Nov 2018 03:52:23 GMT  
		Size: 24.1 MB (24060584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e73467ae7d23be004d273706798e9c54ffb106368bcfd762b28cec1274dfb75`  
		Last Modified: Thu, 15 Nov 2018 03:52:18 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b8bff8baaa98690eb8c8a9bb4b5edb896e283e134fb604db08f046d0d05f03`  
		Last Modified: Thu, 15 Nov 2018 03:52:18 GMT  
		Size: 445.2 KB (445160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0538ea112ad04fa8c6b4293713f33544fb00decd2cce54f64e7bed8a134ddcf3`  
		Last Modified: Thu, 15 Nov 2018 03:52:22 GMT  
		Size: 22.7 MB (22724223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d786d33fc99ff73df43ef5cbb8e0972d6fe763d30168153d25ac37444814ddd0`  
		Last Modified: Thu, 15 Nov 2018 03:52:18 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `known:latest` - linux; arm64 variant v8

```console
$ docker pull known@sha256:e7de8ba15428342d19e1e7c1ecaf202deb74535bc8ad64dad944db9b130c171d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158659340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34f1d4a85acf5531cfe411ad4121cb6c5fd03afd3ed82c59bf2fe9f29ce37d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:57:03 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 16 Oct 2018 09:57:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:57:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:57:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 14:44:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 14:44:05 GMT
ENV PHP_VERSION=5.6.38
# Tue, 16 Oct 2018 14:44:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 14:44:06 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Tue, 16 Oct 2018 14:44:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 14:44:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:52:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:52:18 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:52:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:52:20 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:52:23 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 16 Oct 2018 14:52:24 GMT
EXPOSE 9000/tcp
# Tue, 16 Oct 2018 14:52:25 GMT
CMD ["php-fpm"]
# Wed, 17 Oct 2018 05:43:22 GMT
LABEL maintainer=hello@withknown.com
# Wed, 17 Oct 2018 05:48:00 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends mysql-client  && savedAptMark="$(apt-mark showmanual)"  && apt-get install -y --no-install-recommends       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng-dev       libxml2-dev  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mcrypt opcache pdo_mysql zip json xmlrpc  && apt-mark auto '.*' > /dev/null  && apt-mark manual $savedAptMark  && ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so     | awk '/=>/ { print $3 }'     | sort -u     | xargs -r dpkg-query -S     | cut -d: -f1     | sort -u     | xargs -rt apt-mark manual  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false  && rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 05:48:02 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 05:48:23 GMT
RUN pecl install APCu-4.0.11  && docker-php-ext-enable apcu
# Wed, 17 Oct 2018 05:48:24 GMT
ENV KNOWN_VERSION=0.9.9
# Wed, 17 Oct 2018 05:48:25 GMT
VOLUME [/var/www/html]
# Wed, 17 Oct 2018 05:50:02 GMT
RUN fetchDeps="     gnupg     dirmngr   "  && apt-get update  && apt-get install -y --no-install-recommends $fetchDeps  && curl -o known.tgz -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz  && curl -o known.tgz.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.tgz.sig  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92 7516 052D B5AC 742E 3B47"  && gpg --batch --verify known.tgz.sig known.tgz  && mkdir /usr/src/known  && tar -xf known.tgz -C /usr/src/known  && rm -r "$GNUPGHOME" known.tgz*  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps  && rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 05:50:04 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Wed, 17 Oct 2018 05:50:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 05:50:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748780059b52d771707f69fe3f7f89318a81c6996e9a3154e35dc1a76e04733b`  
		Last Modified: Tue, 16 Oct 2018 15:49:33 GMT  
		Size: 12.8 MB (12793116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f29417560983ce2e6796086e8758a961f1c8ffad179e5c89640c934f8426b1d`  
		Last Modified: Tue, 16 Oct 2018 15:49:29 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664c7a0b0246a6069d4628ceaae13400c2504806d62df0147772ee5e0ca490ef`  
		Last Modified: Tue, 16 Oct 2018 15:49:37 GMT  
		Size: 22.3 MB (22261607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913fb2289fba48908ce78663a57903e11cdbbd65ef61aaf9e9f2208dd7b11899`  
		Last Modified: Tue, 16 Oct 2018 15:49:29 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3555ef8edc7be1191c56a8aa0baae7f6130d19ac00c66e694de84ceb9ca9b08`  
		Last Modified: Tue, 16 Oct 2018 15:49:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2b395afbaaa524ef73d990ad7e912a9a1d897a0f373b44d76594304cb0eda`  
		Last Modified: Tue, 16 Oct 2018 15:49:29 GMT  
		Size: 7.7 KB (7710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4179d2a0b6231a61ceaa43fae31a76b504700527a2ecb066da0541483537dd`  
		Last Modified: Wed, 17 Oct 2018 05:50:31 GMT  
		Size: 22.5 MB (22503643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c527daf92c840f8c4de81ffa1e2d1b72aa05375ff4e502f96b8d1c47c74250e1`  
		Last Modified: Wed, 17 Oct 2018 05:50:22 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86edbd090a70f0ab8f300745269ad3b246eb24b6fda931f3b6bfa8e827a10005`  
		Last Modified: Wed, 17 Oct 2018 05:50:22 GMT  
		Size: 438.1 KB (438105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eef6eae6484406cd7a7b79e7387092aff99734932f9292a9f4686c91afc4f3f`  
		Last Modified: Wed, 17 Oct 2018 05:50:30 GMT  
		Size: 22.7 MB (22722562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9f5b9acef373a4fdd5301d07b9139f7fd274ad79c6ef8f7148712984e326d3`  
		Last Modified: Wed, 17 Oct 2018 05:50:25 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
