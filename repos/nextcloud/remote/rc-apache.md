## `nextcloud:rc-apache`

```console
$ docker pull nextcloud@sha256:4cb34264ed4ff155c56fa9290038a601e487b7a4ef38733a655ec536bf030e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `nextcloud:rc-apache` - linux; amd64

```console
$ docker pull nextcloud@sha256:2a42b83238e5f456f19feda90f40f051e3b04ce655018b50ea2ffa76333a33cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189938570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6031c3c042b9a593a528a9b7a6d42704ae19851b734fc8d3052fdc2be613cb34`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:50:45 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 05 Jun 2018 00:22:36 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.11;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 00:22:37 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 05 Jun 2018 00:22:37 GMT
VOLUME [/var/www/html]
# Tue, 05 Jun 2018 00:22:38 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Tue, 05 Jun 2018 00:47:50 GMT
ENV NEXTCLOUD_VERSION=13.0.3RC2
# Tue, 05 Jun 2018 00:48:12 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 00:48:12 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Tue, 05 Jun 2018 00:48:13 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 05 Jun 2018 00:48:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 00:48:14 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ee8f8138ac42870405bef0271a58e9b5473f96cf7da56eb33f33cb317194f3`  
		Last Modified: Fri, 01 Jun 2018 20:33:08 GMT  
		Size: 1.6 MB (1611306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2486d50fba512ea9596420897c34e5c1bfbd0d8898601d67570aaf4a2b30b3b`  
		Last Modified: Tue, 05 Jun 2018 00:49:45 GMT  
		Size: 4.1 MB (4064068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57dbc7113cd81232c3f5404fd96955a2ddb9c309793e028bfe7498d39be1261`  
		Last Modified: Tue, 05 Jun 2018 00:49:42 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e79b3f226dafec0d77f275780ebd1e9255bd12345fea51d8d2ef9ba47b5608`  
		Last Modified: Tue, 05 Jun 2018 00:49:42 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e951a4982ea2a02b4044f70c441079adbab2a95f0241566518479cd4e8a1cadc`  
		Last Modified: Tue, 05 Jun 2018 01:01:17 GMT  
		Size: 50.1 MB (50051987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0620ef64f7cfde731da47a50abcf493821b0e8b05eac7e839e71cfdf6a201c31`  
		Last Modified: Tue, 05 Jun 2018 01:00:59 GMT  
		Size: 1.0 KB (1016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee49353d0ef55168c54db73e0c7c305b707ba84ec4732300ecf59c09b8f956d5`  
		Last Modified: Tue, 05 Jun 2018 01:00:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:rc-apache` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:a79e39795f087b32242fb9b3d2ccf3a84fff3c36dab4a21a33bee6b165db2f6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.3 MB (177291127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7add2ab59e0653b315dd581ec220f773bca4836d649505646e81f44c9e020cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:35:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 09:35:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 09:35:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:35:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 09:35:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 09:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:40:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 09:40:05 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 09:40:06 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 09:40:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 09:40:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 09:40:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 09:40:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 08:56:06 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 08:52:57 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 08:52:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 08:52:58 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 08:53:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 08:53:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 08:55:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 08:55:49 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 08:55:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 08:55:50 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 08:55:50 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 08:55:50 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 08:55:51 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 10:01:41 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 05 Jun 2018 08:53:58 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.11;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 08:53:59 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 05 Jun 2018 08:53:59 GMT
VOLUME [/var/www/html]
# Tue, 05 Jun 2018 08:54:00 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Tue, 05 Jun 2018 09:04:23 GMT
ENV NEXTCLOUD_VERSION=13.0.3RC2
# Tue, 05 Jun 2018 09:04:58 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 09:05:00 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Tue, 05 Jun 2018 09:05:01 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 05 Jun 2018 09:05:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 09:05:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f281a3d800a8fe76433bde7ada6b5349c9ed4224b651945ceb6f50a305131d`  
		Last Modified: Sat, 28 Apr 2018 10:41:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16d3f8b6713898fb71b3128b8f86eb9a6c73cf471525583bd26de5e838ec7ea`  
		Last Modified: Sat, 28 Apr 2018 10:41:57 GMT  
		Size: 57.5 MB (57490283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5b65c14ba3c3d998f9945e981ee3e5bc15d753b8eda638724294e336730a92`  
		Last Modified: Sat, 28 Apr 2018 10:41:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b38e7d18cbf8249e01df352ef5f12d2f6456a751827d6f36eef0826fa6bea69`  
		Last Modified: Sat, 28 Apr 2018 10:43:35 GMT  
		Size: 16.7 MB (16651468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315e88309bc637763365c947f1e53e91f70e282374b06b60c4a6927248c5f861`  
		Last Modified: Sat, 28 Apr 2018 10:43:30 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cab98ea4932765a54d9c4ac9a130df4d966a89c23627f0aeb5af4e053d4c125`  
		Last Modified: Sat, 28 Apr 2018 10:43:29 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6e0887a7b2f222969c7090f7c9ad899108001ce87daa19a851739db4b5bab4`  
		Last Modified: Sat, 28 Apr 2018 10:43:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ad7366ffdc8dc66bdfe3f20139e39ec9d3d932d9c7bfc7655a7cb7371afecc`  
		Last Modified: Sat, 28 Apr 2018 10:43:29 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603167adfa37dd96ab135a4b02a6d00c3f9d7ebc052a1b5b4726fcdf29c11b60`  
		Last Modified: Thu, 31 May 2018 09:24:33 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9969715ca732a96a73c1324f26883a965b0eac3c3a35807ee4fcc39357538bda`  
		Last Modified: Thu, 31 May 2018 09:24:31 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e0d44f6246395da9fcdc645c047ae4c8e2aef3afc6b313dc2d7fda4e0eef6f`  
		Last Modified: Thu, 31 May 2018 09:24:35 GMT  
		Size: 13.9 MB (13880049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa8d80af73a1ea7b166a307efa8cda486e8e40d68c41e4f11e1641d3f5d2b18`  
		Last Modified: Thu, 31 May 2018 09:24:32 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889139a13c03a170713a723dd34c69df62db8639dd55667813885145e0d3fa8`  
		Last Modified: Thu, 31 May 2018 09:24:31 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b735d15f542d0113cd7c0dad82a183d3ba5a190ae03f7899d34ef50c296d68c`  
		Last Modified: Thu, 31 May 2018 10:15:38 GMT  
		Size: 1.6 MB (1581580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719d22d39d1ca5a083f5d697e4fa54b12150b26d16c103fde6ace788436e2149`  
		Last Modified: Tue, 05 Jun 2018 09:06:29 GMT  
		Size: 3.9 MB (3892102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83feac3e468f8e546ca96f7d6ec5afa3cfbeb23ca0eee93a2b274fc517e63e81`  
		Last Modified: Tue, 05 Jun 2018 09:06:27 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b031d1d4deb0588bc32223bcc3a7bb32d1c404a4599527d2ac994fcc01e5de`  
		Last Modified: Tue, 05 Jun 2018 09:06:27 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0f4f038eeb9f22ba12c211df0fc2e1f4be7e19c158a667c360dcbb0cac1fb6`  
		Last Modified: Tue, 05 Jun 2018 09:16:17 GMT  
		Size: 50.0 MB (50049949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bff0f0be76e0ad09a49c09d7ea561ec0dd9032d3b62328be852bdfdec48811`  
		Last Modified: Tue, 05 Jun 2018 09:16:00 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56db8bbe161f1c82fa284dccac5c6b09302482b7ccd5721ed98bd8d542c6c0c8`  
		Last Modified: Tue, 05 Jun 2018 09:16:00 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:rc-apache` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:792aef06b6a39551a34652ac12fc1be134ae739913088ce6e97fd7eb369e39c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176402863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c1118bc1fd6945d9277e4a90ab2528898cc5f4be3b9f5e5675a8c483623e8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:27:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 01 May 2018 03:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 01 May 2018 03:30:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 01 May 2018 03:30:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 01 May 2018 03:44:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:44:50 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 01 May 2018 03:44:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 01 May 2018 03:44:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 01 May 2018 03:45:00 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 01 May 2018 03:45:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 01 May 2018 03:45:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 01 May 2018 03:45:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 01 May 2018 03:45:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 01 May 2018 03:45:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 01 May 2018 03:45:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 01 May 2018 03:45:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 May 2018 09:10:55 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 09:39:02 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 09:39:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 09:39:04 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 09:39:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 09:39:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 09:45:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 09:45:53 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 09:45:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 09:45:54 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 09:45:55 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 09:45:56 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 09:45:57 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 11:51:13 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 05 Jun 2018 08:46:33 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.11;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 08:46:35 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 05 Jun 2018 08:46:35 GMT
VOLUME [/var/www/html]
# Tue, 05 Jun 2018 08:46:37 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Tue, 05 Jun 2018 09:13:36 GMT
ENV NEXTCLOUD_VERSION=13.0.3RC2
# Tue, 05 Jun 2018 09:17:01 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 09:17:03 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Tue, 05 Jun 2018 09:17:05 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 05 Jun 2018 09:17:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 09:17:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40d613d8ef51a57e39a3603130c8fc985ca25358a992a2c9eac720c35fb5e0d`  
		Last Modified: Tue, 01 May 2018 07:07:20 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decc788d58df1cd21b94578b45ec7861b0297eadee50ad8808095a5c9e3b0c13`  
		Last Modified: Tue, 01 May 2018 07:08:57 GMT  
		Size: 57.6 MB (57636138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4737ac21bc0a165daa173610231dd3caa6b3e14522fc6bfaebb747a35907be75`  
		Last Modified: Tue, 01 May 2018 07:07:20 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411c449fd98250bad17ed656274a09a19f7e5643eead7b7d72c77f60c563c504`  
		Last Modified: Tue, 01 May 2018 07:11:06 GMT  
		Size: 16.7 MB (16702542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913d86d546502bcb96cd5e35262ceead171c218bcfce1500e30e0745246d0b9b`  
		Last Modified: Tue, 01 May 2018 07:10:43 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e2a11789dada8c9c376294cd727ec668e2915a9d5dcd55e72b7454f23a5eb4`  
		Last Modified: Tue, 01 May 2018 07:10:41 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb6f413689fba6811ef44fdd7ec33195cba148671bac2407c6d1e4288a00eca`  
		Last Modified: Tue, 01 May 2018 07:10:40 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c352f2452881b1479113e963aa4e9e68a086f71018af57c7c19111d121dc0b`  
		Last Modified: Tue, 01 May 2018 07:10:41 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c47093b1b8d54635a393711163cbdcdcf204e76de6ad41966e5882fd621651`  
		Last Modified: Thu, 31 May 2018 11:14:26 GMT  
		Size: 12.6 MB (12561189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed87924c29eaa7d343b7a8138bc8c299c6506eb2762aef515d1f462ece78e9`  
		Last Modified: Thu, 31 May 2018 11:14:24 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50715217b333e1585b56bb53828bca270e0d5936d753ea7c33318fdc9a2a92b9`  
		Last Modified: Thu, 31 May 2018 11:14:33 GMT  
		Size: 13.7 MB (13675477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e56637b2e3f6d8316f1c89456e3178ca385ed8f8503c1852f28f73f8bcfb775`  
		Last Modified: Thu, 31 May 2018 11:14:24 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f63e56e3f7056d52e0da4b62c154c742926c410c6c4d9040059f6813901e1f`  
		Last Modified: Thu, 31 May 2018 11:14:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a9f4a7a70f7b8cbd15711466f8e8f7c7ef2e665209aa619606ae1a0b3a3b14`  
		Last Modified: Thu, 31 May 2018 12:19:21 GMT  
		Size: 1.5 MB (1523687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b29e3cbc0e0527d22154bc613aa9eb3794af9e34f985cd40eea03d99c0eb26f`  
		Last Modified: Tue, 05 Jun 2018 09:22:47 GMT  
		Size: 3.9 MB (3895585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51880335cd8f34c6811456a9cad01092fe4f611cdfc7b76cb3a300fa83b363e`  
		Last Modified: Tue, 05 Jun 2018 09:22:43 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ab486b8a1138577a873e3d5f95b0cfc69f9d657dfd4384676490bf092d4ae`  
		Last Modified: Tue, 05 Jun 2018 09:22:43 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42666540c1ae9fb6cf09f9ff72baa1a6318ad82ffd289e15de88af09a841a6f1`  
		Last Modified: Tue, 05 Jun 2018 09:38:09 GMT  
		Size: 50.1 MB (50051057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74f8a690c5c1f03afc146df1bffbd38d07d39b55863c05244ce823b39e85962`  
		Last Modified: Tue, 05 Jun 2018 09:37:48 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721af9e34e95649764dedfb54f0c2ff1f114286c4246bfbceac141c4eb1803bf`  
		Last Modified: Tue, 05 Jun 2018 09:37:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:rc-apache` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:54c87117b9fbade1459c28ab2aad682f29949ae11eecd59888c0fb99a3b4e9ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184583397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176a5fd18a5c3dacf632372a0492803e58c8bf96458b4f70983acbddf1dd30be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:19:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 10:19:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 10:20:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:20:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 10:20:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 10:26:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:26:03 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 10:26:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 10:26:06 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 10:26:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 10:26:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 10:26:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 10:26:14 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 10:26:16 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 10:26:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 10:26:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 10:26:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 08:29:33 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 08:44:46 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 08:44:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 08:44:48 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 08:45:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 08:45:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 08:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 08:53:29 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 08:53:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 08:53:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 08:53:32 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 08:53:33 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 08:53:35 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 10:34:58 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Tue, 05 Jun 2018 08:21:35 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.11;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 08:21:45 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Tue, 05 Jun 2018 08:21:45 GMT
VOLUME [/var/www/html]
# Tue, 05 Jun 2018 08:21:50 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Tue, 05 Jun 2018 08:40:39 GMT
ENV NEXTCLOUD_VERSION=13.0.3RC2
# Tue, 05 Jun 2018 08:41:26 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 08:41:29 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Tue, 05 Jun 2018 08:41:30 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 05 Jun 2018 08:41:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 08:41:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d8863ba8492f42b5b9324cbbb6571f6ea2041966f83d18761e73dae56c5e82`  
		Last Modified: Sat, 28 Apr 2018 12:02:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79353628a1130a700546ed5aa5fe7c79df2a3d24ac1b0e92ec59f368a072370b`  
		Last Modified: Sat, 28 Apr 2018 12:03:07 GMT  
		Size: 61.8 MB (61845345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc994aa5cf758463aae69d146af6eb0e052c04e501023cac6794c9c7a2781b`  
		Last Modified: Sat, 28 Apr 2018 12:02:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5c55adece55ab7e4cfe7c4332670d2c2f08a5ec597d181acbb31ffc08f73f4`  
		Last Modified: Sat, 28 Apr 2018 12:06:12 GMT  
		Size: 17.3 MB (17334913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756706846416f165691c2d4da04c8c63f07adb4f5e32d09668872420f0bdbf2a`  
		Last Modified: Sat, 28 Apr 2018 12:05:57 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb00ba32a484b66a69ba72723582983c736f0e019fa89ba33b13c89d69be47c`  
		Last Modified: Sat, 28 Apr 2018 12:05:52 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8daa9bf15791328128efe887d0dbfa2e2287c38e6ae759778afb80be6b5e6fed`  
		Last Modified: Sat, 28 Apr 2018 12:05:39 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17aaabd3958129f241323b066b577888c561623522e2fb2123d445f4de519ac`  
		Last Modified: Sat, 28 Apr 2018 12:05:24 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e27f516fa369cb627b4d125b7fa583699f14c983cd01ef55d27ac95105d4bb9`  
		Last Modified: Thu, 31 May 2018 09:55:48 GMT  
		Size: 12.6 MB (12560979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e94815890b787e95f29d29e480344bb65908de0ffbb333d1741f1c424c714d`  
		Last Modified: Thu, 31 May 2018 09:55:45 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef309cee70d3c36b53a44bbe1fdd303389ff5a67df7d058eae26c5724835622`  
		Last Modified: Thu, 31 May 2018 09:55:50 GMT  
		Size: 14.3 MB (14324676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23efbe7420aad5e01ab67e855b2081002fd3aa3c8b2fd5f705ce60d54bd56b7`  
		Last Modified: Thu, 31 May 2018 09:55:45 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c855efb845a98a37ea47ae4d77eeb73d3ed90aa8b8e62f7731b12972011dfb8`  
		Last Modified: Thu, 31 May 2018 09:55:45 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac844636b2becbb93f3eab010795b2b78d95bbfcc31a007e6badad5afa69e73`  
		Last Modified: Thu, 31 May 2018 10:56:06 GMT  
		Size: 1.6 MB (1634282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aa8ec017239bf896a597e025f95f571246684257fcbbd6d1df9a3596017562`  
		Last Modified: Tue, 05 Jun 2018 08:44:05 GMT  
		Size: 4.1 MB (4069574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cd4add53a316f5a7d4c77a77246e5a87cd81e7e3b2c0947be7c7e66dfe0dd6`  
		Last Modified: Tue, 05 Jun 2018 08:44:00 GMT  
		Size: 464.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3d96c9f12f2ae0f88ef86d089f91f58ebc30425c0b957d4f1bef8db4b79bbe`  
		Last Modified: Tue, 05 Jun 2018 08:44:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d98fa881b3380505f3ea550ef9b00bc6bd3f9de776e26058d4ba72fd38e02b5`  
		Last Modified: Tue, 05 Jun 2018 09:00:46 GMT  
		Size: 50.1 MB (50051104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373ce5ab501e996fc67988731787dc4fe5870b26183efc99c4e3fefb3d204240`  
		Last Modified: Tue, 05 Jun 2018 09:00:12 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61030ae7ecd8e714abfbfc46004e017d596eb67d3f7934103dd9d3c35d7f56d4`  
		Last Modified: Tue, 05 Jun 2018 09:00:12 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
