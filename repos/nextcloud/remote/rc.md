## `nextcloud:rc`

```console
$ docker pull nextcloud@sha256:8a52b5c305c2fdd0b284648a141a195a4fddc86f278ece9c7293a5eb48ceb516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `nextcloud:rc` - linux; amd64

```console
$ docker pull nextcloud@sha256:06ce09358418d75c18ba60bb21b0a2616bea17bc7a0974c14d930ed31c12cd0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189622845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481334fe2b013b693e35ff752d271b19e8a3b5100250e5b02ab5cfc83a575841`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:59:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 26 Jun 2018 23:59:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 00:00:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:00:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 00:00:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 00:05:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:05:22 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 00:05:22 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 00:05:23 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 00:05:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 00:05:25 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 00:05:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 00:05:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 00:05:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 00:05:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 00:05:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 00:05:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 00:21:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 06 Jul 2018 16:49:07 GMT
ENV PHP_VERSION=7.1.19
# Fri, 06 Jul 2018 16:49:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.19.tar.xz.asc/from/this/mirror
# Fri, 06 Jul 2018 16:49:08 GMT
ENV PHP_SHA256=7cab88f269b90a8a38dbcccf3ec0d5c6eba86122431a53eaa94405bbb60370a8 PHP_MD5=
# Fri, 06 Jul 2018 16:49:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Jul 2018 16:49:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Jul 2018 16:52:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 06 Jul 2018 16:52:12 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 06 Jul 2018 16:52:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 06 Jul 2018 16:52:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 06 Jul 2018 16:52:13 GMT
WORKDIR /var/www/html
# Fri, 06 Jul 2018 16:52:13 GMT
EXPOSE 80/tcp
# Fri, 06 Jul 2018 16:52:13 GMT
CMD ["apache2-foreground"]
# Fri, 06 Jul 2018 21:27:19 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Mon, 16 Jul 2018 21:28:13 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.12;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Mon, 16 Jul 2018 21:28:14 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Mon, 16 Jul 2018 21:28:14 GMT
VOLUME [/var/www/html]
# Mon, 16 Jul 2018 21:28:15 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Mon, 16 Jul 2018 21:45:05 GMT
ENV NEXTCLOUD_VERSION=13.0.5RC2
# Mon, 16 Jul 2018 21:45:36 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Mon, 16 Jul 2018 21:45:37 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Mon, 16 Jul 2018 21:45:38 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Mon, 16 Jul 2018 21:45:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Jul 2018 21:45:38 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba6c1ec1bb762cc41233ccdd9f368a68c6e720650e0c62fc9140cf5e288252e`  
		Last Modified: Wed, 27 Jun 2018 02:04:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c400495d2ea63d2298b85f3d738e979e2114f2d6ed057965a74bc4f1a78ed4`  
		Last Modified: Wed, 27 Jun 2018 02:05:24 GMT  
		Size: 67.5 MB (67457995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47082fd94ae91eb73b6d50cdb7ea5f4ea84e0ae717e18af7ce37a85f7698b4c0`  
		Last Modified: Wed, 27 Jun 2018 02:04:55 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1399ce8b37aeb16fc522d82dbac239fa7ae31946817990054c84ea0fceb3e7`  
		Last Modified: Wed, 27 Jun 2018 02:08:14 GMT  
		Size: 17.1 MB (17128047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9055cd97604977bf7f8d1d9347cb5c805979262a2cef7d90483838343804723`  
		Last Modified: Wed, 27 Jun 2018 02:08:07 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc42f043a066bfd5a0d0806f9518ef5933d2a2d58cfe705e5ecfd4ae8fc91f3`  
		Last Modified: Wed, 27 Jun 2018 02:08:05 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718b9cd7325a93a897daaf45bff4cb734dbcbde7e589de6f06ea7c6123dee3cb`  
		Last Modified: Wed, 27 Jun 2018 02:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b97ac10aedc3770f6340b2d7e13df52f4adb9a6eeb25b45834492600726ddd`  
		Last Modified: Wed, 27 Jun 2018 02:08:04 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fb3659ad99f0aa90320d38c287d1167ffe7bc1dc2b723e3bef1b7c4b0d4aa8`  
		Last Modified: Fri, 06 Jul 2018 18:18:18 GMT  
		Size: 12.6 MB (12563934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05e8914f40277cca8441a16377fb317b5f0e336ea52bd7493cf51f7824cfb92`  
		Last Modified: Fri, 06 Jul 2018 18:18:17 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f749ad77097b2e19765cf1100682b41ad311b34678e7e5cb5fa81768a903e12b`  
		Last Modified: Fri, 06 Jul 2018 18:18:22 GMT  
		Size: 14.2 MB (14186656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e81aa25fc08663f6b2fef7da4f65eb76721150a9391074c149a867f776f851`  
		Last Modified: Fri, 06 Jul 2018 18:18:16 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ac322e0eae16f1fde2261e953effaf64d334065f240afe11e3b0b229d9a18b`  
		Last Modified: Fri, 06 Jul 2018 18:18:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84988123c159ed98ecec12bde80b69955b47977846f2d0193bdcdc0826747e4`  
		Last Modified: Fri, 06 Jul 2018 21:46:26 GMT  
		Size: 1.6 MB (1611220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53795a4dc43a9353f7a1e71d8af0b716643a331dd9536be3248b0cbf98937f`  
		Last Modified: Mon, 16 Jul 2018 21:47:45 GMT  
		Size: 4.2 MB (4244016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b831a05256f571c4e0d4bed52b3e1c8008241a7b04e8d04a70365f9e387673`  
		Last Modified: Mon, 16 Jul 2018 21:47:40 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e1c77f1329bc9a86f3d73d65a33c4956716805c9394552fc89e1bd6dcaa5ee`  
		Last Modified: Mon, 16 Jul 2018 21:47:40 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ad06f8ca2304d4b4b4d819f1001d5f96617b4d65c2b65c2678db457d8e5cce`  
		Last Modified: Mon, 16 Jul 2018 22:04:55 GMT  
		Size: 49.9 MB (49924758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae057092b373ee5f04717d7a4ac4115ab9d790c4d7a1a27fe4c252c1a02d8564`  
		Last Modified: Mon, 16 Jul 2018 22:04:35 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f465de89ba90e3b94cac59a498692e7cca2cf56a6ee8da86d5137c5f8b42265`  
		Last Modified: Mon, 16 Jul 2018 22:04:35 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:rc` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:c84839f87e82f7ae7419a89b87f0856769428323b391bf09bfc67c8426d0bc4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176966173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60bfb26b8555da75a020f33ccac1704bc699ae7a933f372d014150535004f9a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 27 Jun 2018 11:36:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 11:36:31 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 11:36:32 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 11:36:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 11:36:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 11:36:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 11:36:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 11:36:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 11:36:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 11:36:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 11:36:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 11:51:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 28 Jun 2018 09:08:56 GMT
ENV PHP_VERSION=7.1.19
# Thu, 28 Jun 2018 09:08:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.19.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 09:08:56 GMT
ENV PHP_SHA256=7cab88f269b90a8a38dbcccf3ec0d5c6eba86122431a53eaa94405bbb60370a8 PHP_MD5=
# Thu, 28 Jun 2018 09:09:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 09:09:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:11:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 09:11:42 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:11:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 09:11:43 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:11:44 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 09:11:44 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 09:11:44 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 10:04:32 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 17 Jul 2018 09:11:04 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.12;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:11:05 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 17 Jul 2018 09:11:05 GMT
VOLUME [/var/www/html]
# Tue, 17 Jul 2018 09:11:06 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Tue, 17 Jul 2018 09:21:33 GMT
ENV NEXTCLOUD_VERSION=13.0.5RC2
# Tue, 17 Jul 2018 09:22:08 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:22:09 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Tue, 17 Jul 2018 09:22:10 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 17 Jul 2018 09:22:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 09:22:11 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5ef61e35a546ec6829e123abafe5c552c1e316c1f904a318de9a5c9734070bdf`  
		Last Modified: Wed, 27 Jun 2018 13:32:08 GMT  
		Size: 16.7 MB (16650325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8d278ee750d248c23337b2623b65d90cbd8685cdea5ad4a064b4806a36e644`  
		Last Modified: Wed, 27 Jun 2018 13:32:01 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4817874c27e63e03324a22a1e5c3b801e73267e87709aba00f48ce7ede8d47d`  
		Last Modified: Wed, 27 Jun 2018 13:32:00 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774868f66316869f4bcfa0c697add0573a3038089a65bf00a1ed1abb227daa7`  
		Last Modified: Wed, 27 Jun 2018 13:32:00 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685bbea519a34be740054850964d60cd9cab20623db09f00636d90007d46680`  
		Last Modified: Wed, 27 Jun 2018 13:31:59 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd9a0770c1ca35d98072ec051761922d2685d9f373c2044dab4969d17e6be0d`  
		Last Modified: Thu, 28 Jun 2018 09:45:34 GMT  
		Size: 12.6 MB (12562018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ea8f379d3f80ac3c199720374c102db9f8a2e37b9bb9f61401ef61d9b25842`  
		Last Modified: Thu, 28 Jun 2018 09:45:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0284da34dca3cea70d799a9fa6c89a4b85724a43dfb180e2cb4a8c84c26a6c40`  
		Last Modified: Thu, 28 Jun 2018 09:45:39 GMT  
		Size: 13.5 MB (13518938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c40ff2cfd5ef3c395e3564511a4856c8ca76840690f811f1e01464d3ccad385`  
		Last Modified: Thu, 28 Jun 2018 09:45:33 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a65ea5cf36d35c7eabf0930773ee673a303cea9033107914ce1d75c4c240185`  
		Last Modified: Thu, 28 Jun 2018 09:45:33 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9839f9ea2362c12c7fbae1d52b4f97b3d4795ed29716c773ab7941a31c4187b9`  
		Last Modified: Thu, 28 Jun 2018 10:17:45 GMT  
		Size: 1.6 MB (1581444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4deadfeff66611903b224768677496c88d922fbe6844b77b888640c2803df8`  
		Last Modified: Tue, 17 Jul 2018 09:23:31 GMT  
		Size: 4.1 MB (4066197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932986f95079f1862cf9808afd9313f8db19685d854cf765486389a5380def2a`  
		Last Modified: Tue, 17 Jul 2018 09:23:28 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce4ba2aaa8b55f5953860a6ebb9c12e262c7c831d12d972e85770dbb186248`  
		Last Modified: Tue, 17 Jul 2018 09:23:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa3ac5ab2cfdd96a8e55648265c315d96ff11e84904eaa52ba7b565ad5b2814`  
		Last Modified: Tue, 17 Jul 2018 09:33:21 GMT  
		Size: 49.9 MB (49922118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ae7ead39a436d5bfd296f859bd15f9dfddbb79334422cb72dcb88add5bdac1`  
		Last Modified: Tue, 17 Jul 2018 09:33:02 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf315ee5fc54545adacf62a6128351218619a25973fc105ea9e2071b1174ae2`  
		Last Modified: Tue, 17 Jul 2018 09:33:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
