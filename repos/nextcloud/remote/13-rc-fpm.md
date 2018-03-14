## `nextcloud:13-rc-fpm`

```console
$ docker pull nextcloud@sha256:2d57a15a76d8d18e45a4d93f80a7abee5d81a33e809b99b660737ef2060774d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; s390x

### `nextcloud:13-rc-fpm` - linux; amd64

```console
$ docker pull nextcloud@sha256:d5de88653b6e1b96abfa4fb3b968e9704d0bd08780a891bd72570021fb0ec485
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227556279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c728806f1cd2e799cac6d363735df3a0c2abcaa074b61150c4714a5fccfd9c1`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Sat, 17 Feb 2018 00:49:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Mon, 05 Mar 2018 22:16:26 GMT
ENV PHP_VERSION=7.1.15
# Mon, 05 Mar 2018 22:16:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Mon, 05 Mar 2018 22:16:27 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Mon, 05 Mar 2018 22:16:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 05 Mar 2018 22:16:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:20:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 05 Mar 2018 22:20:54 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:20:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 05 Mar 2018 22:20:54 GMT
WORKDIR /var/www/html
# Mon, 05 Mar 2018 22:20:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 05 Mar 2018 22:20:55 GMT
EXPOSE 9000/tcp
# Mon, 05 Mar 2018 22:20:55 GMT
CMD ["php-fpm"]
# Mon, 12 Mar 2018 23:10:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Mon, 12 Mar 2018 23:13:18 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mbstring         mcrypt         mysqli         opcache         pcntl         pdo_mysql         pdo_pgsql         pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 23:13:19 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Mon, 12 Mar 2018 23:13:19 GMT
VOLUME [/var/www/html]
# Tue, 13 Mar 2018 18:29:21 GMT
ENV NEXTCLOUD_VERSION=13.0.1RC1
# Tue, 13 Mar 2018 18:29:36 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Tue, 13 Mar 2018 18:29:37 GMT
COPY multi:73b45c06837fe3a86861d07719f0f8da8eec02d44ae2ab019288a235ae4522d2 in / 
# Tue, 13 Mar 2018 18:29:37 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Tue, 13 Mar 2018 18:29:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Mar 2018 18:29:38 GMT
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
	-	`sha256:3b8bb7646977f3d94a7c09720c6845eb1f484bf8171c33aad48e1eeb8e33f7f2`  
		Last Modified: Tue, 06 Mar 2018 00:17:32 GMT  
		Size: 12.5 MB (12535641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d172a1fe864b97a80e7d77e49de0a2efa3dbbbce373ba2161252702a6a6d51dc`  
		Last Modified: Tue, 06 Mar 2018 00:17:29 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d36ee811d27822e4d8e88dd2cd2c5adaa3103224fb2fb61bfd4b050f813e4b`  
		Last Modified: Tue, 06 Mar 2018 00:17:34 GMT  
		Size: 14.9 MB (14939672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045c6db60cc1b39f0b182dd048415dfb3444c2eb7a470b5f09b828a494d11bc4`  
		Last Modified: Tue, 06 Mar 2018 00:17:29 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca0413d5d6aa185afa9d4606f44bf7ae07f7aed160c6cd2f84b7832dfa62f66`  
		Last Modified: Tue, 06 Mar 2018 00:17:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb53bc9a64c557ddf4bb692b90c557ab61e7bf3133f9ef45f52fe0bd55ee042`  
		Last Modified: Tue, 06 Mar 2018 00:17:29 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2594cfa8fde1471de29fa79a38631856ac0415c27501d55ff213c5759608a2a`  
		Last Modified: Mon, 12 Mar 2018 23:55:52 GMT  
		Size: 1.8 MB (1837052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d181909fea4d9f99d2799bfc3dded907e23adce801b9d11ea34784eef9dd492d`  
		Last Modified: Mon, 12 Mar 2018 23:55:53 GMT  
		Size: 16.5 MB (16470841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d3481b4c8b015adff71908b2902a8be38cf4c09456486eb78b016cce356ff6`  
		Last Modified: Mon, 12 Mar 2018 23:55:50 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6c7d28c80de14c581c60712613e2fe227d22d4066912862a64ce82f5ee84f8`  
		Last Modified: Tue, 13 Mar 2018 18:55:47 GMT  
		Size: 48.9 MB (48905887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a40cebf43e984cc79a4cd15d21803fd4446f65c8a128193f0ed45c752f89b8`  
		Last Modified: Tue, 13 Mar 2018 18:55:28 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78df5527034a6e101dd8fb524f7d0f08fe7ce62de62b80316ee43957b3fc492b`  
		Last Modified: Tue, 13 Mar 2018 18:55:28 GMT  
		Size: 783.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:13-rc-fpm` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:2261c7f9bbbfccfb15ebf83ec77fcefe6d58733a9166b7db85520dc19c7595a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205838177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a835cb0c322eacb2206442f5d70bf2dad0ee7dfae4ee996af0c543147d14c4`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 15 Feb 2018 23:02:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Mar 2018 15:02:46 GMT
ENV PHP_VERSION=7.1.15
# Tue, 06 Mar 2018 15:02:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 15:02:47 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Tue, 06 Mar 2018 15:03:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 15:03:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 15:07:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 15:07:01 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 15:07:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 15:07:02 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 15:07:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 15:07:03 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 15:07:03 GMT
CMD ["php-fpm"]
# Tue, 13 Mar 2018 02:33:13 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 13 Mar 2018 02:39:42 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mbstring         mcrypt         mysqli         opcache         pcntl         pdo_mysql         pdo_pgsql         pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 02:39:43 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 13 Mar 2018 02:39:43 GMT
VOLUME [/var/www/html]
# Wed, 14 Mar 2018 02:29:01 GMT
ENV NEXTCLOUD_VERSION=13.0.1RC1
# Wed, 14 Mar 2018 02:29:22 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Wed, 14 Mar 2018 02:29:24 GMT
COPY multi:73b45c06837fe3a86861d07719f0f8da8eec02d44ae2ab019288a235ae4522d2 in / 
# Wed, 14 Mar 2018 02:29:24 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 14 Mar 2018 02:29:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 02:29:25 GMT
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
	-	`sha256:90d67c03b909ae6cb4274162d5b1881c294a0b6cc5abe8df183ac1ed2ebf1b85`  
		Last Modified: Tue, 06 Mar 2018 15:53:34 GMT  
		Size: 12.5 MB (12534225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de55b98804d8e6fd22c4666220b18db8bbfc9fa716d004a681a9c36a86fbde1`  
		Last Modified: Tue, 06 Mar 2018 15:53:32 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c67668dd6fe24e40b56dbcb55cc147222fe6a4f3bf087939f0248a48e2a235`  
		Last Modified: Tue, 06 Mar 2018 15:53:36 GMT  
		Size: 14.1 MB (14120486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0b938db7c6b8d5df9e7b0feb724d856040e9e97bb3f1b8ed1d7d2d9245913b`  
		Last Modified: Tue, 06 Mar 2018 15:53:31 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046521c496bf2c0374e9b99a01c5503e50d152f07e91e92b13211a573198aa7c`  
		Last Modified: Tue, 06 Mar 2018 15:53:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee972d6ba9491594db1a1c9e4c979fb6522332278848b073b54cd131a84eecd0`  
		Last Modified: Tue, 06 Mar 2018 15:53:32 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b4afdb7e0ff3d25109786f5106cd6d1571a907b67c62f7881e28941b4050f1`  
		Last Modified: Tue, 13 Mar 2018 02:44:25 GMT  
		Size: 1.8 MB (1776166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c003093222e77a682dfb93f66f458b026057210aa01be0bf140cad13c1143d2`  
		Last Modified: Tue, 13 Mar 2018 02:44:29 GMT  
		Size: 16.2 MB (16170087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e2211833c9fe72205fb18c9b9b82a3180c59cd2c74ad129b6e36069e57c895`  
		Last Modified: Tue, 13 Mar 2018 02:44:25 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96694a2b163f58ac20ed814c775e4883630a0f0800096310e418f0ffdfc864af`  
		Last Modified: Wed, 14 Mar 2018 02:41:55 GMT  
		Size: 48.9 MB (48905872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b898364463d98768b0e62bf947954125b66cac12095bd7f3e1ce1726de5acc87`  
		Last Modified: Wed, 14 Mar 2018 02:41:38 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac438da4db67d5d56f85d047628ccad144f00fa886a2b76a929bfaa94cd6e0`  
		Last Modified: Wed, 14 Mar 2018 02:41:38 GMT  
		Size: 787.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:13-rc-fpm` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:d757818fa7180f060b8c20bd7e9ba7fdbf4d3d2dead8d1f296cbe3cc55027e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 MB (202824683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5d9411d21d1510a08457aa76dab49b1c77147192fed1de6483a6285577d8ea`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 15 Feb 2018 15:09:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Mar 2018 13:05:45 GMT
ENV PHP_VERSION=7.1.15
# Tue, 06 Mar 2018 13:05:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 13:05:46 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Tue, 06 Mar 2018 13:06:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 13:06:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:09:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 13:09:39 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:09:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 13:09:40 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 13:09:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 13:09:41 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 13:09:41 GMT
CMD ["php-fpm"]
# Tue, 13 Mar 2018 03:15:26 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 13 Mar 2018 03:21:19 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mbstring         mcrypt         mysqli         opcache         pcntl         pdo_mysql         pdo_pgsql         pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 03:21:20 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 13 Mar 2018 03:21:20 GMT
VOLUME [/var/www/html]
# Wed, 14 Mar 2018 03:13:15 GMT
ENV NEXTCLOUD_VERSION=13.0.1RC1
# Wed, 14 Mar 2018 03:13:36 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Wed, 14 Mar 2018 03:13:37 GMT
COPY multi:73b45c06837fe3a86861d07719f0f8da8eec02d44ae2ab019288a235ae4522d2 in / 
# Wed, 14 Mar 2018 03:13:38 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 14 Mar 2018 03:13:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 03:13:39 GMT
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
	-	`sha256:25b67adaf3cf63099502867eaa46a776014769d2665046fd6caca86f5dd6bb20`  
		Last Modified: Tue, 06 Mar 2018 13:51:53 GMT  
		Size: 12.5 MB (12534187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad817b99122d8629ee935727ab94705a2b3f51dc92deffcf44f7c138e4090e34`  
		Last Modified: Tue, 06 Mar 2018 13:51:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d01ef65e700f30133d7926e84ec91ad094f1868cfd7c4e7afb753b01a6046cd`  
		Last Modified: Tue, 06 Mar 2018 13:51:54 GMT  
		Size: 13.3 MB (13318346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41a000be6d63568ba118acb6cba2dced36646255197ece8a86509643313d545`  
		Last Modified: Tue, 06 Mar 2018 13:51:51 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddac7b007b4efa9f652e9088a541350e944cf55f44efbfe93391e6499eee12d`  
		Last Modified: Tue, 06 Mar 2018 13:51:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b40696de68814b34fa9ebb04c2cc56040f1a21627b0cacab9b24868e4145b6`  
		Last Modified: Tue, 06 Mar 2018 13:51:51 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ca8ceb7c2e35cbf9d00efc2920db50ac5da8f26e3f618061b7bea6df5a7e2d`  
		Last Modified: Tue, 13 Mar 2018 03:26:16 GMT  
		Size: 1.6 MB (1640999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee439b0b676b8f0e4c532dc2f52d96a8e960a6ab6d87653cfce8a973520e618`  
		Last Modified: Tue, 13 Mar 2018 03:26:18 GMT  
		Size: 15.9 MB (15882276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8b5aa41c618c60070eea55bfe0ae9a54798175b09e3fea2bffbc7f49bcc1e3`  
		Last Modified: Tue, 13 Mar 2018 03:26:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5279a0319b2977b23b83ce5107dcbbea360fbe40af00575e57accbc020b9b57`  
		Last Modified: Wed, 14 Mar 2018 03:27:26 GMT  
		Size: 48.9 MB (48905872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365f3367c5813195d68defa0589e3187715e7c0180a1b6e791ad3643928acbcb`  
		Last Modified: Wed, 14 Mar 2018 03:27:10 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd541fca58de9806f113439c2c1bf4a9e2707b3e3d8e54054f6bcfbbcd9f383`  
		Last Modified: Wed, 14 Mar 2018 03:27:11 GMT  
		Size: 785.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:13-rc-fpm` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:3a363042336f72ac1b61efb20a66dd35c45da6295b04e294905d6d13b542e7b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (205954990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f95f4999d052610ddd18a840ae6eddcb4bc432103dd144612afcb21a2622e7d`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 16 Feb 2018 00:35:53 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Mar 2018 04:16:28 GMT
ENV PHP_VERSION=7.1.15
# Tue, 06 Mar 2018 04:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 04:16:29 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Tue, 06 Mar 2018 04:17:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 04:17:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 04:24:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 04:24:16 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 04:24:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 04:24:17 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 04:24:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 04:24:19 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 04:24:20 GMT
CMD ["php-fpm"]
# Tue, 13 Mar 2018 08:45:11 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 13 Mar 2018 08:53:09 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mbstring         mcrypt         mysqli         opcache         pcntl         pdo_mysql         pdo_pgsql         pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 08:53:10 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 13 Mar 2018 08:53:11 GMT
VOLUME [/var/www/html]
# Wed, 14 Mar 2018 08:42:10 GMT
ENV NEXTCLOUD_VERSION=13.0.1RC1
# Wed, 14 Mar 2018 08:42:39 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Wed, 14 Mar 2018 08:42:40 GMT
COPY multi:73b45c06837fe3a86861d07719f0f8da8eec02d44ae2ab019288a235ae4522d2 in / 
# Wed, 14 Mar 2018 08:42:42 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 14 Mar 2018 08:42:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:42:43 GMT
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
	-	`sha256:2cc87603874950f4ca4764ebba34817ce6333e414b254c4a90e194135af09487`  
		Last Modified: Tue, 06 Mar 2018 05:55:53 GMT  
		Size: 12.5 MB (12533757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44353ef1f00bc3447a694b498df2c93213e3547c82ac456b67f06425b85b25eb`  
		Last Modified: Tue, 06 Mar 2018 05:55:49 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440fd65e592bfcb3ab3c8c11f04cf59aa3783fbf4abeee191da98ee831b5d62`  
		Last Modified: Tue, 06 Mar 2018 05:55:54 GMT  
		Size: 13.9 MB (13916058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f794debaae999892ef29ab7711acc60140dff294a29413a96be5ffe144ed0aaa`  
		Last Modified: Tue, 06 Mar 2018 05:55:49 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f4a9489eb5b772fe09067485d0be155a0d7a139caa856e95a331223d2b23a1`  
		Last Modified: Tue, 06 Mar 2018 05:55:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b04b6ad52302774a9a0c88acb673cfaf7454d2c30075e296e71b571125765b`  
		Last Modified: Tue, 06 Mar 2018 05:55:49 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0bf6e6cb8cae0e6e7f6afee5c5905fa25ebd8e8924012b2ed2879ff34fdb43`  
		Last Modified: Tue, 13 Mar 2018 09:00:54 GMT  
		Size: 1.8 MB (1774698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d1927d8f715a3ed6451bb37ce088855b85ccd80ea4532939b5fda7643a4d60`  
		Last Modified: Tue, 13 Mar 2018 09:00:57 GMT  
		Size: 16.3 MB (16332118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f08dc6da5979ed2692f6a94f86ded5e3a7e44dde71e22352146c5218071297`  
		Last Modified: Tue, 13 Mar 2018 09:00:52 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a7ec7414ac3c5917057c1d782352ffa76adb4f41730d4ea7f3f407c5425c8c`  
		Last Modified: Wed, 14 Mar 2018 09:04:19 GMT  
		Size: 48.9 MB (48905872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543d8f7f3f19499ca675aac594ca096c591990a2c364132264bbb4096c1b345c`  
		Last Modified: Wed, 14 Mar 2018 09:04:01 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2588058f404d720b3cb82c6cb6c811c48e8c0ef9549e11f30b8e6bbecca60b4a`  
		Last Modified: Wed, 14 Mar 2018 09:04:01 GMT  
		Size: 787.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:13-rc-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:f5ca4fad1d1f34fbe5a5b8897a8cec608f38dd1288d2bfa00185fc8a7d484451
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.9 MB (209927155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bf7b862ef2c069dfc6bdd9416a42fcebde97eb1aeb3fcc2900696d52b34310`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 15 Feb 2018 07:27:27 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Mar 2018 18:28:38 GMT
ENV PHP_VERSION=7.1.15
# Tue, 06 Mar 2018 18:28:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 18:28:39 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Tue, 06 Mar 2018 18:28:55 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 18:28:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 18:31:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 18:31:40 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Tue, 06 Mar 2018 18:31:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 18:31:40 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 18:31:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 06 Mar 2018 18:31:41 GMT
EXPOSE 9000/tcp
# Tue, 06 Mar 2018 18:31:41 GMT
CMD ["php-fpm"]
# Mon, 12 Mar 2018 23:04:16 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Mon, 12 Mar 2018 23:06:55 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mbstring         mcrypt         mysqli         opcache         pcntl         pdo_mysql         pdo_pgsql         pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 23:06:55 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Mon, 12 Mar 2018 23:06:56 GMT
VOLUME [/var/www/html]
# Tue, 13 Mar 2018 23:02:56 GMT
ENV NEXTCLOUD_VERSION=13.0.1RC1
# Tue, 13 Mar 2018 23:03:07 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Tue, 13 Mar 2018 23:03:08 GMT
COPY multi:73b45c06837fe3a86861d07719f0f8da8eec02d44ae2ab019288a235ae4522d2 in / 
# Tue, 13 Mar 2018 23:03:08 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Tue, 13 Mar 2018 23:03:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Mar 2018 23:03:08 GMT
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
	-	`sha256:ac06ebdd33935353d4d194db73e5018baec7025d0ede378625fee9fdc37c1920`  
		Last Modified: Tue, 06 Mar 2018 19:02:31 GMT  
		Size: 12.5 MB (12533502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdefe61011b22ff2cbdfa82d87f0b55e795a99da16913f49344967a600d7e74d`  
		Last Modified: Tue, 06 Mar 2018 19:02:28 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b267002f215328ecf500ef0e1fb72ca53066bf39db25329e482d5c8176cef7c`  
		Last Modified: Tue, 06 Mar 2018 19:02:32 GMT  
		Size: 15.2 MB (15249082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0947f3f025b4b66a4088936292450e381442144434425f73aa5e01f0a96dee2c`  
		Last Modified: Tue, 06 Mar 2018 19:02:28 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344fb88cfc490d20a3319609901639340207fa04b79875954f455baf72ee227b`  
		Last Modified: Tue, 06 Mar 2018 19:02:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49118450d2676626b95b9f60d54ce913c90f40fdb1397ed23863fc9d4db4d660`  
		Last Modified: Tue, 06 Mar 2018 19:02:28 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57039d2b07ebbe21992c2e4c977ad2beedbfb1711eca12f4d163e1ec88c508a`  
		Last Modified: Mon, 12 Mar 2018 23:09:25 GMT  
		Size: 1.9 MB (1863382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcefd45692f34de289ce14627c813fb230a71a36ffec5cbac67f2662ae30d3`  
		Last Modified: Mon, 12 Mar 2018 23:09:28 GMT  
		Size: 16.8 MB (16769283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190d0910679f54d5c08b06fbb22ddb20553fa9d346c2c2bfa62a8c73e3474a8b`  
		Last Modified: Mon, 12 Mar 2018 23:09:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9961a49b4cfe0602498c56095ce2c2369f8e4dfaaea3f108b6d585606500faf1`  
		Last Modified: Tue, 13 Mar 2018 23:09:55 GMT  
		Size: 48.9 MB (48905877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ad07c932d1a041801bf28124ea85e6b9088abc6f6c2ae2dc525c9be4d971aa`  
		Last Modified: Tue, 13 Mar 2018 23:09:47 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824748f4c875647ed4117c1c8ea0bb429c55639ea02a3c9482accb2cb7af925e`  
		Last Modified: Tue, 13 Mar 2018 23:09:46 GMT  
		Size: 783.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
