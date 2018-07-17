## `wordpress:4-php5.6-apache`

```console
$ docker pull wordpress@sha256:a83812d5735886215e5090693d6e105c0cda606b2ca07d07515d8235dc5bfdfb
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

### `wordpress:4-php5.6-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:c3aec18cdb5a5934f67de5da3412702c92cba6e2078afd83737a8869ef661128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139171163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5e5c4099f295c9d966987604e3f169c01c73b99b6985a1928cf8f9ffee515c`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Wed, 27 Jun 2018 01:33:27 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 27 Jun 2018 01:33:27 GMT
ENV PHP_VERSION=5.6.36
# Wed, 27 Jun 2018 01:33:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 01:33:28 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Wed, 27 Jun 2018 01:33:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 01:33:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:36:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 01:36:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:36:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 01:36:25 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:36:25 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 01:36:25 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 01:36:25 GMT
CMD ["apache2-foreground"]
# Fri, 06 Jul 2018 21:16:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 06 Jul 2018 21:16:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 06 Jul 2018 21:16:27 GMT
RUN a2enmod rewrite expires
# Fri, 06 Jul 2018 21:16:27 GMT
VOLUME [/var/www/html]
# Sat, 07 Jul 2018 04:14:17 GMT
ENV WORDPRESS_VERSION=4.9.7
# Sat, 07 Jul 2018 04:14:17 GMT
ENV WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d
# Sat, 07 Jul 2018 04:14:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 07 Jul 2018 04:14:20 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 07 Jul 2018 04:14:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 04:14:20 GMT
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
	-	`sha256:5b1da0215f27a814f48f89e64fce91337d672ba4fb267728580ef937904d8ab0`  
		Last Modified: Wed, 27 Jun 2018 02:27:58 GMT  
		Size: 12.8 MB (12817076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41d25c2b517bcbe13a13b3e057c566fa391a627b5200b069ee341f12c8dbbc9`  
		Last Modified: Wed, 27 Jun 2018 02:27:55 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628aacd0f69a4433ed391c940bfc44df23ae258443d5e745e03c269c4a067791`  
		Last Modified: Wed, 27 Jun 2018 02:27:59 GMT  
		Size: 9.7 MB (9682267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6180cd7681d0630a1ceff5879d19ef87c9ac9b352f0b43c559523b94889dc3`  
		Last Modified: Wed, 27 Jun 2018 02:27:55 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c022be0818028809ff6615f056b2f5022e964ea0ed72d07436b56f8abbeeca`  
		Last Modified: Wed, 27 Jun 2018 02:27:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6c865ee1c844254dd382473b413f1b16e47db6b0622bf0019d0f744eff61bc`  
		Last Modified: Fri, 06 Jul 2018 21:54:30 GMT  
		Size: 977.3 KB (977293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e04426ebb001e710f9a241082dd999da8913f743485a4b84f324bd33a731603`  
		Last Modified: Fri, 06 Jul 2018 21:54:30 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876b58121ee1822ca9dcc46584565afd64fbbfa6adbb87e6abda049e859bf3dd`  
		Last Modified: Fri, 06 Jul 2018 21:54:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e4ffbe67f48d52e9de612117b7d5a907e9b086a9a20d9c0a17abdc36c8ad15`  
		Last Modified: Sat, 07 Jul 2018 04:18:28 GMT  
		Size: 8.6 MB (8601064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcb1cd016978d99a1361a5c21f7def8a77630ae5a6a1a21012bb5ccb7a2eb75`  
		Last Modified: Sat, 07 Jul 2018 04:18:25 GMT  
		Size: 3.4 KB (3354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php5.6-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:6cad94511e09202acaafce401fc5023c8bd159ae87d4826d96114cd58e35419a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126899140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46c7afb6069c30c766d05fa1d59b661a43a00d18e4da7dbac9a45bc99adacd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:11:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 12:11:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 12:12:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:12:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 12:12:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 12:16:32 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:16:32 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jul 2018 12:16:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jul 2018 12:16:33 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jul 2018 12:16:34 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jul 2018 12:16:35 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jul 2018 12:16:36 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jul 2018 12:16:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jul 2018 12:16:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 17 Jul 2018 12:16:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 12:16:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 12:16:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 13:42:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jul 2018 13:42:29 GMT
ENV PHP_VERSION=5.6.36
# Tue, 17 Jul 2018 13:42:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 13:42:29 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Tue, 17 Jul 2018 13:42:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 13:42:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:45:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 13:45:05 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:45:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 13:45:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:45:06 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 13:45:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 13:45:07 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jul 2018 16:30:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:30:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jul 2018 16:30:26 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jul 2018 16:30:27 GMT
VOLUME [/var/www/html]
# Tue, 17 Jul 2018 16:30:27 GMT
ENV WORDPRESS_VERSION=4.9.7
# Tue, 17 Jul 2018 16:30:35 GMT
ENV WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d
# Tue, 17 Jul 2018 16:30:39 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jul 2018 16:30:46 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:30:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:30:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd628726115d1b85f5fa4da7cce482866282d8d413ca606ea4ceb6d5c78e4f4b`  
		Last Modified: Tue, 17 Jul 2018 14:10:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d762076c20a075be84e128e3058c548c89794ff387f3398c1ffff670865359`  
		Last Modified: Tue, 17 Jul 2018 14:10:35 GMT  
		Size: 57.4 MB (57447364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285bc4dc2b6d84e706bd65098634e75f474fe61ef97464d1ef11e6fd51f5cda7`  
		Last Modified: Tue, 17 Jul 2018 14:10:16 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb9c15539d5a377f98f2a0f58ebb319c1c35ddc2e3f0441768a009d7ee5884c`  
		Last Modified: Tue, 17 Jul 2018 14:13:11 GMT  
		Size: 16.7 MB (16650925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd19cc66fa8ebbc75a62e14647f88bbb78438490bbe70feb4963881f16257e6`  
		Last Modified: Tue, 17 Jul 2018 14:13:07 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e786b3fdcaa4442d8c2ac91b6c5e811c9901b655f35f08e397c4b976dd3d5e8f`  
		Last Modified: Tue, 17 Jul 2018 14:13:06 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c514c1971732f6df9808b1078568ad98ca39d96142504057d10e976f1da1e7`  
		Last Modified: Tue, 17 Jul 2018 14:13:05 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14444c0ed248efe86528a5979e4e06bd62680bbdc60c71aa44601f631a747e98`  
		Last Modified: Tue, 17 Jul 2018 14:13:05 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d839861a4ad3f5d70df2cf8b52930714788332e025308c891422bcedc4a91c23`  
		Last Modified: Tue, 17 Jul 2018 14:31:07 GMT  
		Size: 12.8 MB (12814685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b75f9513d6e6b1176db577e8c3d426886025dd4867fb42de09f39aacdcab34`  
		Last Modified: Tue, 17 Jul 2018 14:31:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77986b1306c64e93abeb27e205ed51a5d8efb8a13f5eb6c01766ffae8998190c`  
		Last Modified: Tue, 17 Jul 2018 14:31:09 GMT  
		Size: 9.3 MB (9273097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50583d27aa4bf45345154bda6d4353dcea1fe86529e5c3e5d5e383086b492cb7`  
		Last Modified: Tue, 17 Jul 2018 14:31:05 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556864ae91391fb25b9ec8fe85a5b9d9c623ad8f26702b8fc7ed598fd51ec810`  
		Last Modified: Tue, 17 Jul 2018 14:31:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2225da4b4bd2eac62d0c2f423c9aa74dc86e9fcdee71ea81416498d1fe01ebc6`  
		Last Modified: Tue, 17 Jul 2018 16:50:24 GMT  
		Size: 938.8 KB (938784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34abfa2a6ed03d886318412037024b1f7796b3cc69372ba1c8a4c411f63e0aa1`  
		Last Modified: Tue, 17 Jul 2018 16:50:23 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8931213fcf96f51f2ef738dcb2ec2985a158dee4804798e8e240af79c7d876f3`  
		Last Modified: Tue, 17 Jul 2018 16:50:23 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07987622b180091549c188093c10f57345f4610f967f2e82c6a4cf937925cd04`  
		Last Modified: Tue, 17 Jul 2018 16:50:26 GMT  
		Size: 8.6 MB (8601069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b473a535fdfed8bc0d698e4529916cc322f5b916168738af37af6d2e8c92652c`  
		Last Modified: Tue, 17 Jul 2018 16:50:23 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php5.6-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:8e6ffb15be4a3d715e4acba307e79673061509cd0e26c57f64642ac4e3acc353
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120099758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7d3cb2acf2333d3e742dfe9b5ff2d3da34062b394ea0bea0cc7b6e6b931aaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:15:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 15:15:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 15:15:41 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 15:15:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 15:20:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:20:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jul 2018 15:20:09 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jul 2018 15:20:11 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jul 2018 15:20:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jul 2018 15:20:15 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jul 2018 15:20:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jul 2018 15:20:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jul 2018 15:20:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 17 Jul 2018 15:20:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:20:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:20:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 16:44:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jul 2018 16:44:41 GMT
ENV PHP_VERSION=5.6.36
# Tue, 17 Jul 2018 16:44:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 16:44:42 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Tue, 17 Jul 2018 16:44:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 16:44:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:47:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 16:47:05 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:47:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 16:47:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:47:07 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 16:47:07 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 16:47:07 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jul 2018 20:12:14 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:12:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jul 2018 20:12:18 GMT
RUN a2enmod rewrite expires
# Tue, 17 Jul 2018 20:12:18 GMT
VOLUME [/var/www/html]
# Tue, 17 Jul 2018 20:12:19 GMT
ENV WORDPRESS_VERSION=4.9.7
# Tue, 17 Jul 2018 20:12:19 GMT
ENV WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d
# Tue, 17 Jul 2018 20:12:22 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jul 2018 20:12:23 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 17 Jul 2018 20:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 20:12:24 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d2a0c1d131c19625fceb8248dc96a847893d5f98f01da360c6b39e27bc3ca0`  
		Last Modified: Tue, 17 Jul 2018 17:14:09 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271d58948a13adbffe09af81abcb95bcfc955a7c954392052af0f5e92bfdfa31`  
		Last Modified: Tue, 17 Jul 2018 17:14:26 GMT  
		Size: 53.6 MB (53562473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f3a80a747ed1051b60ee82a50901d727f7b6bf1adef7ee158199fefc295d04`  
		Last Modified: Tue, 17 Jul 2018 17:14:08 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c221881787fa76132ab07db82c818dee8cef992561e89d583f67261102744ff`  
		Last Modified: Tue, 17 Jul 2018 17:17:51 GMT  
		Size: 16.2 MB (16162679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df8f21ec4a6711b1155f4f6029563c4576c4a4dde14b2aef40ec68c8fcd8a86`  
		Last Modified: Tue, 17 Jul 2018 17:17:47 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93a133ff30152cb97261b3996742c9a229159ff53646d11a6462fe08f0e4cfb`  
		Last Modified: Tue, 17 Jul 2018 17:17:46 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16498caf1d0af169cd46ef7f8c5c70bc4cc48f1f7d97bb769c137452fb1f652`  
		Last Modified: Tue, 17 Jul 2018 17:17:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805fc306963caf25cb37f4fb1705eb38e801b44dba304afcfaa12caf5ab2bc3d`  
		Last Modified: Tue, 17 Jul 2018 17:17:45 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d25499890d6517a3727ddaf63c23f6518c37d6205f71c5f27e86d7262d296a7`  
		Last Modified: Tue, 17 Jul 2018 17:44:45 GMT  
		Size: 12.8 MB (12814556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d158c7ee0ee169e2645d42189c4e8cdf30c7a4a1689dfd6c0997227e6d115a0a`  
		Last Modified: Tue, 17 Jul 2018 17:44:39 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8fa49f059878e3973a7681feebb29caf0f3035d716a17ecd135f1c50e679c`  
		Last Modified: Tue, 17 Jul 2018 17:44:43 GMT  
		Size: 8.8 MB (8795164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758f126a0640f1d81f56c0ce327a163e20a20d0cc5fa889bb72eb420b5323c5`  
		Last Modified: Tue, 17 Jul 2018 17:44:39 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292e0fd4de6936753284ffc350cf7400c7256fddc4d1156fb0d363347270001a`  
		Last Modified: Tue, 17 Jul 2018 17:44:39 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d895c6a4479c9c5a59196c40053065a046c88b66068fa35e05fe61d585e45a5`  
		Last Modified: Tue, 17 Jul 2018 20:34:33 GMT  
		Size: 883.1 KB (883076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8cacf932c07708d6d79020a3fde3a58d835b346340487fd4cd037afa9177a0`  
		Last Modified: Tue, 17 Jul 2018 20:34:33 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47da659686b7630ede7f49f231b1f395441ef22d851fdb26d32491a8887330e7`  
		Last Modified: Tue, 17 Jul 2018 20:34:33 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e4046142d0cccf46ff511d108e4c92c52b06cdb7b14ae5d6addcaf753a819a`  
		Last Modified: Tue, 17 Jul 2018 20:34:36 GMT  
		Size: 8.6 MB (8601061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7571f8ef2b069f9c75dd0e58f8fae4774014bfd33cea8c6521d9641be312123a`  
		Last Modified: Tue, 17 Jul 2018 20:34:33 GMT  
		Size: 3.4 KB (3355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php5.6-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:9082c55f76456a2432cf670502677bee1aff630257db858af58d4eaada27f05c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126122585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4de12b214262a162d636623c65f2209124c30c08dd8a27891256b880cbccbc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 27 Jun 2018 12:29:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:29:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 12:29:02 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 12:29:04 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 12:29:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 12:29:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 12:29:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 12:29:13 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 12:29:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 12:29:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 12:29:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 12:29:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 14:31:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 27 Jun 2018 14:31:29 GMT
ENV PHP_VERSION=5.6.36
# Wed, 27 Jun 2018 14:31:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 14:31:30 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Wed, 27 Jun 2018 14:32:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 14:32:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:37:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 14:37:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:37:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 14:37:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:37:38 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 14:37:39 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 14:37:40 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 02:26:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 02:26:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 02:26:21 GMT
RUN a2enmod rewrite expires
# Thu, 28 Jun 2018 02:26:22 GMT
VOLUME [/var/www/html]
# Tue, 10 Jul 2018 09:39:05 GMT
ENV WORDPRESS_VERSION=4.9.7
# Tue, 10 Jul 2018 09:39:05 GMT
ENV WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d
# Tue, 10 Jul 2018 09:39:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 10 Jul 2018 09:39:11 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 10 Jul 2018 09:39:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 09:39:12 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3369f68a8d2561565f5d5a8aa2a264c5fd2ddb8ed6518b7080a44329f97de94b`  
		Last Modified: Wed, 27 Jun 2018 15:01:10 GMT  
		Size: 16.7 MB (16703001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952a7c0da13315f91aed2b9880cc8a7678ba3a3f52e31883f37a1ebf26e840ae`  
		Last Modified: Wed, 27 Jun 2018 15:01:06 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9454ec50e878df2999eddb840bf00090221b233869c767dd5ac89205093a2f1f`  
		Last Modified: Wed, 27 Jun 2018 15:01:04 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f53b844b5ac19cd0a60660cd92b123e90b860998f6fc2cff3b41797d7b8d3aa`  
		Last Modified: Wed, 27 Jun 2018 15:01:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39eb9ea5ac031459ed073afdfb4e294107fb40ecf1caf7a7c83b4a3676e161e`  
		Last Modified: Wed, 27 Jun 2018 15:01:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50427d777ba40d558a814d99bde2c4802b243a8d88b764f4f9f802a5ff7a9cc`  
		Last Modified: Wed, 27 Jun 2018 15:16:59 GMT  
		Size: 12.8 MB (12815738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc74e64d577a94b25dc3891fe512d8286c346d1b75a281fa602a4d2d6306de5`  
		Last Modified: Wed, 27 Jun 2018 15:16:57 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e325ac0b23b61f8affff3c3ab00e47e024130f055029dc0e5f927e1065690`  
		Last Modified: Wed, 27 Jun 2018 15:17:01 GMT  
		Size: 9.1 MB (9099664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d3272c523b1c240411fb7ef16e12333c962bf61737f604a1d808483a80f519`  
		Last Modified: Wed, 27 Jun 2018 15:16:58 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9312a2c9dd41aaa228fcaf9d3af82ae89732f025027fde7854250ebd3cd9fce1`  
		Last Modified: Wed, 27 Jun 2018 15:16:57 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69aa33970314d79a8ac3f30551063de4d0b8f74efa135b84787309282625926c`  
		Last Modified: Thu, 28 Jun 2018 02:49:47 GMT  
		Size: 910.5 KB (910506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de8e08eb985b169ef9d31675b4135ca9dd1bf2e4faa74ea88d97ef120c820c8`  
		Last Modified: Thu, 28 Jun 2018 02:49:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6abc09c903a65fab456d6310b490d4ac20865b39f3612230ec0ffb147b9fcc`  
		Last Modified: Thu, 28 Jun 2018 02:49:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f890e4c7acdba8629a8fdf950aa12ff20c8677370ee70a5b49e7cea6deba673`  
		Last Modified: Tue, 10 Jul 2018 09:44:41 GMT  
		Size: 8.6 MB (8601064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a229afa8b1aeb9edcb1de30c7fbfaf9e053413bf60502f6ca3e31542843688f`  
		Last Modified: Tue, 10 Jul 2018 09:44:37 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php5.6-apache` - linux; 386

```console
$ docker pull wordpress@sha256:da043f75040aa8f09ad8d95751156f09d353fae8ad06363962fbd96d578f767d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144765973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77ad49936933f158eac8baa84b04a912117b820b7c0f7ff5e5395cd92271bc86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 27 Jun 2018 13:44:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:44:55 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 13:44:55 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 13:44:56 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 13:44:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 13:44:58 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 13:44:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 13:44:59 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 13:44:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 13:44:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 13:45:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 13:45:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 15:27:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 27 Jun 2018 15:27:04 GMT
ENV PHP_VERSION=5.6.36
# Wed, 27 Jun 2018 15:27:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 15:27:04 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Wed, 27 Jun 2018 15:27:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 15:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 15:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 15:30:05 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 15:30:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 15:30:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 15:30:06 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 15:30:06 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 15:30:07 GMT
CMD ["apache2-foreground"]
# Wed, 27 Jun 2018 18:07:20 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 18:07:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Jun 2018 18:07:29 GMT
RUN a2enmod rewrite expires
# Wed, 27 Jun 2018 18:07:29 GMT
VOLUME [/var/www/html]
# Sat, 07 Jul 2018 11:08:04 GMT
ENV WORDPRESS_VERSION=4.9.7
# Sat, 07 Jul 2018 11:08:04 GMT
ENV WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d
# Sat, 07 Jul 2018 11:08:07 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 07 Jul 2018 11:08:08 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 07 Jul 2018 11:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 11:08:08 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:11772a83939f48a522552f019ab5904914ca5addfce1eb6a8150dbac4893e085`  
		Last Modified: Wed, 27 Jun 2018 16:09:27 GMT  
		Size: 17.6 MB (17558742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafbab36e17b4fbb21353a4aec2a5b2ee12af34ec7904690cb9460354281f087`  
		Last Modified: Wed, 27 Jun 2018 16:09:20 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f446d3d2897d07135b1d22643c82a14bec2179c9043a0cc1e4fca87df0641eb`  
		Last Modified: Wed, 27 Jun 2018 16:09:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc157ea9c1d14665c21c44b2a163d1fb0d94ecebb744f3c52996b4daba8c40f7`  
		Last Modified: Wed, 27 Jun 2018 16:09:17 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552fe83bc909af1f2e546e882205c1eb99705cf0bf1132adb18157d228b2cd90`  
		Last Modified: Wed, 27 Jun 2018 16:09:17 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153513ad529ebd97364c442d9844b5cd32c306b328244bbac5165b2c9cbc80d4`  
		Last Modified: Wed, 27 Jun 2018 16:33:55 GMT  
		Size: 12.8 MB (12816476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a759775b7e965bc79e52820b28af7ee3a92bb750e901c2b725bf54a5bb5e8c6`  
		Last Modified: Wed, 27 Jun 2018 16:33:53 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80e23fd655c4579a8dadbb0494671d96dfc7dc7497d047573b61ed6be1e1fc7`  
		Last Modified: Wed, 27 Jun 2018 16:33:58 GMT  
		Size: 10.1 MB (10099102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1bcdd7c290dee70adce2c70f5877b1034716291fe4148697c37ba9042fbd57`  
		Last Modified: Wed, 27 Jun 2018 16:33:53 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a53ac8cefd1a80a66a922f011fb222bfd26d137000d7fc15f293822997d9d28`  
		Last Modified: Wed, 27 Jun 2018 16:33:54 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dea0b8b6cdb839b2ddb4c046b07f68f6060bf3e6cb3155999cd9894ce266cc`  
		Last Modified: Wed, 27 Jun 2018 18:28:06 GMT  
		Size: 1.0 MB (1020280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62ef83962033dc28a318f10122c4ea6ee489327fd947bce534a3816d2ab445f`  
		Last Modified: Wed, 27 Jun 2018 18:28:06 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3234e545b7a59e16c14c239b63f3c9225b283a00bd51ae3c709be80ab6aa76`  
		Last Modified: Wed, 27 Jun 2018 18:28:05 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b22ce4f858dc04e509682065e9bb692b9f221be809670198fd2c267052d7f6`  
		Last Modified: Sat, 07 Jul 2018 11:11:58 GMT  
		Size: 8.6 MB (8601064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70691b6149d2f6cc0b474f1341a185583c7e92a9c3d9c41e8f4abf37e9806504`  
		Last Modified: Sat, 07 Jul 2018 11:11:54 GMT  
		Size: 3.4 KB (3356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php5.6-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:71eb24e498edbf2acbfb0f3a8b2259026d4e792250f603abc7461520691d3735
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133851501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad023b370a62a828150453ff918651d946197422a62fd37f107ec024657a8e94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 27 Jun 2018 10:54:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:54:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 10:54:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 10:54:10 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 10:54:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 10:54:16 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 10:54:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 10:54:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 10:54:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 10:54:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 10:54:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 10:54:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 12:15:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 27 Jun 2018 12:15:37 GMT
ENV PHP_VERSION=5.6.36
# Wed, 27 Jun 2018 12:15:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 12:15:40 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Wed, 27 Jun 2018 12:17:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 12:17:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 12:24:39 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:24:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 12:24:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:24:42 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 12:24:46 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 12:24:53 GMT
CMD ["apache2-foreground"]
# Wed, 27 Jun 2018 17:44:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:44:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Jun 2018 17:44:14 GMT
RUN a2enmod rewrite expires
# Wed, 27 Jun 2018 17:44:15 GMT
VOLUME [/var/www/html]
# Sat, 07 Jul 2018 09:36:47 GMT
ENV WORDPRESS_VERSION=4.9.7
# Sat, 07 Jul 2018 09:36:47 GMT
ENV WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d
# Sat, 07 Jul 2018 09:37:01 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 07 Jul 2018 09:37:08 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 07 Jul 2018 09:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 09:37:14 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:c56c57d85ddd97ba389ff8ed68a21baa5ba6555367f48526035d9970f46af9ed`  
		Last Modified: Wed, 27 Jun 2018 12:50:00 GMT  
		Size: 17.3 MB (17335593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8f149c22b8466ca2c5a561bb6c0284c0e6f543142a9bca694e5caa37067b58`  
		Last Modified: Wed, 27 Jun 2018 12:49:52 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15fa12ad02afc1e8c3229b0b476cc7653af1003471a056a43a85ac97d3ddbc6`  
		Last Modified: Wed, 27 Jun 2018 12:49:50 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15620f22071bc6b05bb49fb4a2f064a66be3548595abf3388d476ee29cc25b4`  
		Last Modified: Wed, 27 Jun 2018 12:49:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ceb1525b82638539da4da6cbe6741394bdf64396af91ca10dc9c2616cfc544f`  
		Last Modified: Wed, 27 Jun 2018 12:49:49 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3168eb47516eafae69d7a07cc6b66fda5eafb17b6538bd0ed3a5a70f277a361b`  
		Last Modified: Wed, 27 Jun 2018 13:03:35 GMT  
		Size: 12.8 MB (12815466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b261767864af6cf5a38b4dfd3cd6ce33a5aa367906783e443b36bf0214f220`  
		Last Modified: Wed, 27 Jun 2018 13:03:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a014dab28a11919c9175ee9c9216b95e5725d88d7252abb110cafe2f8c23b7`  
		Last Modified: Wed, 27 Jun 2018 13:03:36 GMT  
		Size: 9.5 MB (9513088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a6bcf2fc4fa02b1c0bc44f0a5edb2b33e4e25c357ed194c811332ab595d4ea`  
		Last Modified: Wed, 27 Jun 2018 13:03:34 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03043e7647a65d39e59aae0a7e7efd14f92a0c072453fc4b617d9cfe4fe156`  
		Last Modified: Wed, 27 Jun 2018 13:03:34 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891d755b243efc9f9e346ffbeaf4589694732f98c0a45169e842374287f35543`  
		Last Modified: Wed, 27 Jun 2018 18:10:19 GMT  
		Size: 980.4 KB (980354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b436329f2733b81c2ba92c9a90095cfc9cb1803a36c84bf0d95a864b9633db12`  
		Last Modified: Wed, 27 Jun 2018 18:10:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab150f124df1f9639f86a70d419395ecc1019a16a70f2b220c6cc1b5591b007`  
		Last Modified: Wed, 27 Jun 2018 18:10:19 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938d875b7b0a5a7a69326a6af08bf546e4b9d22ae202412977f46a17cd2dc5ce`  
		Last Modified: Sat, 07 Jul 2018 09:48:38 GMT  
		Size: 8.6 MB (8601067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b431c472a9661afa9afc1579780c9aacfb793e568cba7873b8d45876408fad0c`  
		Last Modified: Sat, 07 Jul 2018 09:48:36 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php5.6-apache` - linux; s390x

```console
$ docker pull wordpress@sha256:0cb9850b5fde6d298878dcfc3b91bbab290c374b1f35090a7f22eaf05b7991a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152249205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f8be5eabfeb71e2e913a7f54a4acfa664397a18248b2c49c68e541b6441920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 22:55:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 22:55:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 22:59:30 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:59:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 09 Oct 2017 22:59:31 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 09 Oct 2017 22:59:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 09 Oct 2017 22:59:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 09 Oct 2017 22:59:33 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 09 Oct 2017 22:59:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 09 Oct 2017 22:59:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 09 Oct 2017 22:59:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 09 Oct 2017 22:59:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:59:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:59:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 23:26:32 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 31 Oct 2017 17:42:46 GMT
ENV PHP_VERSION=5.6.32
# Tue, 31 Oct 2017 17:42:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 31 Oct 2017 17:42:46 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Thu, 02 Nov 2017 23:46:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 02 Nov 2017 23:46:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 02 Nov 2017 23:49:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 02 Nov 2017 23:49:11 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 02 Nov 2017 23:49:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Nov 2017 23:49:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 02 Nov 2017 23:49:11 GMT
WORKDIR /var/www/html
# Thu, 02 Nov 2017 23:49:12 GMT
EXPOSE 80/tcp
# Thu, 02 Nov 2017 23:49:12 GMT
CMD ["apache2-foreground"]
# Sat, 26 May 2018 13:37:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:37:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 26 May 2018 13:37:51 GMT
RUN a2enmod rewrite expires
# Sat, 26 May 2018 13:37:51 GMT
VOLUME [/var/www/html]
# Sat, 07 Jul 2018 12:07:54 GMT
ENV WORDPRESS_VERSION=4.9.7
# Sat, 07 Jul 2018 12:07:54 GMT
ENV WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d
# Sat, 07 Jul 2018 12:07:56 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 07 Jul 2018 12:07:58 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 07 Jul 2018 12:07:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:07:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb66856860b5de241911f00d4159df363cf63a303d18ae7437e405aa3162e7`  
		Last Modified: Mon, 09 Oct 2017 23:36:47 GMT  
		Size: 64.0 MB (63980038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38a4e89ae8f8496f476f2092ceb43def00c3fc728237b0f3ced18375fcc3431`  
		Last Modified: Mon, 09 Oct 2017 23:36:16 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa08f5a322d716bc344e329f44d60ef75a976fd0ea5e530d59e527eeb8ecf40`  
		Last Modified: Mon, 09 Oct 2017 23:37:17 GMT  
		Size: 3.0 MB (3022574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf2af7622cabd637a262403d1aa90e8652eaf888035388a5660f2ef299f527e`  
		Last Modified: Mon, 09 Oct 2017 23:37:16 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dacb3b3a74e99a7a6559d4fe5b12de5023afcdc29fceda3e8efd5fd290a836a`  
		Last Modified: Mon, 09 Oct 2017 23:37:15 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b49a00cab668863e82ada97435faf0487a821fbddf62dfda16d67241390f3ba`  
		Last Modified: Mon, 09 Oct 2017 23:37:15 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0226e5908d56361a72c804c781675ed4f60c645aadda58418219637e6872196b`  
		Last Modified: Mon, 09 Oct 2017 23:37:15 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4747f0be820a2249f352303624752b069c1a6edfb514fb965dcf0a440c5602`  
		Last Modified: Fri, 03 Nov 2017 00:14:51 GMT  
		Size: 12.8 MB (12816115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa0c91ea082467d4591d5bb38b03dde3608e2ce83230695c1c137386e2aabfb`  
		Last Modified: Fri, 03 Nov 2017 00:14:49 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecabe806d92c61e5ab36ea2245ea3f947b36eefa4ab06dc18c032658b2871c41`  
		Last Modified: Fri, 03 Nov 2017 00:14:53 GMT  
		Size: 10.0 MB (9952948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d55f6a2617ff775e13cae3e199f04b4ae085c80cfcf5e710ba51552550f794c`  
		Last Modified: Fri, 03 Nov 2017 00:14:49 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e6cfaadf87c92a53fc277c591f91664901d75437f7b2028a5da68272813583`  
		Last Modified: Fri, 03 Nov 2017 00:14:49 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05306e49df2064d33ea72ca9893967bf5f00856ceb6d7e2bcce56bd90201c698`  
		Last Modified: Sat, 26 May 2018 13:45:28 GMT  
		Size: 1.1 MB (1077373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cc02cd5a502fe5b01ccd284b114c73c092d05145d90968d850205fde8a28`  
		Last Modified: Sat, 26 May 2018 13:45:27 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe781edc8f082a5766e721d73969d38c87e5cf5c775019fe9576b726a4d9678a`  
		Last Modified: Sat, 26 May 2018 13:45:28 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c44d17e29a51c18c76b347a4430bd47993b70cbd4ec709d9fd5ed007379270`  
		Last Modified: Sat, 07 Jul 2018 12:09:35 GMT  
		Size: 8.6 MB (8601063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83f2f2bf19ea7c0e1c3c30d472d721ab8ade75f2762244dad01ef132a7ef988`  
		Last Modified: Sat, 07 Jul 2018 12:09:30 GMT  
		Size: 3.4 KB (3363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
