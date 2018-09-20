<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `piwik`

-	[`piwik:3`](#piwik3)
-	[`piwik:3.6`](#piwik36)
-	[`piwik:3.6.0`](#piwik360)
-	[`piwik:3.6.0-apache`](#piwik360-apache)
-	[`piwik:3.6.0-fpm`](#piwik360-fpm)
-	[`piwik:3.6.0-fpm-alpine`](#piwik360-fpm-alpine)
-	[`piwik:3.6-apache`](#piwik36-apache)
-	[`piwik:3.6-fpm`](#piwik36-fpm)
-	[`piwik:3.6-fpm-alpine`](#piwik36-fpm-alpine)
-	[`piwik:3-apache`](#piwik3-apache)
-	[`piwik:3-fpm`](#piwik3-fpm)
-	[`piwik:3-fpm-alpine`](#piwik3-fpm-alpine)
-	[`piwik:apache`](#piwikapache)
-	[`piwik:fpm`](#piwikfpm)
-	[`piwik:fpm-alpine`](#piwikfpm-alpine)
-	[`piwik:latest`](#piwiklatest)

## `piwik:3`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6.0`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6.0` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6.0-apache`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6.0-apache` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6.0-fpm`

```console
$ docker pull piwik@sha256:3fde912ce93bd066c9d777874efc7c9691ba8b1a57c5dc7d62aecc5ad814c5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6.0-fpm` - linux; amd64

```console
$ docker pull piwik@sha256:47a6710ae23491ae6ae2e33ff7310b332b7733c4dfb6d3a193788a559336e0e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163100350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8bbaea0a04de8c60592585c84b3cda479201e5c6c19dee146d50d757913abce`
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
# Wed, 05 Sep 2018 04:57:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:36:11 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:36:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:36:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:40:48 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:40:49 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:40:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 03:40:49 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 03:40:50 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:40:06 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:32:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:25 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:32:38 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:39 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:32:40 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:32:41 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:32:41 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:32:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:32:41 GMT
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
	-	`sha256:2d4bf424423c07089b0704c107fce55e44e1ac976db92eaf3f299aa6bcb6fbd3`  
		Last Modified: Sat, 15 Sep 2018 06:41:37 GMT  
		Size: 12.6 MB (12556269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c92c594cbb60281c8669b0639c4f37775790ea04352b8b4af34f85126feb1e`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34f3dcfe8e0cac408218a079c186b6eaa621d9d369f384a3e085af45a7322e`  
		Last Modified: Sat, 15 Sep 2018 06:41:39 GMT  
		Size: 28.0 MB (28019409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e588ba51a4276f759d912fa597ae130c0d4589420846e335472df94a81ade3`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed84880d1e18ac6aa1dca3fcd23c52f2aab4c2d7f4e503cb2999d61ea223d260`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0f5520b44bc4c73ca164883987c1fdd91355de97fe712bc54ce233b4ef51a`  
		Last Modified: Sat, 15 Sep 2018 06:41:34 GMT  
		Size: 7.8 KB (7773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9818bfa16e30821e358214e9fd0d6b206e00ff1882a72dc6774d197e4b48c193`  
		Last Modified: Thu, 20 Sep 2018 20:36:41 GMT  
		Size: 2.9 MB (2888048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7192df6391073d61131e946500b5c3b8a43c209df54a825843285ebca8a2548`  
		Last Modified: Thu, 20 Sep 2018 20:36:48 GMT  
		Size: 15.8 MB (15794402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe258650e98a8ba1771fee012ac7bda7c89d90798d15974dd90f22131a5875a`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bbaaeeaa801384eeba7141d29b321471667f1aa375ac267def3318182fad80`  
		Last Modified: Thu, 20 Sep 2018 20:36:42 GMT  
		Size: 13.9 MB (13915761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4d31a40150bed08ad819bec36351a6765a119480d157ed9acd1373a274cba`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6.0-fpm-alpine`

```console
$ docker pull piwik@sha256:641db04b4b7d0969c4c58fc3bf8dd18557033f29a94622c8af522b564f7d1d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6.0-fpm-alpine` - linux; amd64

```console
$ docker pull piwik@sha256:1d5d6836c5bcd595ca93e0c9aaf57cd4a1fb9f3b1b02b6170516c735885133e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65160389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d34e66b5569a4111e829f488f1458c7ebcae24c890b0ddb8bb9c309b62c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:32:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 04:10:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 04:10:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:14:36 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:14:36 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:14:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 04:14:37 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 04:14:37 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:42:27 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:36:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Thu, 20 Sep 2018 20:36:09 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:36:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Thu, 20 Sep 2018 20:36:17 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:36:18 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:36:24 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:36:25 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:36:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:36:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4002f07c481c94480e03d3a8b564dd9cc072e59ab74fce8df12d4903ffebff1b`  
		Last Modified: Sat, 15 Sep 2018 06:44:47 GMT  
		Size: 12.2 MB (12247428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3257f67d20e4ab9acdc9311bf224ded209866222b217484f12bb006cd4e0b56`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8ae8d2673463d6ccd6148ef02455eada56abbd6b7625de33700d255e051aa`  
		Last Modified: Sat, 15 Sep 2018 06:44:49 GMT  
		Size: 14.8 MB (14821726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557b77e5f8eb302b48d92ff070a5699f79eec4ca05ea7f0a0761660ca17bf65c`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0d164256d65f2a1622e36b1e223b807c88d973735d52a76d06b69acf7893a7`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d0a8dec9cd998163229e2185ebe9958160038177ccdbb7b08c03762baed227`  
		Last Modified: Sat, 15 Sep 2018 06:44:46 GMT  
		Size: 7.8 KB (7752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec461adda44c48abad1613da965d5e49e491e33177d1071002a333739980ff`  
		Last Modified: Thu, 20 Sep 2018 20:39:17 GMT  
		Size: 5.1 MB (5064753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619978090377f0b488cd26178f910e00d041927ccc5266ba3aba86bf3d7979da`  
		Last Modified: Thu, 20 Sep 2018 20:39:25 GMT  
		Size: 15.5 MB (15537606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea3a3fd64ef9418b63e410afae99b739b80717c7550e2e7a624e110160dc71`  
		Last Modified: Thu, 20 Sep 2018 20:39:15 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9984942b68ba989e34a4240c7831ed77dd4e04d5c8e7ac0a0d721f6ef7d2b817`  
		Last Modified: Thu, 20 Sep 2018 20:39:18 GMT  
		Size: 13.9 MB (13915781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e56e1e59eb33287e882ff69fdbddfec475a5fc0ac420329d1b3c334761f0ee`  
		Last Modified: Thu, 20 Sep 2018 20:39:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6-apache`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6-apache` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6-fpm`

```console
$ docker pull piwik@sha256:3fde912ce93bd066c9d777874efc7c9691ba8b1a57c5dc7d62aecc5ad814c5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6-fpm` - linux; amd64

```console
$ docker pull piwik@sha256:47a6710ae23491ae6ae2e33ff7310b332b7733c4dfb6d3a193788a559336e0e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163100350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8bbaea0a04de8c60592585c84b3cda479201e5c6c19dee146d50d757913abce`
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
# Wed, 05 Sep 2018 04:57:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:36:11 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:36:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:36:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:40:48 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:40:49 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:40:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 03:40:49 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 03:40:50 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:40:06 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:32:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:25 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:32:38 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:39 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:32:40 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:32:41 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:32:41 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:32:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:32:41 GMT
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
	-	`sha256:2d4bf424423c07089b0704c107fce55e44e1ac976db92eaf3f299aa6bcb6fbd3`  
		Last Modified: Sat, 15 Sep 2018 06:41:37 GMT  
		Size: 12.6 MB (12556269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c92c594cbb60281c8669b0639c4f37775790ea04352b8b4af34f85126feb1e`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34f3dcfe8e0cac408218a079c186b6eaa621d9d369f384a3e085af45a7322e`  
		Last Modified: Sat, 15 Sep 2018 06:41:39 GMT  
		Size: 28.0 MB (28019409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e588ba51a4276f759d912fa597ae130c0d4589420846e335472df94a81ade3`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed84880d1e18ac6aa1dca3fcd23c52f2aab4c2d7f4e503cb2999d61ea223d260`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0f5520b44bc4c73ca164883987c1fdd91355de97fe712bc54ce233b4ef51a`  
		Last Modified: Sat, 15 Sep 2018 06:41:34 GMT  
		Size: 7.8 KB (7773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9818bfa16e30821e358214e9fd0d6b206e00ff1882a72dc6774d197e4b48c193`  
		Last Modified: Thu, 20 Sep 2018 20:36:41 GMT  
		Size: 2.9 MB (2888048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7192df6391073d61131e946500b5c3b8a43c209df54a825843285ebca8a2548`  
		Last Modified: Thu, 20 Sep 2018 20:36:48 GMT  
		Size: 15.8 MB (15794402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe258650e98a8ba1771fee012ac7bda7c89d90798d15974dd90f22131a5875a`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bbaaeeaa801384eeba7141d29b321471667f1aa375ac267def3318182fad80`  
		Last Modified: Thu, 20 Sep 2018 20:36:42 GMT  
		Size: 13.9 MB (13915761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4d31a40150bed08ad819bec36351a6765a119480d157ed9acd1373a274cba`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.6-fpm-alpine`

```console
$ docker pull piwik@sha256:641db04b4b7d0969c4c58fc3bf8dd18557033f29a94622c8af522b564f7d1d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3.6-fpm-alpine` - linux; amd64

```console
$ docker pull piwik@sha256:1d5d6836c5bcd595ca93e0c9aaf57cd4a1fb9f3b1b02b6170516c735885133e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65160389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d34e66b5569a4111e829f488f1458c7ebcae24c890b0ddb8bb9c309b62c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:32:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 04:10:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 04:10:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:14:36 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:14:36 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:14:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 04:14:37 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 04:14:37 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:42:27 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:36:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Thu, 20 Sep 2018 20:36:09 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:36:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Thu, 20 Sep 2018 20:36:17 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:36:18 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:36:24 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:36:25 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:36:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:36:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4002f07c481c94480e03d3a8b564dd9cc072e59ab74fce8df12d4903ffebff1b`  
		Last Modified: Sat, 15 Sep 2018 06:44:47 GMT  
		Size: 12.2 MB (12247428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3257f67d20e4ab9acdc9311bf224ded209866222b217484f12bb006cd4e0b56`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8ae8d2673463d6ccd6148ef02455eada56abbd6b7625de33700d255e051aa`  
		Last Modified: Sat, 15 Sep 2018 06:44:49 GMT  
		Size: 14.8 MB (14821726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557b77e5f8eb302b48d92ff070a5699f79eec4ca05ea7f0a0761660ca17bf65c`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0d164256d65f2a1622e36b1e223b807c88d973735d52a76d06b69acf7893a7`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d0a8dec9cd998163229e2185ebe9958160038177ccdbb7b08c03762baed227`  
		Last Modified: Sat, 15 Sep 2018 06:44:46 GMT  
		Size: 7.8 KB (7752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec461adda44c48abad1613da965d5e49e491e33177d1071002a333739980ff`  
		Last Modified: Thu, 20 Sep 2018 20:39:17 GMT  
		Size: 5.1 MB (5064753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619978090377f0b488cd26178f910e00d041927ccc5266ba3aba86bf3d7979da`  
		Last Modified: Thu, 20 Sep 2018 20:39:25 GMT  
		Size: 15.5 MB (15537606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea3a3fd64ef9418b63e410afae99b739b80717c7550e2e7a624e110160dc71`  
		Last Modified: Thu, 20 Sep 2018 20:39:15 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9984942b68ba989e34a4240c7831ed77dd4e04d5c8e7ac0a0d721f6ef7d2b817`  
		Last Modified: Thu, 20 Sep 2018 20:39:18 GMT  
		Size: 13.9 MB (13915781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e56e1e59eb33287e882ff69fdbddfec475a5fc0ac420329d1b3c334761f0ee`  
		Last Modified: Thu, 20 Sep 2018 20:39:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-apache`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3-apache` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-fpm`

```console
$ docker pull piwik@sha256:3fde912ce93bd066c9d777874efc7c9691ba8b1a57c5dc7d62aecc5ad814c5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3-fpm` - linux; amd64

```console
$ docker pull piwik@sha256:47a6710ae23491ae6ae2e33ff7310b332b7733c4dfb6d3a193788a559336e0e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163100350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8bbaea0a04de8c60592585c84b3cda479201e5c6c19dee146d50d757913abce`
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
# Wed, 05 Sep 2018 04:57:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:36:11 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:36:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:36:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:40:48 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:40:49 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:40:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 03:40:49 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 03:40:50 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:40:06 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:32:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:25 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:32:38 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:39 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:32:40 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:32:41 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:32:41 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:32:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:32:41 GMT
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
	-	`sha256:2d4bf424423c07089b0704c107fce55e44e1ac976db92eaf3f299aa6bcb6fbd3`  
		Last Modified: Sat, 15 Sep 2018 06:41:37 GMT  
		Size: 12.6 MB (12556269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c92c594cbb60281c8669b0639c4f37775790ea04352b8b4af34f85126feb1e`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34f3dcfe8e0cac408218a079c186b6eaa621d9d369f384a3e085af45a7322e`  
		Last Modified: Sat, 15 Sep 2018 06:41:39 GMT  
		Size: 28.0 MB (28019409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e588ba51a4276f759d912fa597ae130c0d4589420846e335472df94a81ade3`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed84880d1e18ac6aa1dca3fcd23c52f2aab4c2d7f4e503cb2999d61ea223d260`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0f5520b44bc4c73ca164883987c1fdd91355de97fe712bc54ce233b4ef51a`  
		Last Modified: Sat, 15 Sep 2018 06:41:34 GMT  
		Size: 7.8 KB (7773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9818bfa16e30821e358214e9fd0d6b206e00ff1882a72dc6774d197e4b48c193`  
		Last Modified: Thu, 20 Sep 2018 20:36:41 GMT  
		Size: 2.9 MB (2888048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7192df6391073d61131e946500b5c3b8a43c209df54a825843285ebca8a2548`  
		Last Modified: Thu, 20 Sep 2018 20:36:48 GMT  
		Size: 15.8 MB (15794402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe258650e98a8ba1771fee012ac7bda7c89d90798d15974dd90f22131a5875a`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bbaaeeaa801384eeba7141d29b321471667f1aa375ac267def3318182fad80`  
		Last Modified: Thu, 20 Sep 2018 20:36:42 GMT  
		Size: 13.9 MB (13915761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4d31a40150bed08ad819bec36351a6765a119480d157ed9acd1373a274cba`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3-fpm-alpine`

```console
$ docker pull piwik@sha256:641db04b4b7d0969c4c58fc3bf8dd18557033f29a94622c8af522b564f7d1d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:3-fpm-alpine` - linux; amd64

```console
$ docker pull piwik@sha256:1d5d6836c5bcd595ca93e0c9aaf57cd4a1fb9f3b1b02b6170516c735885133e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65160389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d34e66b5569a4111e829f488f1458c7ebcae24c890b0ddb8bb9c309b62c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:32:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 04:10:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 04:10:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:14:36 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:14:36 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:14:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 04:14:37 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 04:14:37 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:42:27 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:36:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Thu, 20 Sep 2018 20:36:09 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:36:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Thu, 20 Sep 2018 20:36:17 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:36:18 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:36:24 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:36:25 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:36:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:36:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4002f07c481c94480e03d3a8b564dd9cc072e59ab74fce8df12d4903ffebff1b`  
		Last Modified: Sat, 15 Sep 2018 06:44:47 GMT  
		Size: 12.2 MB (12247428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3257f67d20e4ab9acdc9311bf224ded209866222b217484f12bb006cd4e0b56`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8ae8d2673463d6ccd6148ef02455eada56abbd6b7625de33700d255e051aa`  
		Last Modified: Sat, 15 Sep 2018 06:44:49 GMT  
		Size: 14.8 MB (14821726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557b77e5f8eb302b48d92ff070a5699f79eec4ca05ea7f0a0761660ca17bf65c`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0d164256d65f2a1622e36b1e223b807c88d973735d52a76d06b69acf7893a7`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d0a8dec9cd998163229e2185ebe9958160038177ccdbb7b08c03762baed227`  
		Last Modified: Sat, 15 Sep 2018 06:44:46 GMT  
		Size: 7.8 KB (7752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec461adda44c48abad1613da965d5e49e491e33177d1071002a333739980ff`  
		Last Modified: Thu, 20 Sep 2018 20:39:17 GMT  
		Size: 5.1 MB (5064753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619978090377f0b488cd26178f910e00d041927ccc5266ba3aba86bf3d7979da`  
		Last Modified: Thu, 20 Sep 2018 20:39:25 GMT  
		Size: 15.5 MB (15537606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea3a3fd64ef9418b63e410afae99b739b80717c7550e2e7a624e110160dc71`  
		Last Modified: Thu, 20 Sep 2018 20:39:15 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9984942b68ba989e34a4240c7831ed77dd4e04d5c8e7ac0a0d721f6ef7d2b817`  
		Last Modified: Thu, 20 Sep 2018 20:39:18 GMT  
		Size: 13.9 MB (13915781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e56e1e59eb33287e882ff69fdbddfec475a5fc0ac420329d1b3c334761f0ee`  
		Last Modified: Thu, 20 Sep 2018 20:39:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:apache`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:apache` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:fpm`

```console
$ docker pull piwik@sha256:3fde912ce93bd066c9d777874efc7c9691ba8b1a57c5dc7d62aecc5ad814c5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:fpm` - linux; amd64

```console
$ docker pull piwik@sha256:47a6710ae23491ae6ae2e33ff7310b332b7733c4dfb6d3a193788a559336e0e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163100350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8bbaea0a04de8c60592585c84b3cda479201e5c6c19dee146d50d757913abce`
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
# Wed, 05 Sep 2018 04:57:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:36:11 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:36:12 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:36:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:36:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:40:48 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:40:49 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:40:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 03:40:49 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 03:40:50 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:40:06 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:32:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:25 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:32:38 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:32:39 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:32:40 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:32:41 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:32:41 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:32:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:32:41 GMT
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
	-	`sha256:2d4bf424423c07089b0704c107fce55e44e1ac976db92eaf3f299aa6bcb6fbd3`  
		Last Modified: Sat, 15 Sep 2018 06:41:37 GMT  
		Size: 12.6 MB (12556269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c92c594cbb60281c8669b0639c4f37775790ea04352b8b4af34f85126feb1e`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34f3dcfe8e0cac408218a079c186b6eaa621d9d369f384a3e085af45a7322e`  
		Last Modified: Sat, 15 Sep 2018 06:41:39 GMT  
		Size: 28.0 MB (28019409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e588ba51a4276f759d912fa597ae130c0d4589420846e335472df94a81ade3`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed84880d1e18ac6aa1dca3fcd23c52f2aab4c2d7f4e503cb2999d61ea223d260`  
		Last Modified: Sat, 15 Sep 2018 06:41:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0f5520b44bc4c73ca164883987c1fdd91355de97fe712bc54ce233b4ef51a`  
		Last Modified: Sat, 15 Sep 2018 06:41:34 GMT  
		Size: 7.8 KB (7773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9818bfa16e30821e358214e9fd0d6b206e00ff1882a72dc6774d197e4b48c193`  
		Last Modified: Thu, 20 Sep 2018 20:36:41 GMT  
		Size: 2.9 MB (2888048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7192df6391073d61131e946500b5c3b8a43c209df54a825843285ebca8a2548`  
		Last Modified: Thu, 20 Sep 2018 20:36:48 GMT  
		Size: 15.8 MB (15794402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe258650e98a8ba1771fee012ac7bda7c89d90798d15974dd90f22131a5875a`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bbaaeeaa801384eeba7141d29b321471667f1aa375ac267def3318182fad80`  
		Last Modified: Thu, 20 Sep 2018 20:36:42 GMT  
		Size: 13.9 MB (13915761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4d31a40150bed08ad819bec36351a6765a119480d157ed9acd1373a274cba`  
		Last Modified: Thu, 20 Sep 2018 20:36:40 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:fpm-alpine`

```console
$ docker pull piwik@sha256:641db04b4b7d0969c4c58fc3bf8dd18557033f29a94622c8af522b564f7d1d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:fpm-alpine` - linux; amd64

```console
$ docker pull piwik@sha256:1d5d6836c5bcd595ca93e0c9aaf57cd4a1fb9f3b1b02b6170516c735885133e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65160389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d34e66b5569a4111e829f488f1458c7ebcae24c890b0ddb8bb9c309b62c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:26:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 02:32:39 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:10:08 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 04:10:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 15 Sep 2018 04:10:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:14:36 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:14:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:14:36 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:14:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 04:14:37 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 04:14:37 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 07:42:27 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:36:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		freetype-dev 		geoip-dev 		icu-dev 		libjpeg-turbo-dev 		libpng-dev 		openldap-dev 		pcre-dev 	; 		docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .piwik-phpext-rundeps $runDeps; 	apk del .build-deps
# Thu, 20 Sep 2018 20:36:09 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:36:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apk del .fetch-deps
# Thu, 20 Sep 2018 20:36:17 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:36:18 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:36:24 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:36:25 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:36:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:36:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4002f07c481c94480e03d3a8b564dd9cc072e59ab74fce8df12d4903ffebff1b`  
		Last Modified: Sat, 15 Sep 2018 06:44:47 GMT  
		Size: 12.2 MB (12247428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3257f67d20e4ab9acdc9311bf224ded209866222b217484f12bb006cd4e0b56`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8ae8d2673463d6ccd6148ef02455eada56abbd6b7625de33700d255e051aa`  
		Last Modified: Sat, 15 Sep 2018 06:44:49 GMT  
		Size: 14.8 MB (14821726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557b77e5f8eb302b48d92ff070a5699f79eec4ca05ea7f0a0761660ca17bf65c`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0d164256d65f2a1622e36b1e223b807c88d973735d52a76d06b69acf7893a7`  
		Last Modified: Sat, 15 Sep 2018 06:44:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d0a8dec9cd998163229e2185ebe9958160038177ccdbb7b08c03762baed227`  
		Last Modified: Sat, 15 Sep 2018 06:44:46 GMT  
		Size: 7.8 KB (7752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec461adda44c48abad1613da965d5e49e491e33177d1071002a333739980ff`  
		Last Modified: Thu, 20 Sep 2018 20:39:17 GMT  
		Size: 5.1 MB (5064753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619978090377f0b488cd26178f910e00d041927ccc5266ba3aba86bf3d7979da`  
		Last Modified: Thu, 20 Sep 2018 20:39:25 GMT  
		Size: 15.5 MB (15537606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edea3a3fd64ef9418b63e410afae99b739b80717c7550e2e7a624e110160dc71`  
		Last Modified: Thu, 20 Sep 2018 20:39:15 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9984942b68ba989e34a4240c7831ed77dd4e04d5c8e7ac0a0d721f6ef7d2b817`  
		Last Modified: Thu, 20 Sep 2018 20:39:18 GMT  
		Size: 13.9 MB (13915781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e56e1e59eb33287e882ff69fdbddfec475a5fc0ac420329d1b3c334761f0ee`  
		Last Modified: Thu, 20 Sep 2018 20:39:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:latest`

```console
$ docker pull piwik@sha256:1875d066280b6072c5dab5f82d163945cf05681f92d41a1c02cc6f6566b6712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

```console
$ docker pull piwik@sha256:42d2a020bde40968aba1f1bf7b803b753ea8e46b39e2bb27879d89a9705cbd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c991dddeed4cc5c0d82b0d7048e51e231287d526294c0810edaa124cbb44bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 03:32:51 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 03:32:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 03:32:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 03:35:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 03:35:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 03:35:52 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 03:35:52 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 03:35:52 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:37:45 GMT
LABEL maintainer=pierre@piwik.org
# Thu, 20 Sep 2018 20:29:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6-dev 		libgeoip-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		gd 		ldap 		mysqli 		opcache 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.12; 	pecl install geoip-1.1.1; 	pecl install redis-3.1.6; 		docker-php-ext-enable 		apcu 		geoip 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:31 GMT
ENV MATOMO_VERSION=3.6.0
# Thu, 20 Sep 2018 20:29:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o piwik.tar.gz 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o piwik.tar.gz.asc 		"https://builds.matomo.org/piwik-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237; 	gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" piwik.tar.gz.asc; 	tar -xzf piwik.tar.gz -C /usr/src/; 	rm piwik.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:29:45 GMT
COPY file:2bb39e74aa27ed262fe882fbe94a76456ae9dc4b330877ebfaf80c5598a3ee99 in /usr/local/etc/php/conf.d/php-piwik.ini 
# Thu, 20 Sep 2018 20:29:46 GMT
RUN set -ex; 	curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz; 	gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 20 Sep 2018 20:29:47 GMT
COPY file:1d3652fedc114c4318a1a002b225282d08d62cc6960067e98a0e8480c5cf6fb2 in /entrypoint.sh 
# Thu, 20 Sep 2018 20:29:47 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:29:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Sep 2018 20:29:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d738459b493f5a5d95ecab035b57e290997e5a1c34823d589d1c14e96def15`  
		Last Modified: Sat, 15 Sep 2018 06:41:03 GMT  
		Size: 12.6 MB (12577338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24830994a3eb190fc54f2d19ef570b47fd9ca34f1245084e44f9f874192a70e3`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3807dc98c171b25c85b8221c889f0e21188bd3d34610fafbfac13d0bafb16db`  
		Last Modified: Sat, 15 Sep 2018 06:41:08 GMT  
		Size: 14.6 MB (14609252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59365c2968b5db7fd453c8cafa661411872aacaf2fd801326d81aa84223fed73`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bea53859bb705c401a8bf9794ac781a79e7d1c29448c192ca096bdfd125e9e`  
		Last Modified: Sat, 15 Sep 2018 06:41:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3602ec16df2c1e6c19aea08fabadea5ec5b7f3ca80eef42712d87e1766499`  
		Last Modified: Thu, 20 Sep 2018 20:35:21 GMT  
		Size: 2.9 MB (2911205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c49a7c12ed46d558007aa4be9466bea12a5befd5f75a378ea42360c352a90`  
		Last Modified: Thu, 20 Sep 2018 20:35:28 GMT  
		Size: 15.8 MB (15817943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660b7d22aa640aaeb3c40849667e5867c459389e9883619240ac320bed60aa4`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801b7442c1aa85592658b5e1db00b9d788ffe9afa498490509f47439c6530db4`  
		Last Modified: Thu, 20 Sep 2018 20:35:23 GMT  
		Size: 13.9 MB (13915764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e449f4efb0392fbf3c3f1bffd914778fedf732abebfde7ddfdd3ebef782c1f`  
		Last Modified: Thu, 20 Sep 2018 20:35:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
