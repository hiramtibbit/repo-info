<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `backdrop`

-	[`backdrop:1`](#backdrop1)
-	[`backdrop:1.10`](#backdrop110)
-	[`backdrop:1.10.1`](#backdrop1101)
-	[`backdrop:1.10.1-apache`](#backdrop1101-apache)
-	[`backdrop:1.10.1-fpm`](#backdrop1101-fpm)
-	[`backdrop:1.10-apache`](#backdrop110-apache)
-	[`backdrop:1.10-fpm`](#backdrop110-fpm)
-	[`backdrop:1-apache`](#backdrop1-apache)
-	[`backdrop:1-fpm`](#backdrop1-fpm)
-	[`backdrop:apache`](#backdropapache)
-	[`backdrop:fpm`](#backdropfpm)
-	[`backdrop:latest`](#backdroplatest)

## `backdrop:1`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.10`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1.10` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1.10` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.10.1`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1.10.1` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1.10.1` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.10.1-apache`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1.10.1-apache` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1.10.1-apache` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.10.1-fpm`

```console
$ docker pull backdrop@sha256:472c2db52cce0871ed5b60c0f16370cb027a9a8d24d2f965c1d8b8ee864a95cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1.10.1-fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:a41f69c3eb37b7bc0009a5a7998cb8b33cf2379785372ceeef28b9f0a774f665
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141887096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef579f48a43cd5511a6f24bcea2a96f00fb1305cf5f762170714a3e9df85673`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:06:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:06:27 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:06:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:06:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:12:46 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:48 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:12:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:12:50 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:12:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 05 Mar 2019 02:12:52 GMT
EXPOSE 9000
# Tue, 05 Mar 2019 02:12:52 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 11:20:25 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:20:25 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:20:29 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:20:30 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:20:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:20:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91982d846f10b58ae0cbdc38423efb300cbbf5f7f6639694a0d843d8a861f5ca`  
		Last Modified: Tue, 05 Mar 2019 03:27:49 GMT  
		Size: 12.5 MB (12492856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8acf3a0f684e990df35dc5ccb2b84ecd4f194510a65b02c8943ed718d477f2`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6e9f1179d9224372db14c53ac16bd57f20d7229bd75aae71f5b7efbfc6065c`  
		Last Modified: Tue, 05 Mar 2019 03:27:53 GMT  
		Size: 28.5 MB (28452201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4160e7843721dada7c61b2b33e394613ce37ff3feaf4102121a6d6e69715776`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df565bdd28c96d5631e72aa8948b63606cbd9b2a3a0c5e4287e64a43af5131d1`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d745501d4c93889157c5bd239f9c0c4aa1804e21a48bb83527f9cd70bd14634`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9c2e6e578e5d70bb2f3fad0fe8ca7f7d2631c7002bcfbb9bf4aba2e667c1ec`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 2.6 MB (2561738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9e94c7dea5c01c61dd6d1f28bac77a75d079fed15f4ee61ef54c9d14ec5c1`  
		Last Modified: Tue, 05 Mar 2019 11:21:04 GMT  
		Size: 8.4 MB (8424912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d400681cf65b07c6b857c0aec1965f1ef27f29490156a24906d7a8138562ffc1`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1.10.1-fpm` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:01b9114b956ce2af6b502bab70d467736f048e09996a6cf51a7e751d8a89a9c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128881778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b605ffa17fd662a3e534f234676b84c88911e88b8431d2148ecee4d70acba3f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:55:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:29:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:26:55 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:26:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:27:01 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:28:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:28:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:28:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:34 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:28:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:28:36 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:28:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:28:40 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:28:41 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 15:36:05 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:36:06 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:36:07 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:36:08 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:36:15 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:36:16 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:36:17 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471b381c08242798ef1032e558bdb22cce1364b2b8aaf22f736dac0edd4defbd`  
		Last Modified: Sat, 09 Feb 2019 13:47:56 GMT  
		Size: 12.5 MB (12491491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01f9dae798602e208cebcf3ad08ad532e7dbcc61b96428e7926c05b7ce19f13`  
		Last Modified: Sat, 09 Feb 2019 13:47:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25beb8b014f81e48f72e6384f7e51003f048415e5807bd3df72062e57fec14e`  
		Last Modified: Fri, 22 Feb 2019 15:04:30 GMT  
		Size: 27.6 MB (27605286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361119bc9235fd115e162614031ed2fca14ae938735f435512c4f0a45010564`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73383e01368590c23784ea9df58441550b6b9f17d49469a72fd541164d538897`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a3d07ecbcb48b4214c423fc159b4f0c417bf35207eaad838c7d9c52ffbd6c2`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5721ba0818bf9f3170ca8591e384cc9d544bc4a5fc350960edad6bac2194de`  
		Last Modified: Tue, 05 Mar 2019 15:37:31 GMT  
		Size: 2.4 MB (2390954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d386fee994a59f864c70af28c9f7524a05aace4b471709763573e294b576c6`  
		Last Modified: Tue, 05 Mar 2019 15:37:34 GMT  
		Size: 8.4 MB (8424913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181621940329a6b9bdf856356dc09e119106a886a675447148c6523b0b875d89`  
		Last Modified: Tue, 05 Mar 2019 15:37:30 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.10-apache`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1.10-apache` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1.10-apache` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.10-fpm`

```console
$ docker pull backdrop@sha256:472c2db52cce0871ed5b60c0f16370cb027a9a8d24d2f965c1d8b8ee864a95cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1.10-fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:a41f69c3eb37b7bc0009a5a7998cb8b33cf2379785372ceeef28b9f0a774f665
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141887096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef579f48a43cd5511a6f24bcea2a96f00fb1305cf5f762170714a3e9df85673`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:06:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:06:27 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:06:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:06:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:12:46 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:48 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:12:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:12:50 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:12:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 05 Mar 2019 02:12:52 GMT
EXPOSE 9000
# Tue, 05 Mar 2019 02:12:52 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 11:20:25 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:20:25 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:20:29 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:20:30 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:20:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:20:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91982d846f10b58ae0cbdc38423efb300cbbf5f7f6639694a0d843d8a861f5ca`  
		Last Modified: Tue, 05 Mar 2019 03:27:49 GMT  
		Size: 12.5 MB (12492856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8acf3a0f684e990df35dc5ccb2b84ecd4f194510a65b02c8943ed718d477f2`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6e9f1179d9224372db14c53ac16bd57f20d7229bd75aae71f5b7efbfc6065c`  
		Last Modified: Tue, 05 Mar 2019 03:27:53 GMT  
		Size: 28.5 MB (28452201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4160e7843721dada7c61b2b33e394613ce37ff3feaf4102121a6d6e69715776`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df565bdd28c96d5631e72aa8948b63606cbd9b2a3a0c5e4287e64a43af5131d1`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d745501d4c93889157c5bd239f9c0c4aa1804e21a48bb83527f9cd70bd14634`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9c2e6e578e5d70bb2f3fad0fe8ca7f7d2631c7002bcfbb9bf4aba2e667c1ec`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 2.6 MB (2561738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9e94c7dea5c01c61dd6d1f28bac77a75d079fed15f4ee61ef54c9d14ec5c1`  
		Last Modified: Tue, 05 Mar 2019 11:21:04 GMT  
		Size: 8.4 MB (8424912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d400681cf65b07c6b857c0aec1965f1ef27f29490156a24906d7a8138562ffc1`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1.10-fpm` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:01b9114b956ce2af6b502bab70d467736f048e09996a6cf51a7e751d8a89a9c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128881778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b605ffa17fd662a3e534f234676b84c88911e88b8431d2148ecee4d70acba3f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:55:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:29:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:26:55 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:26:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:27:01 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:28:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:28:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:28:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:34 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:28:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:28:36 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:28:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:28:40 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:28:41 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 15:36:05 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:36:06 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:36:07 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:36:08 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:36:15 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:36:16 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:36:17 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471b381c08242798ef1032e558bdb22cce1364b2b8aaf22f736dac0edd4defbd`  
		Last Modified: Sat, 09 Feb 2019 13:47:56 GMT  
		Size: 12.5 MB (12491491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01f9dae798602e208cebcf3ad08ad532e7dbcc61b96428e7926c05b7ce19f13`  
		Last Modified: Sat, 09 Feb 2019 13:47:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25beb8b014f81e48f72e6384f7e51003f048415e5807bd3df72062e57fec14e`  
		Last Modified: Fri, 22 Feb 2019 15:04:30 GMT  
		Size: 27.6 MB (27605286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361119bc9235fd115e162614031ed2fca14ae938735f435512c4f0a45010564`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73383e01368590c23784ea9df58441550b6b9f17d49469a72fd541164d538897`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a3d07ecbcb48b4214c423fc159b4f0c417bf35207eaad838c7d9c52ffbd6c2`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5721ba0818bf9f3170ca8591e384cc9d544bc4a5fc350960edad6bac2194de`  
		Last Modified: Tue, 05 Mar 2019 15:37:31 GMT  
		Size: 2.4 MB (2390954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d386fee994a59f864c70af28c9f7524a05aace4b471709763573e294b576c6`  
		Last Modified: Tue, 05 Mar 2019 15:37:34 GMT  
		Size: 8.4 MB (8424913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181621940329a6b9bdf856356dc09e119106a886a675447148c6523b0b875d89`  
		Last Modified: Tue, 05 Mar 2019 15:37:30 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1-apache`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1-apache` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1-apache` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1-fpm`

```console
$ docker pull backdrop@sha256:472c2db52cce0871ed5b60c0f16370cb027a9a8d24d2f965c1d8b8ee864a95cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1-fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:a41f69c3eb37b7bc0009a5a7998cb8b33cf2379785372ceeef28b9f0a774f665
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141887096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef579f48a43cd5511a6f24bcea2a96f00fb1305cf5f762170714a3e9df85673`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:06:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:06:27 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:06:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:06:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:12:46 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:48 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:12:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:12:50 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:12:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 05 Mar 2019 02:12:52 GMT
EXPOSE 9000
# Tue, 05 Mar 2019 02:12:52 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 11:20:25 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:20:25 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:20:29 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:20:30 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:20:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:20:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91982d846f10b58ae0cbdc38423efb300cbbf5f7f6639694a0d843d8a861f5ca`  
		Last Modified: Tue, 05 Mar 2019 03:27:49 GMT  
		Size: 12.5 MB (12492856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8acf3a0f684e990df35dc5ccb2b84ecd4f194510a65b02c8943ed718d477f2`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6e9f1179d9224372db14c53ac16bd57f20d7229bd75aae71f5b7efbfc6065c`  
		Last Modified: Tue, 05 Mar 2019 03:27:53 GMT  
		Size: 28.5 MB (28452201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4160e7843721dada7c61b2b33e394613ce37ff3feaf4102121a6d6e69715776`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df565bdd28c96d5631e72aa8948b63606cbd9b2a3a0c5e4287e64a43af5131d1`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d745501d4c93889157c5bd239f9c0c4aa1804e21a48bb83527f9cd70bd14634`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9c2e6e578e5d70bb2f3fad0fe8ca7f7d2631c7002bcfbb9bf4aba2e667c1ec`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 2.6 MB (2561738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9e94c7dea5c01c61dd6d1f28bac77a75d079fed15f4ee61ef54c9d14ec5c1`  
		Last Modified: Tue, 05 Mar 2019 11:21:04 GMT  
		Size: 8.4 MB (8424912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d400681cf65b07c6b857c0aec1965f1ef27f29490156a24906d7a8138562ffc1`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1-fpm` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:01b9114b956ce2af6b502bab70d467736f048e09996a6cf51a7e751d8a89a9c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128881778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b605ffa17fd662a3e534f234676b84c88911e88b8431d2148ecee4d70acba3f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:55:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:29:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:26:55 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:26:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:27:01 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:28:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:28:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:28:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:34 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:28:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:28:36 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:28:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:28:40 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:28:41 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 15:36:05 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:36:06 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:36:07 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:36:08 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:36:15 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:36:16 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:36:17 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471b381c08242798ef1032e558bdb22cce1364b2b8aaf22f736dac0edd4defbd`  
		Last Modified: Sat, 09 Feb 2019 13:47:56 GMT  
		Size: 12.5 MB (12491491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01f9dae798602e208cebcf3ad08ad532e7dbcc61b96428e7926c05b7ce19f13`  
		Last Modified: Sat, 09 Feb 2019 13:47:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25beb8b014f81e48f72e6384f7e51003f048415e5807bd3df72062e57fec14e`  
		Last Modified: Fri, 22 Feb 2019 15:04:30 GMT  
		Size: 27.6 MB (27605286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361119bc9235fd115e162614031ed2fca14ae938735f435512c4f0a45010564`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73383e01368590c23784ea9df58441550b6b9f17d49469a72fd541164d538897`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a3d07ecbcb48b4214c423fc159b4f0c417bf35207eaad838c7d9c52ffbd6c2`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5721ba0818bf9f3170ca8591e384cc9d544bc4a5fc350960edad6bac2194de`  
		Last Modified: Tue, 05 Mar 2019 15:37:31 GMT  
		Size: 2.4 MB (2390954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d386fee994a59f864c70af28c9f7524a05aace4b471709763573e294b576c6`  
		Last Modified: Tue, 05 Mar 2019 15:37:34 GMT  
		Size: 8.4 MB (8424913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181621940329a6b9bdf856356dc09e119106a886a675447148c6523b0b875d89`  
		Last Modified: Tue, 05 Mar 2019 15:37:30 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:apache`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:apache` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:apache` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:fpm`

```console
$ docker pull backdrop@sha256:472c2db52cce0871ed5b60c0f16370cb027a9a8d24d2f965c1d8b8ee864a95cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:a41f69c3eb37b7bc0009a5a7998cb8b33cf2379785372ceeef28b9f0a774f665
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141887096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef579f48a43cd5511a6f24bcea2a96f00fb1305cf5f762170714a3e9df85673`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 05 Mar 2019 01:36:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:36:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:06:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:06:27 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:06:28 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:06:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:06:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:12:46 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:12:48 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:12:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:12:50 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:12:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 05 Mar 2019 02:12:52 GMT
EXPOSE 9000
# Tue, 05 Mar 2019 02:12:52 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 11:20:25 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:20:25 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:20:25 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:20:29 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:20:30 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:20:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:20:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91982d846f10b58ae0cbdc38423efb300cbbf5f7f6639694a0d843d8a861f5ca`  
		Last Modified: Tue, 05 Mar 2019 03:27:49 GMT  
		Size: 12.5 MB (12492856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8acf3a0f684e990df35dc5ccb2b84ecd4f194510a65b02c8943ed718d477f2`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6e9f1179d9224372db14c53ac16bd57f20d7229bd75aae71f5b7efbfc6065c`  
		Last Modified: Tue, 05 Mar 2019 03:27:53 GMT  
		Size: 28.5 MB (28452201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4160e7843721dada7c61b2b33e394613ce37ff3feaf4102121a6d6e69715776`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df565bdd28c96d5631e72aa8948b63606cbd9b2a3a0c5e4287e64a43af5131d1`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d745501d4c93889157c5bd239f9c0c4aa1804e21a48bb83527f9cd70bd14634`  
		Last Modified: Tue, 05 Mar 2019 03:27:48 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9c2e6e578e5d70bb2f3fad0fe8ca7f7d2631c7002bcfbb9bf4aba2e667c1ec`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 2.6 MB (2561738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9e94c7dea5c01c61dd6d1f28bac77a75d079fed15f4ee61ef54c9d14ec5c1`  
		Last Modified: Tue, 05 Mar 2019 11:21:04 GMT  
		Size: 8.4 MB (8424912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d400681cf65b07c6b857c0aec1965f1ef27f29490156a24906d7a8138562ffc1`  
		Last Modified: Tue, 05 Mar 2019 11:21:02 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:fpm` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:01b9114b956ce2af6b502bab70d467736f048e09996a6cf51a7e751d8a89a9c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128881778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b605ffa17fd662a3e534f234676b84c88911e88b8431d2148ecee4d70acba3f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:55:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:55:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:29:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:26:55 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:26:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:27:01 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:28:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:28:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:28:31 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:28:34 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:28:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:28:36 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:28:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 22 Feb 2019 12:28:40 GMT
EXPOSE 9000
# Fri, 22 Feb 2019 12:28:41 GMT
CMD ["php-fpm"]
# Tue, 05 Mar 2019 15:36:05 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:36:06 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:36:07 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:36:08 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:36:15 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:36:16 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:36:17 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471b381c08242798ef1032e558bdb22cce1364b2b8aaf22f736dac0edd4defbd`  
		Last Modified: Sat, 09 Feb 2019 13:47:56 GMT  
		Size: 12.5 MB (12491491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01f9dae798602e208cebcf3ad08ad532e7dbcc61b96428e7926c05b7ce19f13`  
		Last Modified: Sat, 09 Feb 2019 13:47:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25beb8b014f81e48f72e6384f7e51003f048415e5807bd3df72062e57fec14e`  
		Last Modified: Fri, 22 Feb 2019 15:04:30 GMT  
		Size: 27.6 MB (27605286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361119bc9235fd115e162614031ed2fca14ae938735f435512c4f0a45010564`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73383e01368590c23784ea9df58441550b6b9f17d49469a72fd541164d538897`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a3d07ecbcb48b4214c423fc159b4f0c417bf35207eaad838c7d9c52ffbd6c2`  
		Last Modified: Fri, 22 Feb 2019 15:04:19 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5721ba0818bf9f3170ca8591e384cc9d544bc4a5fc350960edad6bac2194de`  
		Last Modified: Tue, 05 Mar 2019 15:37:31 GMT  
		Size: 2.4 MB (2390954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d386fee994a59f864c70af28c9f7524a05aace4b471709763573e294b576c6`  
		Last Modified: Tue, 05 Mar 2019 15:37:34 GMT  
		Size: 8.4 MB (8424913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181621940329a6b9bdf856356dc09e119106a886a675447148c6523b0b875d89`  
		Last Modified: Tue, 05 Mar 2019 15:37:30 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:latest`

```console
$ docker pull backdrop@sha256:a7f7b9eeba3751d28a20e87c6220c307c93265956f9f0422b71250892b248a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:latest` - linux; amd64

```console
$ docker pull backdrop@sha256:421321c290de05965bfc36bd7b400485323fdee356f3f20dbef952638d0b3923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145859072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7e49e4b7731f2c8d41af9d20593403896e9cb961ce405be09978514d78e1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_VERSION=7.2.15
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Tue, 05 Mar 2019 02:02:12 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Tue, 05 Mar 2019 02:02:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 05 Mar 2019 02:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 05 Mar 2019 02:06:11 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:12 GMT
RUN docker-php-ext-enable sodium
# Tue, 05 Mar 2019 02:06:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 05 Mar 2019 02:06:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 05 Mar 2019 02:06:14 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 02:06:14 GMT
EXPOSE 80
# Tue, 05 Mar 2019 02:06:15 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 11:14:23 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 11:17:33 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 11:17:33 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 11:17:33 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 11:17:38 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 11:17:38 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 11:17:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 11:17:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852bf3883bf8a00f84724fea20e72f17fbcb5a6328eb3bd33f86937022569872`  
		Last Modified: Tue, 05 Mar 2019 03:27:41 GMT  
		Size: 12.5 MB (12513712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5e0b946ad9043ad9137ae76c66adaea3bb75b9cb9d2e4f1059ea61fba6b81`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4f81e11b94747bd8aba15c3a2c6f9ccca1fcd41ae77abf4e435507a2ff129e`  
		Last Modified: Tue, 05 Mar 2019 03:27:43 GMT  
		Size: 15.3 MB (15260865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5dd8dc11ed8102c5fadcc0a91cf3d9da6941762c8444601f0e001007d79b3`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8575717bb21a927759afaf8689e18bfff893401de0acc67d6f36256d8d12a39b`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1343f569e18f62761e98a42af4792857fa8a8f83c222ab9d67873064f297a6`  
		Last Modified: Tue, 05 Mar 2019 03:27:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dcb2bd5228a2ab689f4ccf848c8ff920fa95dfc625c2d3b96df60860c86f0f`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec571b952258c0fd2895fd985490ba9bd7ad30510048adfbe0a8947493b21a11`  
		Last Modified: Tue, 05 Mar 2019 11:20:48 GMT  
		Size: 2.6 MB (2585172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f290cd58872fe5e528f637812535738d3eb838e706248c5c1c01c0bfd63d106`  
		Last Modified: Tue, 05 Mar 2019 11:20:50 GMT  
		Size: 8.4 MB (8424917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ca45fa7f55c23da1dd59514e68530834b6d7ee4b88e04dec5b39ffddcfeacf`  
		Last Modified: Tue, 05 Mar 2019 11:20:47 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:latest` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:3197e049c9b885513c71f260aa68ebe033164026d617e21ac0e4d84a5a0b7fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132615870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dd209e64d5fba77811a481c28065d00050e2e69443d5342f7309a80e524906`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Feb 2019 12:16:04 GMT
ENV PHP_VERSION=7.2.15
# Sat, 09 Feb 2019 12:16:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.15.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 12:16:06 GMT
ENV PHP_SHA256=75e90012faef700dffb29311f3d24fa25f1a5e0f70254a9b8d5c794e25e938ce PHP_MD5=
# Sat, 09 Feb 2019 12:17:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Feb 2019 12:17:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 22 Feb 2019 12:17:05 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 22 Feb 2019 12:17:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 22 Feb 2019 12:17:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:17:11 GMT
WORKDIR /var/www/html
# Fri, 22 Feb 2019 12:17:11 GMT
EXPOSE 80
# Fri, 22 Feb 2019 12:17:12 GMT
CMD ["apache2-foreground"]
# Tue, 05 Mar 2019 15:28:33 GMT
RUN a2enmod rewrite
# Tue, 05 Mar 2019 15:32:15 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 05 Mar 2019 15:32:15 GMT
WORKDIR /var/www/html
# Tue, 05 Mar 2019 15:32:16 GMT
ENV BACKDROP_VERSION=1.12.3
# Tue, 05 Mar 2019 15:32:17 GMT
ENV BACKDROP_MD5=bdb98834654f09d02abfa548e63bbcda
# Tue, 05 Mar 2019 15:32:24 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 05 Mar 2019 15:32:25 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Tue, 05 Mar 2019 15:32:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 15:32:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a609dd4e3b37c674bde05f31a75e3c3604685f48ad5fdd3b7f90d4f450049`  
		Last Modified: Sat, 09 Feb 2019 13:47:36 GMT  
		Size: 12.5 MB (12512537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b160549b636fad59bb5319425195424474f9db86f554b9fddffd35c6908f9`  
		Last Modified: Sat, 09 Feb 2019 13:47:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2edff59b749ee32634b8eb720523dacbf22d210ae8ffe8d1df6f68a5f8e957`  
		Last Modified: Fri, 22 Feb 2019 15:04:08 GMT  
		Size: 14.6 MB (14591887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e286ea5985c4777ca53259a7221194db80e7bb70c31863cb91231b5e9aef02e`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a96be41cd688f1d172f8ad41f0754c36447b80a086ae4b9f01447e6501c19b9`  
		Last Modified: Fri, 22 Feb 2019 15:04:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1b553eaecd3ac270ea0143414d145bfdfe7fd7d582261de72a12b2b121bbf4`  
		Last Modified: Fri, 22 Feb 2019 15:04:01 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bdc00e07a34d01319b1e55236aabdeae64d11d0ec6588c9559e0bb4f444c26`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab42b3546c328f3edcaef8f65613f84529db7802abaa34b194b8a385029cdff`  
		Last Modified: Tue, 05 Mar 2019 15:36:51 GMT  
		Size: 2.4 MB (2414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3666b3efe2fe75191e58c5f92e7086ced6cb26e070c3208175e10751a5b3efcc`  
		Last Modified: Tue, 05 Mar 2019 15:36:54 GMT  
		Size: 8.4 MB (8424927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a78d026ce29eae3b0efd98e7c8c67a7b9179d7f9f629d25338799e48ed1d6a`  
		Last Modified: Tue, 05 Mar 2019 15:36:49 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
