## `drupal:latest`

```console
$ docker pull drupal@sha256:b1494562f5f9c3df48d68cf3aa6f54cbb0b2194a74d0f1d1b71e5dee319f46ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `drupal:latest` - linux; amd64

```console
$ docker pull drupal@sha256:019acd1f8d515451b0baee2c790b1af437af5e880020e684ce444db681e15020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151859614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161c52aadd5c29def383a425a792f0ac63b9bd8e31ffe397b0735f06d16a6422`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:49:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 04:49:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 04:50:16 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:50:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 04:50:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 04:55:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:55:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jul 2018 04:55:10 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jul 2018 04:55:11 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jul 2018 04:55:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jul 2018 04:55:12 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jul 2018 04:55:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jul 2018 04:55:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jul 2018 04:55:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 17 Jul 2018 04:55:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 04:55:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 04:55:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 04:55:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 17 Jul 2018 04:55:27 GMT
ENV PHP_VERSION=7.2.7
# Tue, 17 Jul 2018 04:55:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 04:55:27 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Tue, 17 Jul 2018 04:55:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 04:55:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:58:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 04:58:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:58:39 GMT
RUN docker-php-ext-enable sodium
# Tue, 17 Jul 2018 04:58:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 04:58:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:58:40 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 04:58:40 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 04:58:40 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jul 2018 19:08:10 GMT
RUN set -ex; 		if command -v a2enmod; then 		a2enmod rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install -j "$(nproc)" 		gd 		opcache 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:08:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jul 2018 19:08:20 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 19:08:20 GMT
ENV DRUPAL_VERSION=8.5.5
# Tue, 17 Jul 2018 19:08:20 GMT
ENV DRUPAL_MD5=4fee1348bbac85cae82d6634e7296b9f
# Tue, 17 Jul 2018 19:08:28 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a25f7e493029f541fc3c7ac66fdffdd5f8c4b9b33346031523d053177bb365`  
		Last Modified: Tue, 17 Jul 2018 06:59:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65632e89c5f4ef102bcd13b6e86baf954e0b902f688a46961d5ff0a36dddfebe`  
		Last Modified: Tue, 17 Jul 2018 07:00:01 GMT  
		Size: 67.4 MB (67428909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75fa32da8fd946b82c0447feac1f3c24330594492e3be74a516b18437d5306`  
		Last Modified: Tue, 17 Jul 2018 06:59:32 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bc7736db11de5eddd0f13bb1c28ebe5612a4fcf398c7c1077f446abbdfb935`  
		Last Modified: Tue, 17 Jul 2018 07:07:01 GMT  
		Size: 17.1 MB (17127402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c40cef4807e3464b2859ebb5e4ac179cfbc253a212ce725f3a5d27388f79fe`  
		Last Modified: Tue, 17 Jul 2018 07:06:54 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3507e55e5eba49288cb3c8ff469e5a772b31fe8d0b5d2dae06faff4a4d34318`  
		Last Modified: Tue, 17 Jul 2018 07:06:54 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6006cdfa16b487a3a92269f59ecf33b936311fb9934fd4a5b7775b46933fdfe`  
		Last Modified: Tue, 17 Jul 2018 07:06:53 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed406e3c880fbafac0ae7ab1a889a46f9ef17e86e3efd898158a3241a0518b`  
		Last Modified: Tue, 17 Jul 2018 07:06:52 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f035e54fc71b5bc6da9d63188ffa5d330554e34b6fc7f74f00ba21fdedceca3`  
		Last Modified: Tue, 17 Jul 2018 07:06:54 GMT  
		Size: 12.5 MB (12464466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105c29e10f0be3fb6eaaf09f0c48caf32889ad2b99163be54828f71e06510c01`  
		Last Modified: Tue, 17 Jul 2018 07:06:49 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492199b1791923639bca8ffa38b9b0ab26dde7fb0c84f1c50c51a4a4875b4ff2`  
		Last Modified: Tue, 17 Jul 2018 07:06:56 GMT  
		Size: 15.2 MB (15198423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7678c67fa7ccb9c0726cad5c86502f98757dc5fb85ab77acf8185731522df326`  
		Last Modified: Tue, 17 Jul 2018 07:06:50 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5d2ce43f6d85c9be3335f7f5b78f38f36417089830b016b0a16ddac21f34cb`  
		Last Modified: Tue, 17 Jul 2018 07:06:50 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21559d119f8aa22022b9a2e01437e814fa458280a88c6fcbf93ac056381db51`  
		Last Modified: Tue, 17 Jul 2018 07:06:49 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dc3f2dc2ff1611f6684e88acf82e5d4547c00fc1cba3848de1b9f4b41e3940`  
		Last Modified: Tue, 17 Jul 2018 19:19:25 GMT  
		Size: 1.2 MB (1194215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e641a0eb1712050ec273e7aa7613ae134097b037f696919c6d80ef0bc804f62b`  
		Last Modified: Tue, 17 Jul 2018 19:19:24 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa196d5f99f26971f2df9c6293bcf9f09401d0de76d868e64a97f8961df09599`  
		Last Modified: Tue, 17 Jul 2018 19:19:33 GMT  
		Size: 16.0 MB (15953293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:latest` - linux; arm variant v5

```console
$ docker pull drupal@sha256:6ec55600972243414869f644c3d6f21b1695e51615512c6ca740cb15e8e8f658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139195068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66abb30413a9c7d8aed32e28d1abdd2f92e0ee758d23a138ace916332a80589`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 17 Jul 2018 12:16:38 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 17 Jul 2018 12:16:38 GMT
ENV PHP_VERSION=7.2.7
# Tue, 17 Jul 2018 12:16:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 12:16:38 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Tue, 17 Jul 2018 12:16:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 12:16:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:19:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 12:19:42 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:19:43 GMT
RUN docker-php-ext-enable sodium
# Tue, 17 Jul 2018 12:19:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 12:19:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:19:44 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 12:19:45 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 12:19:45 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jul 2018 15:44:56 GMT
RUN set -ex; 		if command -v a2enmod; then 		a2enmod rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install -j "$(nproc)" 		gd 		opcache 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:44:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jul 2018 15:44:58 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 15:44:58 GMT
ENV DRUPAL_VERSION=8.5.5
# Tue, 17 Jul 2018 15:44:59 GMT
ENV DRUPAL_MD5=4fee1348bbac85cae82d6634e7296b9f
# Tue, 17 Jul 2018 15:45:09 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:bf6732bc68564e0940221056c2e97147bb441818a474484437b44e9d6ce1b18a`  
		Last Modified: Tue, 17 Jul 2018 14:13:07 GMT  
		Size: 12.5 MB (12462420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90f5ce4530d828a33cc3fe04f3cb7504917522fd312b8bfae4de3577763171e`  
		Last Modified: Tue, 17 Jul 2018 14:13:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e4cfbcf2903238784c67a5a39a1e72ee799969d26eb8cbdd781fdbf6cd56a`  
		Last Modified: Tue, 17 Jul 2018 14:13:09 GMT  
		Size: 14.4 MB (14376255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625cf9cd041fc512fc5658b0a5ac91f7bdc4210e6a45e36d8cb05715278a304`  
		Last Modified: Tue, 17 Jul 2018 14:13:04 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f3bdbc5873481110a0a9cabd5018cac95bca09ba78fe5bf6913d7a94f2830b`  
		Last Modified: Tue, 17 Jul 2018 14:13:05 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c3a324951a7ae3ada7a9936d1a9aa1e8377dbdd9600728bd020a23e19c5193`  
		Last Modified: Tue, 17 Jul 2018 14:13:04 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123bd88f977ef6771194895ef3541376854273ad33ddf3c600888b6e9e91a123`  
		Last Modified: Tue, 17 Jul 2018 15:54:33 GMT  
		Size: 1.1 MB (1134879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c062f849872dfc240c972ba78d4adb0afb212ebd3a350a6827b94dc9fd1727b`  
		Last Modified: Tue, 17 Jul 2018 15:54:33 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1666f32242ea2f3ed339c51d2e2d95ea5ad815b9f9af3c2d8959fac557a4f48e`  
		Last Modified: Tue, 17 Jul 2018 15:54:41 GMT  
		Size: 16.0 MB (15953455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:latest` - linux; arm variant v7

```console
$ docker pull drupal@sha256:2359a2682a60eb87e9adf5fc815c93319aa822fdeb260cf5ba138ab0c0e01675
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132029332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f9c8b4260eaf0190aecb2cf92d0cd11e06605c7857a95cd4864f3230223a1f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 17 Jul 2018 15:20:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 17 Jul 2018 15:20:20 GMT
ENV PHP_VERSION=7.2.7
# Tue, 17 Jul 2018 15:20:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 15:20:22 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Tue, 17 Jul 2018 15:20:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 15:20:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 15:23:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 15:23:11 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 17 Jul 2018 15:23:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 17 Jul 2018 15:23:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 15:23:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 17 Jul 2018 15:23:14 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 15:23:14 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 15:23:15 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jul 2018 19:53:36 GMT
RUN set -ex; 		if command -v a2enmod; then 		a2enmod rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install -j "$(nproc)" 		gd 		opcache 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:53:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jul 2018 19:53:37 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 19:53:38 GMT
ENV DRUPAL_VERSION=8.5.5
# Tue, 17 Jul 2018 19:53:38 GMT
ENV DRUPAL_MD5=4fee1348bbac85cae82d6634e7296b9f
# Tue, 17 Jul 2018 19:53:48 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:480712cea4e2bd84bfde197c44491cb4e7f859854eb0979677d3a615520c9de7`  
		Last Modified: Tue, 17 Jul 2018 17:17:47 GMT  
		Size: 12.5 MB (12462331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f03a7dfda19dad59c2c2beca6666dc07b076156983725c28e2eac676c09066`  
		Last Modified: Tue, 17 Jul 2018 17:17:44 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0fedd42002eb68fdb0bc294778086e63e5272baede7bbf7fb852107b05fd1`  
		Last Modified: Tue, 17 Jul 2018 17:17:49 GMT  
		Size: 13.5 MB (13548539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986651d73a8585ef28967f01be93e6fd57123c9efd72866a5b8d7b381214d8a5`  
		Last Modified: Tue, 17 Jul 2018 17:17:44 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04c9e120561003f9c078d94752e7151122399401d56085d2f1f7c7b593c603c`  
		Last Modified: Tue, 17 Jul 2018 17:17:44 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3b93a8fbcfc6bda4ac4d32e15e2cdbc88960c74ea559f9132271b04f22d2d7`  
		Last Modified: Tue, 17 Jul 2018 17:17:45 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314b3a3777798dbc568f357161364e911f55cdc1f6c7c5bd1e020a6a8a33c119`  
		Last Modified: Tue, 17 Jul 2018 20:02:25 GMT  
		Size: 1.1 MB (1062550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec6a46ea305acee7a65eafdf72fb5ded68be13567786755bc9992e152b6736`  
		Last Modified: Tue, 17 Jul 2018 20:02:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d9f54267c88a0bda827ecb55845c00363a66137daaf3aa58193bbcd934fe21`  
		Last Modified: Tue, 17 Jul 2018 20:02:35 GMT  
		Size: 16.0 MB (15953451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:latest` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:4544938e51c398a5d7d7c0403b44848a618a2336b630092fadc7adabdfd2e6f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138394754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536627ee0890708287a48f370f098e4db088abb7cfbad5397078121bb596d173`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 27 Jun 2018 12:29:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 28 Jun 2018 09:13:39 GMT
ENV PHP_VERSION=7.2.7
# Thu, 28 Jun 2018 09:13:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 09:13:41 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Thu, 28 Jun 2018 09:14:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 09:14:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:19:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 09:19:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:19:56 GMT
RUN docker-php-ext-enable sodium
# Thu, 28 Jun 2018 09:19:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 09:19:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:19:58 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 09:19:59 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 09:20:00 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 12:58:31 GMT
RUN set -ex; 		if command -v a2enmod; then 		a2enmod rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install -j "$(nproc)" 		gd 		opcache 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 12:58:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 12:58:33 GMT
WORKDIR /var/www/html
# Sat, 07 Jul 2018 08:45:49 GMT
ENV DRUPAL_VERSION=8.5.5
# Sat, 07 Jul 2018 08:45:50 GMT
ENV DRUPAL_MD5=4fee1348bbac85cae82d6634e7296b9f
# Sat, 07 Jul 2018 08:46:05 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:bc5af8bb055f80c390dabbab639fd8f9c74bbb9c1ca79be71f05539da5a3f22e`  
		Last Modified: Thu, 28 Jun 2018 11:31:27 GMT  
		Size: 12.5 MB (12463516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41e5170df31f13d8960a54644eb1a4d7dc9faed9c3bd12a0d680cf1fd4e3608`  
		Last Modified: Thu, 28 Jun 2018 11:31:23 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1eeb73ab8ef811136cd15995710298b0f4cdf4136b68733efe0732f767d664f`  
		Last Modified: Thu, 28 Jun 2018 11:31:28 GMT  
		Size: 14.2 MB (14176428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01ba8aeb4d4e3302cc976737e1f6fa9d194782b7c2f155bcb54dc449021b8`  
		Last Modified: Thu, 28 Jun 2018 11:31:23 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c23ada0ef6522535f3de6ef934995b267398f91bc7782024fabfa1f661e93e5`  
		Last Modified: Thu, 28 Jun 2018 11:31:23 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8857d1e9daeb42eab66a240c3efdcf5b753b257aa6bc10a3a64f89a44be855`  
		Last Modified: Thu, 28 Jun 2018 11:31:23 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6ab57d7e9a4002ca2920c4bcd02ca2ca3ebb022e7edb27693da53d27302d00`  
		Last Modified: Thu, 28 Jun 2018 13:10:42 GMT  
		Size: 1.1 MB (1109338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fcb479121eba9beb2ac948aab75015322237471656ede48669dbf66a976a0`  
		Last Modified: Thu, 28 Jun 2018 13:10:42 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1847e410aec6463031f9a57570f9a2f106226b198d4908fd728f321b41c8b`  
		Last Modified: Sat, 07 Jul 2018 08:48:35 GMT  
		Size: 16.0 MB (15953293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:latest` - linux; 386

```console
$ docker pull drupal@sha256:8401bf373c8d132238b63911aa23be0f2af75536f624d5c9d19f7b9a95cb5a14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683520054ab14d2c1b6b93eaa33c70036f093a704452caaba77057ff60fdce94`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:47:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 15:47:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 15:48:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:48:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 15:48:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 15:55:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:55:26 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jul 2018 15:55:26 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jul 2018 15:55:27 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jul 2018 15:55:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jul 2018 15:55:29 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jul 2018 15:55:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jul 2018 15:55:30 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jul 2018 15:55:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 17 Jul 2018 15:55:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:55:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:55:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 15:55:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 17 Jul 2018 15:55:32 GMT
ENV PHP_VERSION=7.2.7
# Tue, 17 Jul 2018 15:55:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 15:55:32 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Tue, 17 Jul 2018 15:55:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 15:55:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 15:59:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 15:59:34 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 17 Jul 2018 15:59:35 GMT
RUN docker-php-ext-enable sodium
# Tue, 17 Jul 2018 15:59:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 15:59:36 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 17 Jul 2018 15:59:36 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 15:59:36 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 15:59:37 GMT
CMD ["apache2-foreground"]
# Tue, 17 Jul 2018 23:18:25 GMT
RUN set -ex; 		if command -v a2enmod; then 		a2enmod rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install -j "$(nproc)" 		gd 		opcache 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:18:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jul 2018 23:18:35 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 23:18:35 GMT
ENV DRUPAL_VERSION=8.5.5
# Tue, 17 Jul 2018 23:18:35 GMT
ENV DRUPAL_MD5=4fee1348bbac85cae82d6634e7296b9f
# Tue, 17 Jul 2018 23:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373dbc1260a05667efc80f8be05f86f2c8e1ffd318e78ef63c8e46f89a458c23`  
		Last Modified: Tue, 17 Jul 2018 18:23:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5043b9e8c05fba62c02a7922de92abc9897582c1d42ef5b54fadd7729ed6724`  
		Last Modified: Tue, 17 Jul 2018 18:23:45 GMT  
		Size: 71.5 MB (71484260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7656a960ed9b5048a41ee9f4e43ba5a1be7cbf598652ea796b7e53d1f8d18c27`  
		Last Modified: Tue, 17 Jul 2018 18:23:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d55c28699d0ce3a61c5c0f364d0799467086dd003d195eb97ca63c366b8966`  
		Last Modified: Tue, 17 Jul 2018 18:28:04 GMT  
		Size: 17.6 MB (17562616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b133748d2cd4318f3ec6ea0f1998cd8f77a218613390cf7943002bcaef79cc`  
		Last Modified: Tue, 17 Jul 2018 18:27:56 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325bf5bf5aad0a669c355051eb4445912c81c9c9549bbdcd4b3a02f87a99f310`  
		Last Modified: Tue, 17 Jul 2018 18:27:54 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d60b473c0a464669f20241289f33594fc59d89e9a5ea002c20e9b6d85803afe`  
		Last Modified: Tue, 17 Jul 2018 18:27:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6870b5466e5e98dfb297ef40e21bbd2caf49384eee79fe8e5b62b9cd14bbcf`  
		Last Modified: Tue, 17 Jul 2018 18:27:52 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ca2142b54433089e0c30c533bca84dff7f87afcfb7361cf7a8bc79917b199d`  
		Last Modified: Tue, 17 Jul 2018 18:27:53 GMT  
		Size: 12.5 MB (12463974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d8adce408994d0c893a5222ee313e0915ca3adbb21823b5e8180e56c5a6dfb`  
		Last Modified: Tue, 17 Jul 2018 18:27:49 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19bac35da6e1e99c3157d51931755e088a26b36bc41517aabc68f5f88acf243`  
		Last Modified: Tue, 17 Jul 2018 18:27:57 GMT  
		Size: 15.6 MB (15637763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf0c55b5d1e5e751c7f44ab6111c3c80b230089eab89afd665555323e3cd1db`  
		Last Modified: Tue, 17 Jul 2018 18:27:49 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f801014668209dd3ce5c874f40bf0fcc0266b6d1411b7654bc26e9a65c0a85a`  
		Last Modified: Tue, 17 Jul 2018 18:27:50 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb1df77a705880f0c14b41e1977e27198eebceea58522e7e01264ecad2f1bd2`  
		Last Modified: Tue, 17 Jul 2018 18:27:49 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2739777a984ce4caf4052b0ff120b2d4374cddd73c20119c271ecbbbb724d13b`  
		Last Modified: Tue, 17 Jul 2018 23:28:31 GMT  
		Size: 1.3 MB (1251470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8212299a6eaa6ba0526eed520ebb737611129f917a784b0c92ffc53832bd2415`  
		Last Modified: Tue, 17 Jul 2018 23:28:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e369a7ceeab332148342219170b946c4aa471b4bf35175db4cacfc7bdc65f21e`  
		Last Modified: Tue, 17 Jul 2018 23:28:42 GMT  
		Size: 16.0 MB (15953293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:latest` - linux; ppc64le

```console
$ docker pull drupal@sha256:1851382de4cefdde8564fdc7dc7f45a5edd34fbcf17a3f7c098daa61825dd1bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146532023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9831773214b9ec1d7366fdb42ee07f1f36e51cf8ce27fa98385918c128e74fe`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 27 Jun 2018 10:54:24 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 28 Jun 2018 09:15:58 GMT
ENV PHP_VERSION=7.2.7
# Thu, 28 Jun 2018 09:16:00 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 09:16:01 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Thu, 28 Jun 2018 09:16:55 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 09:16:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:21:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 09:21:10 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:21:17 GMT
RUN docker-php-ext-enable sodium
# Thu, 28 Jun 2018 09:21:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 09:21:20 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 09:21:20 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 09:21:23 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 09:21:24 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 11:42:17 GMT
RUN set -ex; 		if command -v a2enmod; then 		a2enmod rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install -j "$(nproc)" 		gd 		opcache 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 11:42:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 11:42:28 GMT
WORKDIR /var/www/html
# Sat, 07 Jul 2018 08:16:58 GMT
ENV DRUPAL_VERSION=8.5.5
# Sat, 07 Jul 2018 08:16:59 GMT
ENV DRUPAL_MD5=4fee1348bbac85cae82d6634e7296b9f
# Sat, 07 Jul 2018 08:17:10 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:cdfe37c56bbe3ac97f323055cd0dee74ae2ef42da85c1c74a0ec553044c1cef2`  
		Last Modified: Thu, 28 Jun 2018 11:03:57 GMT  
		Size: 12.5 MB (12463299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62cc12e28335a9a0f3dba17a99279a59f4c5bce001286c5a53129911499db6c`  
		Last Modified: Thu, 28 Jun 2018 11:03:53 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f522fea22c3be64e884b7cb14167cbca2e1c67c6669f585846cb548f19f8e212`  
		Last Modified: Thu, 28 Jun 2018 11:04:00 GMT  
		Size: 15.0 MB (14977282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ca035880da8fdcd76094adba8771f33c4177e6211de17930797a75018279f4`  
		Last Modified: Thu, 28 Jun 2018 11:03:52 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2883ebc1f2e9df9c78d90db88ff3b5c364aa804b323969221886ef3ca7a819ef`  
		Last Modified: Thu, 28 Jun 2018 11:03:53 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61173c03f2ce351f0544fe4d8253d3c169a199bb367970b7a37559ae8759bd9c`  
		Last Modified: Thu, 28 Jun 2018 11:03:52 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1440c5b9d72ba6f84510f4a332eb7803c1397616a5083ae3be448d9027d6d5c1`  
		Last Modified: Thu, 28 Jun 2018 11:58:13 GMT  
		Size: 1.2 MB (1199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad4b5a313e7b0e5fd0b9e16c712b6bb863bbce89a9b10a708bd2714a33ccbfa`  
		Last Modified: Thu, 28 Jun 2018 11:58:12 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7e3c7a21dda0f185f2d6b982dbafb667891bf3344de179ff26265fee9c95ca`  
		Last Modified: Sat, 07 Jul 2018 08:18:47 GMT  
		Size: 16.0 MB (15953455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
