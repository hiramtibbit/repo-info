## `nextcloud:rc-fpm`

```console
$ docker pull nextcloud@sha256:2a6257ad590d3bcf579d654da913931f73d92945c4e548f57b84409ba84a28a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nextcloud:rc-fpm` - linux; amd64

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
