## `php:5-fpm-jessie`

```console
$ docker pull php@sha256:70117ff561efa02ece60b97132b49c72e1ef5efe3215e417cbc96e6cb9b4f2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7

### `php:5-fpm-jessie` - linux; amd64

```console
$ docker pull php@sha256:b9f7537ca74b124e88c8429c4669aa34d11fdf290bebaed1f717ab2029c4121c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153736494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b413f007cb012421716b84034494eaf879d822dffd1142cb56c04b2e65d427e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 04:58:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 04:58:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 04:59:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 04:59:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 04:59:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 05:18:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 16 Nov 2018 05:18:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 05:18:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 05:18:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 07:45:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 10 Dec 2018 18:16:16 GMT
ENV PHP_VERSION=5.6.39
# Mon, 10 Dec 2018 18:16:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Mon, 10 Dec 2018 18:16:17 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Mon, 10 Dec 2018 18:16:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 10 Dec 2018 18:16:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Dec 2018 18:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Dec 2018 18:20:47 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Mon, 10 Dec 2018 18:20:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Dec 2018 18:20:48 GMT
WORKDIR /var/www/html
# Mon, 10 Dec 2018 18:20:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 10 Dec 2018 18:20:49 GMT
EXPOSE 9000/tcp
# Mon, 10 Dec 2018 18:20:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bafc3cb160848e8d45d4e4bd4e7fe228dbaf49e5a2607560c1d438397d44d`  
		Last Modified: Fri, 16 Nov 2018 09:11:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3b432cdf8db80c606a9206406f3fc9eddd206559325717a8b065627a1459d`  
		Last Modified: Fri, 16 Nov 2018 09:11:42 GMT  
		Size: 74.6 MB (74639906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe555ebebce5a175559aa42887a4773514713d8c9da30cd4fa0c43e757b43d97`  
		Last Modified: Fri, 16 Nov 2018 09:11:28 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cb2c472da4b5b74776b68b9c4c5238afec9f14ec2f8d61c0ead9846b4ff6f1`  
		Last Modified: Mon, 10 Dec 2018 19:48:45 GMT  
		Size: 12.8 MB (12801035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa13bdd20079c818a33f4b3763b74087eeb73182d7610e3e933102d2e3d3d283`  
		Last Modified: Mon, 10 Dec 2018 19:48:43 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8866e5bf4e74780ebd6e11b155980adc83d3113719021cedcc5dfcd27ad6c69c`  
		Last Modified: Mon, 10 Dec 2018 19:48:46 GMT  
		Size: 11.9 MB (11926771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5db38504a1c9ccca6b341d8c54d7e5d336050c36768a00084e949559993358`  
		Last Modified: Mon, 10 Dec 2018 19:48:44 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a8e7b2764649c1f79d9acb20687e3326758db37fec58ec42d9ec720e6c0ead`  
		Last Modified: Mon, 10 Dec 2018 19:48:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f277c5d58d32c9d07c9093822ed147c748a9d4fe39539956b3951b4b35802875`  
		Last Modified: Mon, 10 Dec 2018 19:48:44 GMT  
		Size: 7.7 KB (7713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-fpm-jessie` - linux; arm variant v5

```console
$ docker pull php@sha256:655a6fd8b41f5f655408082323d6592b28daa7165a4824a49b91264f1485d5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136328472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672d3b5d74113b45784d2af551e01d673b7be5e8cc1ad45d6afac651a520f27a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 16 Nov 2018 09:50:40 GMT
ADD file:51b6e570dd2584f3747b0877f1342ea36c4c8dae4b0aa0f4a114e816fde77904 in / 
# Fri, 16 Nov 2018 09:50:41 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:24:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 12:24:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 12:25:33 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:25:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 12:25:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 12:36:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 16 Nov 2018 12:36:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 12:36:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 12:36:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 13:51:54 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 12:01:45 GMT
ENV PHP_VERSION=5.6.39
# Tue, 11 Dec 2018 12:01:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 12:01:46 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Tue, 11 Dec 2018 12:02:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Dec 2018 12:02:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:06:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 12:06:16 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:06:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 12:06:16 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 12:06:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 12:06:18 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 12:06:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:28b426da5f009c6d2c8bc1993bee5601ab4126eb8a3a2698db1d96c7f612dde8`  
		Last Modified: Fri, 16 Nov 2018 10:05:38 GMT  
		Size: 52.5 MB (52544563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b85e271bb8eed21c5db450e7d94eaff76fe6188a367293ddd9cf80d96b76d45`  
		Last Modified: Fri, 16 Nov 2018 14:21:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fdf09a3874eda602f28eaf5ef66138b03fa723f04cebe212b24fe2ed2904e4`  
		Last Modified: Fri, 16 Nov 2018 14:21:34 GMT  
		Size: 59.8 MB (59795181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adfb99dd9386e176c89563c7c55342d7741dcfb41011847351feb10ad2a4661`  
		Last Modified: Fri, 16 Nov 2018 14:21:11 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85e4384b8b90810062cba8f32f179d864f9617d2ace85986a6a5d80fc963cd8`  
		Last Modified: Tue, 11 Dec 2018 12:35:56 GMT  
		Size: 12.8 MB (12799613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c574a831db885157a8afe51e692bbeff34cf5fd8dfb7d7e0bd1e70a31ef59ad8`  
		Last Modified: Tue, 11 Dec 2018 12:35:53 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210691c537ed2af5ec903c65951f57bd6243af4418ff92948fd09e71544e6ae5`  
		Last Modified: Tue, 11 Dec 2018 12:35:57 GMT  
		Size: 11.2 MB (11178082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c851759006234770c23f1557f12205cbd5f95b5c591c31144af6d9a6221289`  
		Last Modified: Tue, 11 Dec 2018 12:35:53 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ed27e2479cbdbebc756017e07cd5634afb6211a0477151f528feb0d83d91eb`  
		Last Modified: Tue, 11 Dec 2018 12:35:54 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a20884c0671f1b3967ba52a42e465b0cc09e85a49bf93fbbc0544b253bfa136`  
		Last Modified: Tue, 11 Dec 2018 12:35:53 GMT  
		Size: 7.7 KB (7742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-fpm-jessie` - linux; arm variant v7

```console
$ docker pull php@sha256:e2e2c441298dcbae312cfbd705340153ddfcc7f8ad30f2630ad1d19d21c5ccf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133943155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6f99556760fc3f326f68848ea5de5e1543f9fc5960bbb8272d80432039f584`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:03:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 15:03:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 15:04:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:04:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 15:04:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 15:16:43 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 16 Nov 2018 15:16:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 15:16:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 15:16:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 16:23:44 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 15:02:39 GMT
ENV PHP_VERSION=5.6.39
# Tue, 11 Dec 2018 15:02:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 15:02:40 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Tue, 11 Dec 2018 15:03:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Dec 2018 15:03:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 15:06:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 15:06:57 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 15:06:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 15:06:58 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 15:06:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 15:06:59 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 15:06:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b7854c1f2e732ce9eb8bb233e4199f4d8d2608d2932aacc7e765ee2fb641a`  
		Last Modified: Fri, 16 Nov 2018 16:51:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00fbdc9ab173dd3609afe281079204d5248fdb43f174612d6af3a38d532b718`  
		Last Modified: Fri, 16 Nov 2018 16:51:19 GMT  
		Size: 60.3 MB (60267047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf03a27e57f531ac2eecc47891c50a2c0d90699a6dcf336ab74c2d7e0dda6dd`  
		Last Modified: Fri, 16 Nov 2018 16:51:01 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f69428c593b3d6ba8c9561e4c298911d813e416e17513115c501116df86887`  
		Last Modified: Tue, 11 Dec 2018 15:37:28 GMT  
		Size: 12.8 MB (12799560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb7a3058a5f13b2507156711d1c3e3e2e2d0175a6b60e2027b84a97bdfa8611`  
		Last Modified: Tue, 11 Dec 2018 15:37:25 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346f52285f238710de397b82a0645803f4dea5ac0cd74460d47a4d0460467a24`  
		Last Modified: Tue, 11 Dec 2018 15:37:28 GMT  
		Size: 10.6 MB (10585941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b237868d13368cbf6ddbbcb1314c20fcaad366a89e98db42f9223075649aa499`  
		Last Modified: Tue, 11 Dec 2018 15:37:25 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbb4ee530c4494601eaaed3f1deb38600d94958ff4ea0a959d522adc492fa5a`  
		Last Modified: Tue, 11 Dec 2018 15:37:25 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c7fbd3af8e9f3c7a433f23f87115b88534f503156e42a226bf18aea097243d`  
		Last Modified: Tue, 11 Dec 2018 15:37:25 GMT  
		Size: 7.7 KB (7743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
