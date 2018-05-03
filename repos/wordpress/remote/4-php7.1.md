## `wordpress:4-php7.1`

```console
$ docker pull wordpress@sha256:66d163e3e61bc7033cd0c4d2149e9c0f3742ae0d3ace92841f6ab08a7f6b31d6
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

### `wordpress:4-php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:3e5402175b6faf71e09cdef3534d648a47c69266704dc615bf9c498551b3d8a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169688780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6565f0810454c3530f5cd111438c9c033b2651c3b298665b427cad45ee783f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 22:07:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 22:07:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 22:08:18 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 22:08:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 22:08:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 22:23:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 22:23:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 22:23:11 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 22:23:11 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 22:23:12 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 22:23:13 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 22:23:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 22:23:14 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 22:23:14 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 22:23:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 22:23:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 22:23:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 30 Apr 2018 22:23:15 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Mon, 30 Apr 2018 22:23:16 GMT
ENV PHP_VERSION=7.1.16
# Mon, 30 Apr 2018 22:23:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Mon, 30 Apr 2018 22:23:16 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Mon, 30 Apr 2018 22:23:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 30 Apr 2018 22:23:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 30 Apr 2018 22:26:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 30 Apr 2018 22:26:26 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 30 Apr 2018 22:26:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 30 Apr 2018 22:26:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 30 Apr 2018 22:26:27 GMT
WORKDIR /var/www/html
# Mon, 30 Apr 2018 22:26:28 GMT
EXPOSE 80/tcp
# Mon, 30 Apr 2018 22:26:28 GMT
CMD ["apache2-foreground"]
# Thu, 03 May 2018 10:55:34 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 10:55:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 03 May 2018 10:55:36 GMT
RUN a2enmod rewrite expires
# Thu, 03 May 2018 10:55:36 GMT
VOLUME [/var/www/html]
# Thu, 03 May 2018 10:55:36 GMT
ENV WORDPRESS_VERSION=4.9.5
# Thu, 03 May 2018 10:55:37 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Thu, 03 May 2018 10:55:39 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 03 May 2018 10:55:39 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 03 May 2018 10:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 May 2018 10:55:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bfdb6043a841abdd5bc9f7efcfa1281cc517fc2112f99db013793d2df9e9d7`  
		Last Modified: Tue, 01 May 2018 02:38:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327a3b8246c6014487246bf899947e96eeaff0e29d81cb620ea3e029a54d7111`  
		Last Modified: Tue, 01 May 2018 02:38:42 GMT  
		Size: 74.7 MB (74660760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3b73e77223911e268897f6a159b4df1c493624c5edf2d4d17cf8fddf9d0540`  
		Last Modified: Tue, 01 May 2018 02:38:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d8f2630b58471dbbfa1aaa1874e597d8fe1678edc9802287ef6a2a454dd9bc`  
		Last Modified: Tue, 01 May 2018 02:51:53 GMT  
		Size: 4.5 MB (4467149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5599b03aa14f59d4333b651fa56dd6d60785caf3201bf72cbbb1f5dfcc1b01b2`  
		Last Modified: Tue, 01 May 2018 02:51:50 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b5cca3ce534c7f00f42788cd703b7f6db116e75ddea4bf668bab2310373268`  
		Last Modified: Tue, 01 May 2018 02:51:49 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2946903117b36efdd86a74223d1813ea776ab9462f83d90cd516410d478c4eeb`  
		Last Modified: Tue, 01 May 2018 02:51:49 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4e5ea64a21b12488c6dd300615067f4dc5c0e6275ccd256c449965a5ce1336`  
		Last Modified: Tue, 01 May 2018 02:51:49 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72ecf85099545dd31e87ec823c37e9fd7c106c286b481f7248130c964459d04`  
		Last Modified: Tue, 01 May 2018 02:51:48 GMT  
		Size: 12.6 MB (12563748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a889f85bd001d1b06b31e375e2d6e098eef71e167903aaf19bdeb741e6e1bc4`  
		Last Modified: Tue, 01 May 2018 02:51:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905c5f11e64972c10bcc5afeff0e201135c1a1cb9ba39ffcbadc137f49758bd7`  
		Last Modified: Tue, 01 May 2018 02:51:50 GMT  
		Size: 14.2 MB (14206845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf3550dae26c37a5ebf45288e308db4efcc52bf9844ddf5493436faa4f84751`  
		Last Modified: Tue, 01 May 2018 02:51:47 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3eff1ef144e11c907e5fd50c31f7a64d25d4e4c70da9b937de61effc05ca58f`  
		Last Modified: Tue, 01 May 2018 02:51:47 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e55c0aefe6bef11e0d0bdbbf30ca36f5654cd5df66bc117d57feea3356fd6b`  
		Last Modified: Thu, 03 May 2018 12:34:03 GMT  
		Size: 1.1 MB (1095150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90cd0dc083b670c9a42d7d13b64f4ff4f579addfafef45b967e115648d6c963`  
		Last Modified: Thu, 03 May 2018 12:34:04 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb1e4d7cf38ae7d68639f7834e37c430c9854e1ab48cc179fd0e8d0a7ba9c34`  
		Last Modified: Thu, 03 May 2018 12:34:03 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd255ddeb5007899e62789046d051005f239c9111c1bce814d1ce5afc58144`  
		Last Modified: Thu, 03 May 2018 12:34:05 GMT  
		Size: 8.4 MB (8422123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3259f27cd166d5193b318c9a4bf417fd88c13de5378381064d85fa35ab8cce12`  
		Last Modified: Thu, 03 May 2018 12:34:03 GMT  
		Size: 3.4 KB (3357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:c8223cafb69d09ad8cd1fcf926daf9f396a188cc8cb769bfce70eb35ac2fac8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (152049298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ef01fa807028ceca7888cb45deefe5bff6b3c5d95fb589c3027c6e2643baa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:51:22 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 09:51:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 09:52:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:52:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 09:52:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 09:56:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:56:57 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 09:56:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 09:56:58 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 09:56:59 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 09:57:00 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 09:57:01 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 09:57:01 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 09:57:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 09:57:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 09:57:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 09:57:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 28 Apr 2018 09:57:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 28 Apr 2018 09:57:03 GMT
ENV PHP_VERSION=7.1.16
# Sat, 28 Apr 2018 09:57:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Sat, 28 Apr 2018 09:57:03 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Sat, 28 Apr 2018 09:57:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 28 Apr 2018 09:57:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 28 Apr 2018 10:00:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 28 Apr 2018 10:00:34 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 28 Apr 2018 10:00:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 28 Apr 2018 10:00:34 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 28 Apr 2018 10:00:35 GMT
WORKDIR /var/www/html
# Sat, 28 Apr 2018 10:00:35 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 10:00:35 GMT
CMD ["apache2-foreground"]
# Sat, 28 Apr 2018 14:21:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:21:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 28 Apr 2018 14:21:17 GMT
RUN a2enmod rewrite expires
# Sat, 28 Apr 2018 14:21:18 GMT
VOLUME [/var/www/html]
# Sat, 28 Apr 2018 14:21:18 GMT
ENV WORDPRESS_VERSION=4.9.5
# Sat, 28 Apr 2018 14:21:19 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Sat, 28 Apr 2018 14:21:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 28 Apr 2018 14:21:31 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 28 Apr 2018 14:21:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 14:21:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a193b8504eb6b9f5709d50765cb68dd66bd24bd9d03374d50dbb5cffa97a823`  
		Last Modified: Sat, 28 Apr 2018 10:46:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e56fb7ad870d3ded499c66179bafe9989e20182e7c168cd86b41879ad7b3d4`  
		Last Modified: Sat, 28 Apr 2018 10:46:49 GMT  
		Size: 59.8 MB (59830689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706a522f37f235db79b901d5f6575a64d3a7cdc04a0a61cf4c61bc9b8aa612de`  
		Last Modified: Sat, 28 Apr 2018 10:46:31 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe7c488506e2746ffc4b0b1903a8d5e307d223518b364d06f566d2f4f39a3a4`  
		Last Modified: Sat, 28 Apr 2018 10:47:52 GMT  
		Size: 4.2 MB (4181887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f25652c7088a430ca8705853328b5ac1aa3973277e1860902fe1a0987e4e37`  
		Last Modified: Sat, 28 Apr 2018 10:47:50 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f299653d9624ca1358a3e38a4d8305791c1e1cb868bdeb0574a43fbe7a4968a`  
		Last Modified: Sat, 28 Apr 2018 10:47:49 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7050523b403a5fdc40f04cd4f2823a0cb319c46891caecea0a09345b97c96807`  
		Last Modified: Sat, 28 Apr 2018 10:47:48 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ea686db3fec7350272129a41f19a5f12f62535cbc050fb7cd7d79610eca65f`  
		Last Modified: Sat, 28 Apr 2018 10:47:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e358d26099bc56e387584b7e0995e8896edfd664963ab0aaa61e84194c7489`  
		Last Modified: Sat, 28 Apr 2018 10:47:48 GMT  
		Size: 12.6 MB (12562101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac3d06092c27433d1079b70dd62d6b5d7e1f67d82cf79967511db43ed268c06`  
		Last Modified: Sat, 28 Apr 2018 10:47:46 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02772100aef3d04dae0146f18f84964e36fb90466b0c655df134394dd47fa042`  
		Last Modified: Sat, 28 Apr 2018 10:47:50 GMT  
		Size: 13.5 MB (13521616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722fffc97663d3ebf96cabeb23854e5b292f9e8fedd06545bc4cbe1aace551d1`  
		Last Modified: Sat, 28 Apr 2018 10:47:46 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fb62ebe33a45fe3ff6f703e927314be6569ec71d9078f9734159255daac5a`  
		Last Modified: Sat, 28 Apr 2018 10:47:46 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59cf1c65199233f40ad854aecb71f3307c8b0a66a0051dbaafffe21f399e4368`  
		Last Modified: Sat, 28 Apr 2018 14:33:18 GMT  
		Size: 1.1 MB (1064254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9efe06a51e5a12522984fcbcf5167b564cb02bd1a14a3fd958af56fc2266da9`  
		Last Modified: Sat, 28 Apr 2018 14:33:18 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1f347421165dce6b817c1f98edd5878191812e7808c281d1461be15da9fda0`  
		Last Modified: Sat, 28 Apr 2018 14:33:17 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c619d5502ce0cdf42fb147308867abf03e256c62c25ac4e6779422d1025f3f6`  
		Last Modified: Sat, 28 Apr 2018 14:33:20 GMT  
		Size: 8.4 MB (8422129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854f28953d24826bf93a392d219acb7045e54bef5d7acbf1241b3ea017663417`  
		Last Modified: Sat, 28 Apr 2018 14:33:19 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:6eb4fd6fceffd4371b279863b8de64b148eca5b2f7a742475fcf8323d9c18eb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149258942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d89f119d0ef3ff38cc7aeb32b7a6fa600cdb3b46157b44a842e00540b05bcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:03:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 13:03:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 13:04:00 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:04:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 13:04:02 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 13:09:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:09:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 13:09:14 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 13:09:21 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 13:09:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 13:09:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 13:09:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 13:10:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 13:10:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 13:10:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 13:10:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 13:10:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 28 Apr 2018 13:10:26 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 28 Apr 2018 13:10:26 GMT
ENV PHP_VERSION=7.1.16
# Sat, 28 Apr 2018 13:10:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Sat, 28 Apr 2018 13:10:33 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Sat, 28 Apr 2018 13:11:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 28 Apr 2018 13:11:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:14:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 28 Apr 2018 13:14:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:14:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 28 Apr 2018 13:14:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:14:27 GMT
WORKDIR /var/www/html
# Sat, 28 Apr 2018 13:14:39 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 13:14:45 GMT
CMD ["apache2-foreground"]
# Sat, 28 Apr 2018 18:05:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:05:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 28 Apr 2018 18:05:38 GMT
RUN a2enmod rewrite expires
# Sat, 28 Apr 2018 18:05:38 GMT
VOLUME [/var/www/html]
# Sat, 28 Apr 2018 18:05:39 GMT
ENV WORDPRESS_VERSION=4.9.5
# Sat, 28 Apr 2018 18:05:39 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Sat, 28 Apr 2018 18:05:42 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 28 Apr 2018 18:05:42 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 28 Apr 2018 18:05:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:05:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0213928c0dd5da95b9450a17fd7aca6a62773f1d859604d933b85305496942f8`  
		Last Modified: Sat, 28 Apr 2018 14:07:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11a9598525439d82f293c271f07eeb0da750ef1d07d2bd915257b06bdc54ba7`  
		Last Modified: Sat, 28 Apr 2018 14:07:26 GMT  
		Size: 60.3 MB (60305329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ebb7600419415b7d5e92d9da706a45ab80d6a05935aa9500eda8439e6fbba0`  
		Last Modified: Sat, 28 Apr 2018 14:07:09 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2a8df03cce6d6e17df72eb23620071523955f1c29fc9b8590092d6bebb18c1`  
		Last Modified: Sat, 28 Apr 2018 14:08:33 GMT  
		Size: 3.9 MB (3937953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab44e844fd35e9bf803614fa82299558c35a2da624feda7028f3ddd9fa99da3`  
		Last Modified: Sat, 28 Apr 2018 14:08:31 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baf37e386d0eedd565e1058b3a14c4d77d67269f6dc1969655821c754b670db`  
		Last Modified: Sat, 28 Apr 2018 14:08:30 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca16bee42f97d9bfd322f8043927352c88d874be67bb5af50cd8c88870751cb`  
		Last Modified: Sat, 28 Apr 2018 14:08:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f663ec1372b57b3c106e285698b9e001fd92e6a0b6e7c596461f48a2c3920d22`  
		Last Modified: Sat, 28 Apr 2018 14:08:29 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea5f5ab1d5886e8f1362abec071bf243abbcd3789a25dc8ad96cfe2bed60510`  
		Last Modified: Sat, 28 Apr 2018 14:08:29 GMT  
		Size: 12.6 MB (12562038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d6925e331d77bc02916f523eca68753ff51ce3959c6aa6c787c83bb155c86`  
		Last Modified: Sat, 28 Apr 2018 14:08:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305e46ccc3aa2851fd314d8c84f86e7a570d28626a644964d04f7c230b4c2ea6`  
		Last Modified: Sat, 28 Apr 2018 14:08:32 GMT  
		Size: 12.8 MB (12812836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433959cdd02be8e416b1dcedd5c221db57e37894360e636cb2044dd08aaf2968`  
		Last Modified: Sat, 28 Apr 2018 14:08:28 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14ce46a80356bede609eeadf3a973d81d9868ae12c21335e7b7f9c1af877658`  
		Last Modified: Sat, 28 Apr 2018 14:08:29 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8718ff34944739b23309fad0b29403d9b1f1d18bc3f9519972f993778bfc694e`  
		Last Modified: Sat, 28 Apr 2018 18:18:41 GMT  
		Size: 1.0 MB (1012358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb8e09fcd9093d67a5432e444086877203d41652f7f33b6f9d2dd2ab7972af`  
		Last Modified: Sat, 28 Apr 2018 18:18:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97a152b3992933b483afec9547b06b873ecf007bf57d2db2bd003a8738bae53`  
		Last Modified: Sat, 28 Apr 2018 18:18:40 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9034f403c7d33263c0dbe94d0d2d79bffa329326b6a13fd30c34b6cb8119cd54`  
		Last Modified: Sat, 28 Apr 2018 18:18:45 GMT  
		Size: 8.4 MB (8422134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6084546c85247fbce5b78ab17f293c37d768523b389542bef82d53f663f0d36a`  
		Last Modified: Sat, 28 Apr 2018 18:18:40 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:4931a19feba315f8b79e3ea93c99e055922600ffa196542dce74d450c71af47f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151882510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1f14169765e61601e4e0788f5fbab1b0308d450bfb04ea99b209f4b3bec4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 05:15:17 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 01 May 2018 05:15:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 01 May 2018 05:17:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 01 May 2018 05:17:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 01 May 2018 05:17:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 01 May 2018 05:28:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 05:28:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 01 May 2018 05:28:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 01 May 2018 05:28:56 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 01 May 2018 05:28:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 01 May 2018 05:29:00 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 01 May 2018 05:29:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 01 May 2018 05:29:03 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 01 May 2018 05:29:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 01 May 2018 05:29:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 01 May 2018 05:29:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 01 May 2018 05:29:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 01 May 2018 05:29:07 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 01 May 2018 05:29:08 GMT
ENV PHP_VERSION=7.1.16
# Tue, 01 May 2018 05:29:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Tue, 01 May 2018 05:29:10 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Tue, 01 May 2018 05:29:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 01 May 2018 05:29:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 01 May 2018 05:39:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 01 May 2018 05:40:01 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 01 May 2018 05:40:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 01 May 2018 05:40:03 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 01 May 2018 05:40:03 GMT
WORKDIR /var/www/html
# Tue, 01 May 2018 05:40:04 GMT
EXPOSE 80/tcp
# Tue, 01 May 2018 05:40:05 GMT
CMD ["apache2-foreground"]
# Tue, 01 May 2018 13:52:57 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 13:52:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 01 May 2018 13:53:01 GMT
RUN a2enmod rewrite expires
# Tue, 01 May 2018 13:53:01 GMT
VOLUME [/var/www/html]
# Tue, 01 May 2018 13:53:02 GMT
ENV WORDPRESS_VERSION=4.9.5
# Tue, 01 May 2018 13:53:03 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Tue, 01 May 2018 13:53:07 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 01 May 2018 13:53:08 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 01 May 2018 13:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 13:53:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e9e3d8bcce8661a6b24ab3cf077c1f0d54d8b307e06d39fa82bba2daa565b4`  
		Last Modified: Tue, 01 May 2018 07:21:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a93b5d1cd328d12fd18331407452b63291c71b9781769aa7df6058ba7976e`  
		Last Modified: Tue, 01 May 2018 07:21:57 GMT  
		Size: 61.0 MB (60977752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfe981d1ac7e42f0b4c549c8f6681b85fd93b16b4e4df0253f42bfb3dada59c`  
		Last Modified: Tue, 01 May 2018 07:21:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb30448d02c8b620cffb6fe393a96bfdc294275956ed769860d0b61d03744239`  
		Last Modified: Tue, 01 May 2018 07:22:58 GMT  
		Size: 4.1 MB (4124838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7218ceef8e457f612ea30895279fa069d8b14ea691143eaf97469ee64d85a2`  
		Last Modified: Tue, 01 May 2018 07:22:56 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc29f64939c9ae7fa78df9de5309ac7c07419f1b29529d310da47a53b66020c6`  
		Last Modified: Tue, 01 May 2018 07:22:55 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27eeb04dddf7f04c1f86fd2b827a489f9dddde4312c9eba4377e621dda79625c`  
		Last Modified: Tue, 01 May 2018 07:22:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c90bb74639603a1d77824f054676f7697fe70cbcee5b7c5b54c2d467d10ddc`  
		Last Modified: Tue, 01 May 2018 07:22:54 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4310dcdf262c8e979a2f4d1dc89c4f6af2d4c484057ba756e6622f63614c18ec`  
		Last Modified: Tue, 01 May 2018 07:22:54 GMT  
		Size: 12.6 MB (12562077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12f79f9ff85b2f8719e9cde11423de66210fc01e801c48b59952ed0502105ae`  
		Last Modified: Tue, 01 May 2018 07:22:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c55620c6940b20a51e4e2606bdc5167b1fc8d4a54f0e90ee70f358e4bbd9072`  
		Last Modified: Tue, 01 May 2018 07:22:57 GMT  
		Size: 13.3 MB (13296601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f7cf1dbc3da905b2f799526cfd39b3f4db7939bdce43156bb129e88d56a105`  
		Last Modified: Tue, 01 May 2018 07:22:52 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dc8d8a83a223c3992ec3ee32a375d3db5c64056dfb0d4b32898d8bec97ef05`  
		Last Modified: Tue, 01 May 2018 07:22:52 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd412851b0f50f7b31f1696aa1a15804803984a6525320338a443ee2a9b0f12`  
		Last Modified: Tue, 01 May 2018 14:11:58 GMT  
		Size: 1.0 MB (1041778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3cdabd9eb6582e8f546abfb5a939d129c35f2571127427d7ca58ea09ce523`  
		Last Modified: Tue, 01 May 2018 14:11:57 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476e045f640dc061450100f07ebcdb3c7fc2767b7aed087dd3926da8d0a463ea`  
		Last Modified: Tue, 01 May 2018 14:11:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b9963d0ad762de583da3dc91073d76c8fb20c6e1b84889b2b42824025e2d0f`  
		Last Modified: Tue, 01 May 2018 14:11:59 GMT  
		Size: 8.4 MB (8422123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f026e8d1ed7f450d7fe7960cc8d614ea5e304b87a9bb86feb938f3174550f1bc`  
		Last Modified: Tue, 01 May 2018 14:11:56 GMT  
		Size: 3.4 KB (3361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1` - linux; 386

```console
$ docker pull wordpress@sha256:d3091e327feccdce3a621b2cf933eeb37dc50c4e118b61fb21c3ed7ec37a8f33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175762481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0ba52563ce5eb21d7498914024647eced8e24ae36c8f8ec74f8e7b628c478`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 16:07:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 16:07:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 16:08:29 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:08:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 16:08:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 16:14:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:14:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 16:14:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 16:14:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 16:14:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 16:14:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 16:14:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 16:14:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 16:14:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 16:14:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 16:14:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 16:14:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 28 Apr 2018 16:14:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 28 Apr 2018 16:14:22 GMT
ENV PHP_VERSION=7.1.16
# Sat, 28 Apr 2018 16:14:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Sat, 28 Apr 2018 16:14:22 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Sat, 28 Apr 2018 16:14:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 28 Apr 2018 16:14:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 28 Apr 2018 16:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 28 Apr 2018 16:18:12 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 28 Apr 2018 16:18:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 28 Apr 2018 16:18:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 28 Apr 2018 16:18:13 GMT
WORKDIR /var/www/html
# Sat, 28 Apr 2018 16:18:13 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 16:18:13 GMT
CMD ["apache2-foreground"]
# Sun, 29 Apr 2018 00:16:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:16:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sun, 29 Apr 2018 00:16:42 GMT
RUN a2enmod rewrite expires
# Sun, 29 Apr 2018 00:16:42 GMT
VOLUME [/var/www/html]
# Sun, 29 Apr 2018 00:16:42 GMT
ENV WORDPRESS_VERSION=4.9.5
# Sun, 29 Apr 2018 00:16:42 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Sun, 29 Apr 2018 00:16:45 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sun, 29 Apr 2018 00:16:45 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sun, 29 Apr 2018 00:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 29 Apr 2018 00:16:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd18170ff2659cc2ddceaa6b03e3c3aa4ad13fe33d45d7744a899216dc16737a`  
		Last Modified: Sat, 28 Apr 2018 17:11:58 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8219d0249055ccdcf6641c37e9b225c4a8a2d3fa69412aa12329eaff95d777`  
		Last Modified: Sat, 28 Apr 2018 17:12:19 GMT  
		Size: 79.8 MB (79845560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d976645f1404d485fbe1f217b7455509e678a19baced0db974142ec2a5074a`  
		Last Modified: Sat, 28 Apr 2018 17:11:58 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e58b59f6f0e0c623e036b8b6bc597673d90953e58366538bdfda5e66ddb665`  
		Last Modified: Sat, 28 Apr 2018 17:13:02 GMT  
		Size: 4.7 MB (4650616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41eab62e5412705e8f6d4cdd90c16717ebea65e33b7ff234135c97645d1101`  
		Last Modified: Sat, 28 Apr 2018 17:13:00 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837a5d1ba2fb15da90a50de9afe4b843bde810daab67f040e5b717c430be8ff7`  
		Last Modified: Sat, 28 Apr 2018 17:12:59 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460c2ca6af708be44e7748f7f0210a0272dbfcd4170ca29af52a7a3e3db69d31`  
		Last Modified: Sat, 28 Apr 2018 17:13:00 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e054522fcbe28219345a080b9894682cbcf497416c5580e358252381ba3c421`  
		Last Modified: Sat, 28 Apr 2018 17:13:00 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccf2329167f95d7523d8c6dd301c50c1517560598ec43a16127c8a6465f6ba4`  
		Last Modified: Sat, 28 Apr 2018 17:13:01 GMT  
		Size: 12.6 MB (12563244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779aa187e55e4a071d9d96bfab94fe85f83e65a0b542ba55de7ea5d12b9ff077`  
		Last Modified: Sat, 28 Apr 2018 17:13:00 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b76ea4bd5373251c8c05a9c69e4b583df51d65fafab0855646a6cbc67fec3f`  
		Last Modified: Sat, 28 Apr 2018 17:13:05 GMT  
		Size: 14.7 MB (14662711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b14f8c86c14f388c8eef67668674a059c6198a402cd72e8489d856f229089c`  
		Last Modified: Sat, 28 Apr 2018 17:13:00 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3231cd0f385d2ac71ed8e96dedd6b5edba19ee9427f5c13a3026679f0fc31933`  
		Last Modified: Sat, 28 Apr 2018 17:13:00 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf0687aed4222a4c8592b6f7b11d0b42dfa8dcdfb1207756b039fb59395a8b`  
		Last Modified: Sun, 29 Apr 2018 00:23:54 GMT  
		Size: 1.1 MB (1121007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1484a89e3355815d102c617b68a97e213e7436a8871e2c1f42e35a2daddf73d5`  
		Last Modified: Sun, 29 Apr 2018 00:23:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a22f1965cc16158a6ae2271a2c47911c21705e6bb14170e65ba8665060387b`  
		Last Modified: Sun, 29 Apr 2018 00:23:53 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fd0c877fbcff6708bfcd816dd22ae0e42ae44be5d7a57672def54ef0e70745`  
		Last Modified: Sun, 29 Apr 2018 00:23:55 GMT  
		Size: 8.4 MB (8422123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4932bd8296e25eedeefbd046a0b110402524bfa753610212de75eeacd629bff8`  
		Last Modified: Sun, 29 Apr 2018 00:23:53 GMT  
		Size: 3.4 KB (3351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1` - linux; ppc64le

```console
$ docker pull wordpress@sha256:e951155f7b1a9b442fa69a0fd6ed93a839bab41930401eab250df4d813861bd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160161785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86e31660fb2a22c2529e858b3babdc74b4d4a7ad9b413edcdb0f4749b116b0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:41:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 10:41:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 10:42:43 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:42:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 10:42:48 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 10:50:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:50:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 10:50:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 10:50:10 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 10:50:12 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 10:50:14 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 10:50:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 10:50:16 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 10:50:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 10:50:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 10:50:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 10:50:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 28 Apr 2018 10:50:21 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 28 Apr 2018 10:50:21 GMT
ENV PHP_VERSION=7.1.16
# Sat, 28 Apr 2018 10:50:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Sat, 28 Apr 2018 10:50:23 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Sat, 28 Apr 2018 10:51:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 28 Apr 2018 10:51:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 28 Apr 2018 10:56:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 28 Apr 2018 10:56:12 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 28 Apr 2018 10:56:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 28 Apr 2018 10:56:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 28 Apr 2018 10:56:14 GMT
WORKDIR /var/www/html
# Sat, 28 Apr 2018 10:56:15 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 10:56:16 GMT
CMD ["apache2-foreground"]
# Sat, 28 Apr 2018 20:10:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:10:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 28 Apr 2018 20:10:33 GMT
RUN a2enmod rewrite expires
# Sat, 28 Apr 2018 20:10:33 GMT
VOLUME [/var/www/html]
# Sat, 28 Apr 2018 20:10:35 GMT
ENV WORDPRESS_VERSION=4.9.5
# Sat, 28 Apr 2018 20:10:36 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Sat, 28 Apr 2018 20:10:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 28 Apr 2018 20:10:43 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 28 Apr 2018 20:10:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 20:10:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57a3b897280fa0531b28f553be2bb8e02286f9d7fa57d4cad45895a78f6a22`  
		Last Modified: Sat, 28 Apr 2018 12:11:13 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba8e575d76eba8311538528d53b68bd87b1cb1374aa0b22dae4fbeb3f129617`  
		Last Modified: Sat, 28 Apr 2018 12:11:44 GMT  
		Size: 66.2 MB (66226119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca19563d733e42ed2dc8b03c406107199e00d70ac284614e402437d9707e4c6`  
		Last Modified: Sat, 28 Apr 2018 12:11:11 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dfe32278b0c4302291a2d005a66bf051f76047379691cff0e7d56184a9ba62`  
		Last Modified: Sat, 28 Apr 2018 12:13:01 GMT  
		Size: 4.3 MB (4332658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ad2a7d0ecb93d9dada90ea9584ee2ed6a382435797536c6d9b1eac486ce618`  
		Last Modified: Sat, 28 Apr 2018 12:12:59 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925462c03973e8cc305f3158047df01157a8718e02f8c7c894545c810c81185b`  
		Last Modified: Sat, 28 Apr 2018 12:12:59 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3589b9afe71d2e4984dcc987a759ed46236374c3d4f840c85248e1df7d6c1c`  
		Last Modified: Sat, 28 Apr 2018 12:12:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54458c0a95cb4fb3e5945bca7938869e8e102cf9cdcdca4e94dcb3d5f9620065`  
		Last Modified: Sat, 28 Apr 2018 12:12:56 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585222368b506fe77b193b98d7d8b52c6618d8ead9f9ef76b9c98a5b02df17a9`  
		Last Modified: Sat, 28 Apr 2018 12:12:57 GMT  
		Size: 12.6 MB (12561864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af039c7c3fa68d5b7d26d1be14cfd991f0934cdb5da25035d33c5f2af19ecc23`  
		Last Modified: Sat, 28 Apr 2018 12:12:54 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0540ef212fc6e07d7e9a00e04d87f3512b9bc5b0103320b677df8b346fc92a2`  
		Last Modified: Sat, 28 Apr 2018 12:12:59 GMT  
		Size: 14.1 MB (14119945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8f27e2dc1199887a32d0330455e101a36d6ca417aa768ca270b6ece5d70930`  
		Last Modified: Sat, 28 Apr 2018 12:12:55 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fc7a12ee27c625bb5d7a0d0ce2dc8c13e40d4e8fbb7aab2be1e0f93f1423a9`  
		Last Modified: Sat, 28 Apr 2018 12:12:54 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166064f4a89cf81dea81082205ce59b1fed65afb870c0a3911e1f5dc1454b003`  
		Last Modified: Sat, 28 Apr 2018 20:22:17 GMT  
		Size: 1.1 MB (1095666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024965a9c5374ecffcbd8cb1f05c37c700f21273c8a1741c55f32527415b232`  
		Last Modified: Sat, 28 Apr 2018 20:22:17 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4d1dc787d2e3c0e70b5649d89871eb10fea3ba9ec218d3c2824665759b601d`  
		Last Modified: Sat, 28 Apr 2018 20:22:17 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eac2532ff41414009472d1dd2fd90e6af1f98f41add145b75d0a9c6d62f581`  
		Last Modified: Sat, 28 Apr 2018 20:22:20 GMT  
		Size: 8.4 MB (8422129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e8733c140c1f9316d2a569c4e2b3ec486cb712349a0687ff0051d38c94f06`  
		Last Modified: Sat, 28 Apr 2018 20:22:17 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1` - linux; s390x

```console
$ docker pull wordpress@sha256:c12e6048a5a648dbbabaff104c11ca1a4ae998b7d0f125126ecb9e2e341ad849
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155668358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bae3f5c2ebec827e39c026a39150ad9c957f6f653c2ed13291559cb2772ddba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:36:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 13:36:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 13:36:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:36:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 13:36:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 13:40:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:40:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 13:40:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 13:40:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 13:40:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 13:40:41 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 13:40:41 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 13:40:41 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 13:40:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 13:40:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 13:40:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 13:40:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 28 Apr 2018 13:40:42 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 28 Apr 2018 13:40:43 GMT
ENV PHP_VERSION=7.1.16
# Sat, 28 Apr 2018 13:40:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror
# Sat, 28 Apr 2018 13:40:43 GMT
ENV PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1 PHP_MD5=
# Sat, 28 Apr 2018 13:40:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 28 Apr 2018 13:40:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:43:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 28 Apr 2018 13:43:27 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 28 Apr 2018 13:43:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:43:28 GMT
WORKDIR /var/www/html
# Sat, 28 Apr 2018 13:43:28 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 13:43:28 GMT
CMD ["apache2-foreground"]
# Sat, 28 Apr 2018 19:59:16 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:59:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 28 Apr 2018 19:59:17 GMT
RUN a2enmod rewrite expires
# Sat, 28 Apr 2018 19:59:17 GMT
VOLUME [/var/www/html]
# Sat, 28 Apr 2018 19:59:18 GMT
ENV WORDPRESS_VERSION=4.9.5
# Sat, 28 Apr 2018 19:59:18 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Sat, 28 Apr 2018 19:59:19 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 28 Apr 2018 19:59:20 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 28 Apr 2018 19:59:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 19:59:20 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c2c3153f8b90130ce9362e0427cf20e4c062e8342e24492df77f81d4312532`  
		Last Modified: Sat, 28 Apr 2018 14:20:57 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9d3757f94a9c59093dff823898651ef6b13984eab11753f1722f8d5f541515`  
		Last Modified: Sat, 28 Apr 2018 14:21:07 GMT  
		Size: 60.1 MB (60088580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d40a0edb248166128cfcd0a64e7298f1a6dc81de86306cd71dbe060dbbb4f`  
		Last Modified: Sat, 28 Apr 2018 14:20:55 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433c0872f67bca5f05a61985ab7f951b61943adb3b02349ab0f0520bb3dbb00b`  
		Last Modified: Sat, 28 Apr 2018 14:22:02 GMT  
		Size: 4.5 MB (4488660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed39cbb25234c6a2574d1bd7e09fb319316c36a894a1f203c4a3ede701f54164`  
		Last Modified: Sat, 28 Apr 2018 14:22:01 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638df4bf2addb0d4777548eef9bfaa812c1088d06f23076e736b402175dee44a`  
		Last Modified: Sat, 28 Apr 2018 14:22:01 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375c2ca9c26a62fe4da0baf841d7d7283a7a311cf60e08d804c1992969e7cdde`  
		Last Modified: Sat, 28 Apr 2018 14:22:00 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfddd2a31ceb4b13ff65d6ba9c906b2e31175af25185a97940c3ff312ab6f6c`  
		Last Modified: Sat, 28 Apr 2018 14:21:59 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5c05b38af62c43e7b06ca36d0469b66182e95b67c948af099d90109f05c27b`  
		Last Modified: Sat, 28 Apr 2018 14:21:59 GMT  
		Size: 12.6 MB (12561434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4213dfbfb199e7cbf1ada2b6f14e36d340562d3901e78a7fec6fed59199ba254`  
		Last Modified: Sat, 28 Apr 2018 14:21:58 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2e7f11e39c11ea652231fd502c4bd3ab9982b0620a2678b372a84465e93050`  
		Last Modified: Sat, 28 Apr 2018 14:22:02 GMT  
		Size: 14.5 MB (14513493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c42faf18f24abcca5c661487e2fef6540bd5a615a4e1e723b058f3bb70c95b9`  
		Last Modified: Sat, 28 Apr 2018 14:21:58 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652b9d28c8c49074432f8594d04fbe363e96d7d1482595bc978080863fcf3c7`  
		Last Modified: Sat, 28 Apr 2018 14:22:01 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e300b006363a8cbefdb0a9ab44e4c915bf244fec9c2b0dcd05e1506521c00843`  
		Last Modified: Sat, 28 Apr 2018 20:02:56 GMT  
		Size: 1.1 MB (1117759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be314baa32bb14715d1d054ccc60bf70acf8b2d97cd8a3aec1c0c6220c767d0f`  
		Last Modified: Sat, 28 Apr 2018 20:02:55 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5653161cfdf728ccdc47b250702742d11b0919d35fba918c89cac832e13a059`  
		Last Modified: Sat, 28 Apr 2018 20:02:55 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fda66bbd6e6b32117f31f49fd52e205e170a87df2412cbf5d6b3a38993dda04`  
		Last Modified: Sat, 28 Apr 2018 20:02:57 GMT  
		Size: 8.4 MB (8422122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018e80d5dddaacde4e7a30b2f82a1546f581e28a2982b84f103ad1f2500d33e1`  
		Last Modified: Sat, 28 Apr 2018 20:02:55 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
