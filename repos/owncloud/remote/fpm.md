## `owncloud:fpm`

```console
$ docker pull owncloud@sha256:c4281e41ff8c88d28f5f980158fc33a719635a7452cdc3a518531946d7f69de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `owncloud:fpm` - linux; amd64

```console
$ docker pull owncloud@sha256:ba4fe69d077a0c483b75e7311d5e2807c0428cba6ce83991a69471e806948020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (239976707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc44aba6efc53f6b6f8520ee5614a5401be4db5e340d21f36ed3a67fd8118116`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 00:13:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 17 Feb 2018 00:13:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 17 Feb 2018 00:14:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 17 Feb 2018 00:14:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 17 Feb 2018 00:14:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 17 Feb 2018 00:49:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 17 Feb 2018 00:49:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 17 Feb 2018 00:49:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 17 Feb 2018 00:49:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 17 Feb 2018 02:07:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 05 Mar 2018 22:51:40 GMT
ENV PHP_VERSION=7.0.28
# Mon, 05 Mar 2018 22:51:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.28.tar.xz.asc/from/this/mirror
# Mon, 05 Mar 2018 22:51:40 GMT
ENV PHP_SHA256=e738ffce2c30bc0e84be9446af86bef0a0607d321f1a3d04bbfe2402fb5f6de0 PHP_MD5=
# Mon, 05 Mar 2018 22:52:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 05 Mar 2018 22:52:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:55:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 05 Mar 2018 22:55:55 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:55:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 05 Mar 2018 22:55:55 GMT
WORKDIR /var/www/html
# Mon, 05 Mar 2018 22:55:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 05 Mar 2018 22:55:56 GMT
EXPOSE 9000/tcp
# Mon, 05 Mar 2018 22:55:57 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 05:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 05:36:30 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 06 Mar 2018 05:36:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 06 Mar 2018 05:36:59 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 06 Mar 2018 05:37:00 GMT
ENV OWNCLOUD_VERSION=10.0.7
# Mon, 12 Mar 2018 18:06:21 GMT
ENV OWNCLOUD_SHA256=7c822aa163182391ae3213a5465151d7cc7dd0990666315da0d8e118269d0fb0
# Mon, 12 Mar 2018 18:06:21 GMT
VOLUME [/var/www/html]
# Mon, 12 Mar 2018 18:06:33 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Mon, 12 Mar 2018 18:06:34 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Mon, 12 Mar 2018 18:06:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 18:06:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68183217183fd3c036888ae07d87a7644d4bc95f2834573a85d1438a71954c14`  
		Last Modified: Sat, 17 Feb 2018 04:49:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf543bebf498c198aa11a3182defa1ca2755c23cf53df04d822d68fe74e7c09`  
		Last Modified: Sat, 17 Feb 2018 04:50:16 GMT  
		Size: 80.2 MB (80245806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4009289aa349a9afbbb2f2200dfebd98034075c5f55c4bf22190fd4c3428f4c2`  
		Last Modified: Sat, 17 Feb 2018 04:49:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07a78bb96a9c8f571f5b145be5c9749ed53006017c28eb6af818b0db52c20ae`  
		Last Modified: Tue, 06 Mar 2018 00:25:48 GMT  
		Size: 12.3 MB (12252275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543d97c7e3b993f5e6e864794309a9d31c1264d3a19d5c908739d836f25aa631`  
		Last Modified: Tue, 06 Mar 2018 00:25:45 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e156dbb9bda84422f68ba7c2b61154c5ffb2c211fccd4ad548b981b647083`  
		Last Modified: Tue, 06 Mar 2018 00:25:50 GMT  
		Size: 14.5 MB (14525063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa94666a471f03a6d6cd334ec50f53baf6f7528bf1cc95d618b0385dddfeb83`  
		Last Modified: Tue, 06 Mar 2018 00:25:45 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ee37f84d2868538a752d9edbd87ee843bec76c129314fa9a264d6eba5ce913`  
		Last Modified: Tue, 06 Mar 2018 00:25:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035095e7363e07686dfa548d207aaed3430eb29941dd1033488b8025ea6a8372`  
		Last Modified: Tue, 06 Mar 2018 00:25:45 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8244a4e316d97fae82f5011c0919fb80be11059125c113bdfc87ee45ef3df7d7`  
		Last Modified: Tue, 06 Mar 2018 05:48:23 GMT  
		Size: 34.3 MB (34323641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fa883ab1a53d60d3a17bc3520e3c18c9c4642b2ec9a854368107905761e051`  
		Last Modified: Tue, 06 Mar 2018 05:48:16 GMT  
		Size: 1.8 MB (1828732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6fc5ebfbc8fb3a828824554d06c7f38f8c20ac138edc4c4129ae825042ef90a`  
		Last Modified: Tue, 06 Mar 2018 05:48:15 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab0a0d33c75b4a830ab00c088b00d568ef8ace7d7f30af69aa3bc67015d420`  
		Last Modified: Tue, 06 Mar 2018 05:48:16 GMT  
		Size: 1.3 MB (1328114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14499aa7a6f11a0afd0e8e64a517794fd5acd7fe4c2807a2aebeae19272ef12`  
		Last Modified: Mon, 12 Mar 2018 18:10:48 GMT  
		Size: 42.9 MB (42853201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12cb6c163b5ac2a4aa20af90a4914a5ec381130a0160d443d9334f8d81be64c`  
		Last Modified: Mon, 12 Mar 2018 18:10:42 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:fpm` - linux; arm variant v5

```console
$ docker pull owncloud@sha256:590deff9d71c647c529f76c13325132a82f42ec86d8eb5fe81eaeefd9dc2c456
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218597647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9a34d823779705da09a6f20c8ba7bc2994f2a9531d0d8c5c740c071617725a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:52:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 22:52:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 22:53:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:53:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 22:53:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 15 Feb 2018 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 23:02:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 23:20:12 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Mar 2018 15:20:34 GMT
ENV PHP_VERSION=7.0.28
# Tue, 06 Mar 2018 15:20:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.28.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 15:20:34 GMT
ENV PHP_SHA256=e738ffce2c30bc0e84be9446af86bef0a0607d321f1a3d04bbfe2402fb5f6de0 PHP_MD5=
# Tue, 06 Mar 2018 15:21:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 15:21:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 15:24:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 15:24:37 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 15:24:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 15:24:37 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 15:24:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 15:24:38 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 15:24:38 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 16:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 16:55:45 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 06 Mar 2018 16:55:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 06 Mar 2018 16:56:36 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 06 Mar 2018 16:56:37 GMT
ENV OWNCLOUD_VERSION=10.0.7
# Tue, 13 Mar 2018 05:18:14 GMT
ENV OWNCLOUD_SHA256=7c822aa163182391ae3213a5465151d7cc7dd0990666315da0d8e118269d0fb0
# Tue, 13 Mar 2018 05:18:14 GMT
VOLUME [/var/www/html]
# Tue, 13 Mar 2018 05:18:33 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 13 Mar 2018 05:18:34 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 13 Mar 2018 05:18:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 05:18:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3578d1788a426771b3d546f87fa16e4dc68993bb08d07182ee6b82e7ff2160`  
		Last Modified: Thu, 15 Feb 2018 23:51:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f43bdf794581fff8cd4c38d34a0175b9c43d2974eeeebaba6700b4bea76c6c8`  
		Last Modified: Thu, 15 Feb 2018 23:51:43 GMT  
		Size: 61.4 MB (61428567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb888e4227beada3ac449871b89189f005b1306a8782cd5ad19d6b1c670d9370`  
		Last Modified: Thu, 15 Feb 2018 23:51:24 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19771a33df9ab1f9a5d930857dd43a5c4cccda1d6d0868d79c8e13e440e9bcb0`  
		Last Modified: Tue, 06 Mar 2018 15:56:50 GMT  
		Size: 12.3 MB (12250924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e6424268762722d5b4af359474f8ebd53ae84e5ec16b6a2645bfca6a1bddce`  
		Last Modified: Tue, 06 Mar 2018 15:56:46 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b249b527da39018a21a64e8d9f1d4e690da49fd122a873205ded65e312808362`  
		Last Modified: Tue, 06 Mar 2018 15:56:50 GMT  
		Size: 13.8 MB (13778777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba92a16645e0e9e2f4d2c97cd8bd95d1123a7c617942662c045daaf1ef2b2de`  
		Last Modified: Tue, 06 Mar 2018 15:56:46 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dee1c5d5e55f52bda9cb089ba7ad844198705f0286465094d3e480a7ae8ec9`  
		Last Modified: Tue, 06 Mar 2018 15:56:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9226083933a859c3f4dcc5974ab9e762ea8975cc6a85a61cf1fe7429730e4131`  
		Last Modified: Tue, 06 Mar 2018 15:56:46 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8d5e08712c49b2bbbdf16ecde4729a69a7f199e1a3fa85a08c1519b7c163ab`  
		Last Modified: Tue, 06 Mar 2018 17:01:17 GMT  
		Size: 34.2 MB (34243365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2f6624aa45840518b58433603151b31905b00f4494205c05e9c0fa0f5ee85a`  
		Last Modified: Tue, 06 Mar 2018 17:01:07 GMT  
		Size: 1.8 MB (1760293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd57b86e9eef029c1cd8b251c266b988d855a2b028d932bfe962fe8b410706af`  
		Last Modified: Tue, 06 Mar 2018 17:01:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ba49e1a70afcd88ec1cc0bef491c4d5ae86f08c0557346be13bb5e99088a82`  
		Last Modified: Tue, 06 Mar 2018 17:01:06 GMT  
		Size: 1.4 MB (1381236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df6e33e6f7a3a8d8710007d42f968142882211d4b686c34f415ecb6ea0daf8`  
		Last Modified: Tue, 13 Mar 2018 05:21:35 GMT  
		Size: 42.9 MB (42853223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f30cdab90dd9491e5d194cb21ad6e652f73870f4b9b517d568aed94aa49a3`  
		Last Modified: Tue, 13 Mar 2018 05:21:22 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:fpm` - linux; arm variant v7

```console
$ docker pull owncloud@sha256:03b9b904dede44df2ab95dcd10b5ca924d5353a1563382438160a26d1eca5f74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214352894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d2e2e2aef0a51e90651053564c9b6ebe50223bf3f17df492d76de845324ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:00:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 15:00:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 15:01:09 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 15:01:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 15:09:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 15 Feb 2018 15:09:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 15:09:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 15:09:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 15:27:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Mar 2018 13:22:52 GMT
ENV PHP_VERSION=7.0.28
# Tue, 06 Mar 2018 13:22:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.28.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 13:22:52 GMT
ENV PHP_SHA256=e738ffce2c30bc0e84be9446af86bef0a0607d321f1a3d04bbfe2402fb5f6de0 PHP_MD5=
# Tue, 06 Mar 2018 13:23:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 13:23:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:26:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 13:26:41 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:26:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 13:26:41 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 13:26:42 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 13:26:42 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 13:26:43 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 14:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 14:24:17 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 06 Mar 2018 14:24:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 06 Mar 2018 14:25:05 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 06 Mar 2018 14:25:05 GMT
ENV OWNCLOUD_VERSION=10.0.7
# Tue, 13 Mar 2018 05:26:20 GMT
ENV OWNCLOUD_SHA256=7c822aa163182391ae3213a5465151d7cc7dd0990666315da0d8e118269d0fb0
# Tue, 13 Mar 2018 05:26:21 GMT
VOLUME [/var/www/html]
# Tue, 13 Mar 2018 05:26:40 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 13 Mar 2018 05:26:41 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 13 Mar 2018 05:26:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 05:26:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9924463a0695d1c94b95c08799f8e7c8414f5a2a9eac4fb24ed408591f27ea71`  
		Last Modified: Thu, 15 Feb 2018 16:01:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9e3576d748b7b0a89106b959273e9e42ce52bf506fd404afc361493507c681`  
		Last Modified: Thu, 15 Feb 2018 16:01:53 GMT  
		Size: 61.8 MB (61828451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953402aaa2017b5cf38864c9b7f7ab3e63e0f725adbcc827a16f71445c7e5ffc`  
		Last Modified: Thu, 15 Feb 2018 16:01:33 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c59f89ab28401f522d47bc985b25bf35034a932ae8b5960ec20b92dd7a7bf40`  
		Last Modified: Tue, 06 Mar 2018 13:55:37 GMT  
		Size: 12.3 MB (12250901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c781f63b540200369832f37028363ed48f3a446ffb4366d902e43e13040263`  
		Last Modified: Tue, 06 Mar 2018 13:55:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e009dcb26019cd5c54634df9a55e1486dbd7935b1fffc759f4b80eb6711e14`  
		Last Modified: Tue, 06 Mar 2018 13:55:38 GMT  
		Size: 13.0 MB (12987768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a0b5a182101da04a3258a644aa7bba27c1d7fcb96290cf5641b49570e694ec`  
		Last Modified: Tue, 06 Mar 2018 13:55:34 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e1b2ae3cbd42adca473ae57b87fb602f2bc279c601a9ff3025dd059fc77c96`  
		Last Modified: Tue, 06 Mar 2018 13:55:35 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01acdf00f95f4c3279635b2820713a2cc126fa1a41cc39fdd36b903f23c01b9`  
		Last Modified: Tue, 06 Mar 2018 13:55:34 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be30d6110d1915770d88f15664f56ec8b1f92d49555cf30bb8f70f217097b9a`  
		Last Modified: Tue, 06 Mar 2018 14:28:37 GMT  
		Size: 32.7 MB (32656692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd5424a72d902270773f661229b03a6a9a42f881d657d64bd2fa2d72ca9b57`  
		Last Modified: Tue, 06 Mar 2018 14:28:26 GMT  
		Size: 1.7 MB (1689646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a99acc490f240ea40a4c67d3dcae2993ab078c282549ff93013e787c30054a9`  
		Last Modified: Tue, 06 Mar 2018 14:28:25 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d506f789af3ef654dea4a81480d5afe1db9c27340f73ad2149e36f0088e342d`  
		Last Modified: Tue, 06 Mar 2018 14:28:26 GMT  
		Size: 1.4 MB (1373133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8891d89122c8da38e537fc80bc790015208aa247989697871cc4460752f6e2`  
		Last Modified: Tue, 13 Mar 2018 05:30:09 GMT  
		Size: 42.9 MB (42853252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e95a7d25492bfdd52f2bcf5cb505bb32195319da74fbba54f7865c1b21b09e`  
		Last Modified: Tue, 13 Mar 2018 05:29:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:fpm` - linux; arm64 variant v8

```console
$ docker pull owncloud@sha256:d6797ab21dd113b7ea77eeba619999ee3fec4505be1b6fa7276ab1ab9d60da55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218247211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d82b36b3f316142184cbf2499d8b4f3f71b03fadbdc0896af6e85763ec8524`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 00:13:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Feb 2018 00:13:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Feb 2018 00:15:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:15:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Feb 2018 00:15:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Feb 2018 00:35:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 16 Feb 2018 00:35:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Feb 2018 00:35:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Feb 2018 00:35:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Feb 2018 01:12:36 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Mar 2018 04:47:15 GMT
ENV PHP_VERSION=7.0.28
# Tue, 06 Mar 2018 04:47:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.28.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 04:47:16 GMT
ENV PHP_SHA256=e738ffce2c30bc0e84be9446af86bef0a0607d321f1a3d04bbfe2402fb5f6de0 PHP_MD5=
# Tue, 06 Mar 2018 04:47:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 04:47:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 04:54:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 04:54:44 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 04:54:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 04:54:45 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 04:54:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 04:54:47 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 04:54:48 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 07:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 07:19:56 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 06 Mar 2018 07:19:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 06 Mar 2018 07:21:09 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 06 Mar 2018 07:21:10 GMT
ENV OWNCLOUD_VERSION=10.0.7
# Mon, 12 Mar 2018 19:18:59 GMT
ENV OWNCLOUD_SHA256=7c822aa163182391ae3213a5465151d7cc7dd0990666315da0d8e118269d0fb0
# Mon, 12 Mar 2018 19:19:00 GMT
VOLUME [/var/www/html]
# Mon, 12 Mar 2018 19:19:24 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Mon, 12 Mar 2018 19:19:25 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Mon, 12 Mar 2018 19:19:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 19:19:26 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49e9ef3cbf9baa447b668c20b563d7dec600e0fbd3b478d458a194d80154ab5`  
		Last Modified: Fri, 16 Feb 2018 02:19:51 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bee21f0931f1d32487cfeacd0321cb07d2bc7ae9ae318d01125340a31460202`  
		Last Modified: Fri, 16 Feb 2018 02:20:10 GMT  
		Size: 62.5 MB (62545544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8720a8696cb6baea119161a3931e8da4a22918f097d5739c188b6d45637b82c`  
		Last Modified: Fri, 16 Feb 2018 02:19:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623ba7ebd39aa5b32ede4a221ea62c4af9debdda702bba7c96d9bd6699fa6371`  
		Last Modified: Tue, 06 Mar 2018 06:01:49 GMT  
		Size: 12.3 MB (12250618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3ffc982da06faa6706dde717920f6cb30c79d06da482053a55419d426227c`  
		Last Modified: Tue, 06 Mar 2018 06:01:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8631b754c10159e23d20e8c4a70c68be5e10505caf3b120fa4459e67a486bdb6`  
		Last Modified: Tue, 06 Mar 2018 06:01:51 GMT  
		Size: 13.5 MB (13532416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0796f0b8a9e6573d439ac9e010d3f225f94fabe8b36e8a3768fb8950a8ffa60`  
		Last Modified: Tue, 06 Mar 2018 06:01:46 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bc3212069a4e6ab46c042acafd5ea6ad62c8b679f0e632986e52bedbb4efdf`  
		Last Modified: Tue, 06 Mar 2018 06:01:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5588f35c24a00a5f14e9ec862570794aaf1a282158534b51d0e8ba9916da294a`  
		Last Modified: Tue, 06 Mar 2018 06:01:46 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaedabb5a840b41545b8922e8e7fb343907a4ae60e8a312b4f3a35975579b086`  
		Last Modified: Tue, 06 Mar 2018 07:41:41 GMT  
		Size: 34.0 MB (33990190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951cee81b22e435baeea5b15be84c5f40eac67ea64ed7cee558cdc107f2740be`  
		Last Modified: Tue, 06 Mar 2018 07:41:28 GMT  
		Size: 1.7 MB (1727865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b717183d1c286cb12404cbdaf71f174c7c353728448bf17395a0c4c6b8d9f9d`  
		Last Modified: Tue, 06 Mar 2018 07:41:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b28a32bed4cab64e63ef07e612a6aa66e714fbf6d66eb4b385895e7e255db2`  
		Last Modified: Tue, 06 Mar 2018 07:41:28 GMT  
		Size: 1.4 MB (1401911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b94330fe68227b51ae32c2c2eb403ce396ba3cb271d816a0d2a9155bd5e3abe`  
		Last Modified: Mon, 12 Mar 2018 19:24:11 GMT  
		Size: 42.9 MB (42853231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bad9c1a819a099a94673c8d5a9b00ad2f3b791441ccfdf48f22f994438a9e0`  
		Last Modified: Mon, 12 Mar 2018 19:23:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:fpm` - linux; 386

```console
$ docker pull owncloud@sha256:f1cfcbf0f18dbba12d8a5273cdf7108ca27382cc7e0bca28fc88ddc9672197dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242766024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7bbb7606859c901ee58c462c4864d2eb0533a8cb5e8163c53887dce87f9bf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 07:48:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 20 Feb 2018 07:48:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 20 Feb 2018 07:49:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 20 Feb 2018 07:49:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 20 Feb 2018 07:49:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 20 Feb 2018 08:23:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 20 Feb 2018 08:23:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 20 Feb 2018 08:23:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 20 Feb 2018 08:23:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 20 Feb 2018 09:35:46 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Mar 2018 15:39:48 GMT
ENV PHP_VERSION=7.0.28
# Tue, 06 Mar 2018 15:39:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.28.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 15:39:48 GMT
ENV PHP_SHA256=e738ffce2c30bc0e84be9446af86bef0a0607d321f1a3d04bbfe2402fb5f6de0 PHP_MD5=
# Tue, 06 Mar 2018 15:40:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 15:40:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 15:45:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 15:45:34 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 15:45:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 15:45:35 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 15:45:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 15:45:36 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 15:45:36 GMT
CMD ["php-fpm"]
# Wed, 07 Mar 2018 05:21:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 05:23:07 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Wed, 07 Mar 2018 05:23:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Mar 2018 05:23:39 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Wed, 07 Mar 2018 05:23:40 GMT
ENV OWNCLOUD_VERSION=10.0.7
# Wed, 07 Mar 2018 05:23:40 GMT
VOLUME [/var/www/html]
# Wed, 07 Mar 2018 05:23:55 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 07 Mar 2018 05:23:56 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Wed, 07 Mar 2018 05:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Mar 2018 05:23:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89df980a1d78d4953156d3a62b9e9490cee71d8851c7f60c3237a38696c26965`  
		Last Modified: Tue, 20 Feb 2018 13:12:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95a1a1b34489fafd8aabec8cb01c39bccbed437f9536087234e05bdca123697`  
		Last Modified: Tue, 20 Feb 2018 13:12:31 GMT  
		Size: 82.2 MB (82170152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8871fd90c23e492b82542dd15b576953bd71d9620799b2e9a2aad905cd987`  
		Last Modified: Tue, 20 Feb 2018 13:12:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686d7e15397ea3814ba4609b9bcfcd75439fe335beafead766a24cdbb8d29ae4`  
		Last Modified: Tue, 06 Mar 2018 21:32:55 GMT  
		Size: 12.3 MB (12252329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d91bc90521c104c2f805f8da96c24f2756ad73cad9f7cd5add300ebb9f2eae`  
		Last Modified: Tue, 06 Mar 2018 21:32:54 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de6f5b63ac43ff561cf31254ed1cfb4ee8c9703a9b3627d7b9cb80d47d614ee`  
		Last Modified: Tue, 06 Mar 2018 21:33:01 GMT  
		Size: 15.0 MB (14984925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb704a48ea035e7a04bccf7777fb173b2633d9f0522f320afb8bd6ca2535abf`  
		Last Modified: Tue, 06 Mar 2018 21:32:54 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd73dc3f8c9b4e8286a8cad718d34a53ab576b2761eeb6913755f61086aa1b02`  
		Last Modified: Tue, 06 Mar 2018 21:32:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7690edc6007993e858f5cf01aa5dcb8946bcbdb555149be50930cc96ee3ef6a`  
		Last Modified: Tue, 06 Mar 2018 21:32:54 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be75cbc5b9f8734dce40bb6f53d1821b4d7d061d8583c6e5adef426225637f6`  
		Last Modified: Wed, 07 Mar 2018 07:05:33 GMT  
		Size: 34.6 MB (34569666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ca5742bb92d7f960884c7adbc757bd2794ea650dd2fdb6b8b315f36f68258b`  
		Last Modified: Wed, 07 Mar 2018 07:05:23 GMT  
		Size: 1.9 MB (1853302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbdc4bd74abab8852e68e0731641a6d01c82a28bc00b7094a017c00c7d1cbdb`  
		Last Modified: Wed, 07 Mar 2018 07:05:22 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6152847aa6c87324c09460c3c180e02df96570c49bee5aa3d2545508c3ec4e4`  
		Last Modified: Wed, 07 Mar 2018 07:05:23 GMT  
		Size: 1.3 MB (1283111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2dd4f1c69e7f8709e19943de35b00a1b13733aca17672c9520f86aa257b9e0`  
		Last Modified: Wed, 07 Mar 2018 07:05:43 GMT  
		Size: 42.9 MB (42853241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fdb9cb7911baf4dc868659ca9374d16a0d4a54a907c2f410495fd73c85cd6d`  
		Last Modified: Wed, 07 Mar 2018 07:05:22 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:fpm` - linux; ppc64le

```console
$ docker pull owncloud@sha256:abac95fdd5ced3ecf9d82a200177930a242151dcdd961313ed9005726d18fb96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227195893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c80a2727bd4b549d990d97953ed7e58f1c27768748cdc6cb0e9ec8bfb01fcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:20:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 05:20:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 05:22:32 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 05:22:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 05:22:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 05:32:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 15 Feb 2018 05:32:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 05:32:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 05:33:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 05:55:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Mar 2018 11:08:29 GMT
ENV PHP_VERSION=7.0.28
# Tue, 06 Mar 2018 11:08:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.28.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 11:08:34 GMT
ENV PHP_SHA256=e738ffce2c30bc0e84be9446af86bef0a0607d321f1a3d04bbfe2402fb5f6de0 PHP_MD5=
# Tue, 06 Mar 2018 11:09:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 11:09:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 11:13:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 11:13:44 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 11:13:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 11:13:48 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 11:13:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 11:13:53 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 11:13:55 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 12:51:16 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 06 Mar 2018 12:51:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 06 Mar 2018 12:52:17 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 06 Mar 2018 12:52:19 GMT
ENV OWNCLOUD_VERSION=10.0.7
# Tue, 13 Mar 2018 08:21:01 GMT
ENV OWNCLOUD_SHA256=7c822aa163182391ae3213a5465151d7cc7dd0990666315da0d8e118269d0fb0
# Tue, 13 Mar 2018 08:21:03 GMT
VOLUME [/var/www/html]
# Tue, 13 Mar 2018 08:21:25 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 13 Mar 2018 08:21:27 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 13 Mar 2018 08:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 08:21:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b18160df76743482c104e0424428a95a1ef69ba2124665a354ada6adc6b5395`  
		Last Modified: Thu, 15 Feb 2018 06:40:07 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91967a08dfb8903e319b5d2f36ef7e5c0afa6ad9198ddae9fb5099fdeac8aaa5`  
		Last Modified: Thu, 15 Feb 2018 06:40:22 GMT  
		Size: 67.9 MB (67863484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4da311ba705bb75dff0a34db039a5718c0f61644ec69b4679bd2a1fda6a84cd`  
		Last Modified: Thu, 15 Feb 2018 06:40:04 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12e36db6f5ffe833c8cbc19502f3e7d49cd0a1df7cd23b92bad847d0c5943e6`  
		Last Modified: Tue, 06 Mar 2018 11:52:07 GMT  
		Size: 12.3 MB (12250918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd701c1c7b1b852d9086abb7ff1376afe944714a7b282e591439dabc0368802e`  
		Last Modified: Tue, 06 Mar 2018 11:52:03 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5460ac26e309dcd3b64eba958c081e3fe0d9836c2256307107cd76f8727134de`  
		Last Modified: Tue, 06 Mar 2018 11:52:07 GMT  
		Size: 14.4 MB (14384575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0643e485f31ac63839f73f345f979850999376727f246f3132d73f40dd0bdf7`  
		Last Modified: Tue, 06 Mar 2018 11:52:03 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3139782176471e6c897483cbccf7a13ad8158ca2611d672390bf6de89f59deaa`  
		Last Modified: Tue, 06 Mar 2018 11:52:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3417d5f2670dbd03c72a56de9cbe4455da5a6aabea3ea3983c4f4dfa5bba3a68`  
		Last Modified: Tue, 06 Mar 2018 11:52:03 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458462058df8df71208c59f4606b8ebb7a31036e7a28d7ce0be1e90b1f0a962d`  
		Last Modified: Tue, 06 Mar 2018 12:56:57 GMT  
		Size: 34.8 MB (34762398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b7cdec2f15e01531e9943dce01da9e2b1eeebe4810941eef19aaebbb2e93e7`  
		Last Modified: Tue, 06 Mar 2018 12:56:44 GMT  
		Size: 1.8 MB (1829144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6214480a1ff3cde9803902bafff1088cc288a6fa92d4c44c50d3b365615c1754`  
		Last Modified: Tue, 06 Mar 2018 12:56:43 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c773139757d5a75519d21e243f49233906a0eb1c3032350fcdfe56d3b77e8140`  
		Last Modified: Tue, 06 Mar 2018 12:56:44 GMT  
		Size: 1.4 MB (1423403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74465c39eaa7658c66be843f6dce58f07eb54b92df6548c494a6b86b3ab5cc7`  
		Last Modified: Tue, 13 Mar 2018 08:24:16 GMT  
		Size: 42.9 MB (42853246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da836a12900c6e01b18e9b45e204f0c4927538335372e1c20d40d175da0db24c`  
		Last Modified: Tue, 13 Mar 2018 08:24:06 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:fpm` - linux; s390x

```console
$ docker pull owncloud@sha256:ad0903730f7925ab97929180c967469945ce8bfa72aa0a5d12a69aec5be4ec01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.8 MB (222824957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830a24484c4bc4d7d726ab72ff0eed27ee4db4142986eac80e28291432a57946`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:20:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 07:20:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 07:20:58 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:20:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 07:20:58 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 07:27:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 15 Feb 2018 07:27:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 07:27:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 07:27:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 07:40:43 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Mar 2018 18:40:41 GMT
ENV PHP_VERSION=7.0.28
# Tue, 06 Mar 2018 18:40:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.28.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 18:40:41 GMT
ENV PHP_SHA256=e738ffce2c30bc0e84be9446af86bef0a0607d321f1a3d04bbfe2402fb5f6de0 PHP_MD5=
# Tue, 06 Mar 2018 18:40:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 18:40:56 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 18:43:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 18:43:55 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 18:43:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 18:43:55 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 18:43:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 18:43:56 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 18:43:56 GMT
CMD ["php-fpm"]
# Tue, 06 Mar 2018 19:33:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 19:34:51 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 06 Mar 2018 19:34:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 06 Mar 2018 19:35:15 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 06 Mar 2018 19:35:15 GMT
ENV OWNCLOUD_VERSION=10.0.7
# Tue, 13 Mar 2018 16:02:48 GMT
ENV OWNCLOUD_SHA256=7c822aa163182391ae3213a5465151d7cc7dd0990666315da0d8e118269d0fb0
# Tue, 13 Mar 2018 16:02:48 GMT
VOLUME [/var/www/html]
# Tue, 13 Mar 2018 16:02:58 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 13 Mar 2018 16:02:58 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 13 Mar 2018 16:02:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 16:02:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96005eba8a61ab393ddfeb5b2e0b93b1de59d2966ce4de5f11fb615932845dfd`  
		Last Modified: Thu, 15 Feb 2018 08:00:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d923a0cf59f25f60f52e4beeb8d299d0eaf78d0bbd936a2a4919e7a582422e59`  
		Last Modified: Thu, 15 Feb 2018 08:00:39 GMT  
		Size: 61.8 MB (61798119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50f7a8712f563bbb8850e19e2f52a9046bc26aef8df4c7036564de9d93ebe59`  
		Last Modified: Thu, 15 Feb 2018 08:00:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6f96d12a0c73ca716d93284b5bafdc79f9d939cd86d64f664e360a9d111c65`  
		Last Modified: Tue, 06 Mar 2018 19:04:07 GMT  
		Size: 12.3 MB (12250381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296e60b4af5453234172f69cceacd1b8039bbff6b2077001fe4309a475c8d6b7`  
		Last Modified: Tue, 06 Mar 2018 19:04:05 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7894842a6dade767c2d5b506688d2be897ae16b85a246305a794448e5b805cdf`  
		Last Modified: Tue, 06 Mar 2018 19:04:07 GMT  
		Size: 14.8 MB (14812778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210c4f4e56d6a192061633912e7b8dc8cf39b2fcc14fb50ddd78fd9fd8439c46`  
		Last Modified: Tue, 06 Mar 2018 19:04:04 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3282677a496e2f67dc299e46401eed9ce0811ddd5e1c9fabad206232215d9c`  
		Last Modified: Tue, 06 Mar 2018 19:04:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3288e8beb94bf0e08bbe91ec01658aaea407f7353bac534c8101c3980e7e205`  
		Last Modified: Tue, 06 Mar 2018 19:04:04 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71418c500a71f94db6f0b790890c2d50bb7a227ebef370afd778452f40eab58`  
		Last Modified: Tue, 06 Mar 2018 19:38:57 GMT  
		Size: 35.0 MB (35029813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580421557127426cd7da7f5ea84f02c2bb9671e57856e2eaa9947c576bcea44f`  
		Last Modified: Tue, 06 Mar 2018 19:38:51 GMT  
		Size: 1.9 MB (1867949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462a7bbd7eefc9c7bb18300561cbaca2bb36047bdf56f7ebb1562d9014f4d584`  
		Last Modified: Tue, 06 Mar 2018 19:38:49 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1bd6d8a72f65e9a2e3fc022cfa6a1db7dde94c481882629dd09984e0f560ec`  
		Last Modified: Tue, 06 Mar 2018 19:38:49 GMT  
		Size: 1.4 MB (1406290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cf9cf86a27e73c86189a2dc5e36757d728f825c156bf9e437f33d47680ca13`  
		Last Modified: Tue, 13 Mar 2018 16:04:33 GMT  
		Size: 42.9 MB (42853217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dfcd4486d1aaeacfa5a45ca05d7323d52f5b9420d16b3646cab45f461ecf1f`  
		Last Modified: Tue, 13 Mar 2018 16:04:27 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
