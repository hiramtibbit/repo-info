## `wordpress:5-php7.3-apache`

```console
$ docker pull wordpress@sha256:9d817317caeca7a3f775d34eb7199fe559082beb3b619fbfd5db13bbf484d2fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:5-php7.3-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:effadcf034aeecbefd8491255b28ff01da60ebf7fcc66818ba3211dcdb1cf5eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146424519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcafc49115ef481f415700962e177b7a9384313bb4ab0746d82a76854d7c6b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 04:23:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 04:23:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 04:23:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:23:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 04:23:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 04:32:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:32:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 04:32:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 04:32:42 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 04:32:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 04:32:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:32:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 04:32:45 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 11 Jan 2019 00:27:54 GMT
ENV PHP_VERSION=7.3.1
# Fri, 11 Jan 2019 00:27:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 00:27:54 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Fri, 11 Jan 2019 00:28:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 00:28:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:31:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 00:31:48 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:31:49 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 00:31:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 00:31:49 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:31:49 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 00:31:50 GMT
EXPOSE 80
# Fri, 11 Jan 2019 00:31:50 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 03:43:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 03:43:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:43:49 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 03:43:49 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:43:49 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 03:43:49 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 03:43:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 03:43:53 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:43:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:43:54 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf89f2eda244c750e106e9751aa6714e8002accc9ebc4efe784800ff424e2a8`  
		Last Modified: Sat, 29 Dec 2018 08:46:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350207dcf1b7e69d73ee5e688ec3f1bb6576481773105b8635193dc7fe5010bb`  
		Last Modified: Sat, 29 Dec 2018 08:47:00 GMT  
		Size: 67.4 MB (67442723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a33d96b4e7acb10a1e637ccc316d5e823debfa5c64704b4935af982bd79926`  
		Last Modified: Sat, 29 Dec 2018 08:46:44 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0421d5b63d69a2ae480d7c5caa3d21f8105a682249c55f4923f655e73e2f492`  
		Last Modified: Sat, 29 Dec 2018 08:47:27 GMT  
		Size: 17.1 MB (17127964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76e300fbe727910ee01d0011a0d011f7cffe00483aea448496dbe49029aa8ad`  
		Last Modified: Sat, 29 Dec 2018 08:47:24 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9ff1b9ce5b028cb1a7c3ad2bc442aacb9a8ddd46cb8a41485b947536e3f4f6`  
		Last Modified: Sat, 29 Dec 2018 08:47:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f072d61771f0bc903b453eca2aa1816ee9aaae195e7be586492a38619c45ce`  
		Last Modified: Sat, 29 Dec 2018 08:47:23 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c94457449a71ee216b3fc88de474a608cd6647d4131ce836e15ac4b9c250c1`  
		Last Modified: Fri, 11 Jan 2019 01:51:51 GMT  
		Size: 12.3 MB (12294611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061d878d8c60fa27a5dad1269f910fd236567c22bdf9a9c8398f3859ba3d708a`  
		Last Modified: Fri, 11 Jan 2019 01:51:50 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627c95d37378dfb4ed90fbd1d2638dc5f27698f3e1f5ea0f5adbf1e035537dcb`  
		Last Modified: Fri, 11 Jan 2019 01:51:53 GMT  
		Size: 15.5 MB (15538976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f7c598a553db08d9bd465bd8d629e96221a29cab46e58523b33156ef04f3de`  
		Last Modified: Fri, 11 Jan 2019 01:51:49 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68448adda223e0e51296ae0bf93e734e7cb0fa662baaa48c0f6c8eec9543e1`  
		Last Modified: Fri, 11 Jan 2019 01:51:49 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98caedd73b8104d8154ef746eabe0daa9b633a395dff3046cd555bfaa6134fe`  
		Last Modified: Fri, 11 Jan 2019 01:51:49 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ff9ed2e889a155a76ca5417675c2a4d1b6d5e184d3bf1a98d1b07225fbc708`  
		Last Modified: Fri, 11 Jan 2019 03:56:00 GMT  
		Size: 1.1 MB (1138179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4eec34077d7865dfbb0d93cc422aef032c32eaaf4bef4cb9d33f5ffaaf4c0c`  
		Last Modified: Fri, 11 Jan 2019 03:55:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ab24e03001047e6223ec34134dadf298a1f175fd13e4210c0fcc2bf16008f6`  
		Last Modified: Fri, 11 Jan 2019 03:55:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e1ac8b2e746dd4a0ed0e6f49decf4d3b5970c4297c4687f0a5ef198efda0c5`  
		Last Modified: Fri, 11 Jan 2019 03:56:02 GMT  
		Size: 10.4 MB (10378150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629f39868c73139bfb48174a3fd09b110b99120370bf494dfabd2201bfe87e45`  
		Last Modified: Fri, 11 Jan 2019 03:55:59 GMT  
		Size: 3.8 KB (3789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.3-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:aea7b9425e2b42b824e5664dc17e56b584030f5387cbf2896f879762c9243e87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133763425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65f3df0bfe43b3564d9ed20c966a09acf4d3e8c7d42b0b3c1c5e6117f1d5718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:38:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 12:38:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 12:38:02 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 12:38:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 12:38:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 12:38:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:38:07 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 29 Dec 2018 12:38:08 GMT
ENV PHP_VERSION=7.3.0
# Sat, 29 Dec 2018 12:38:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.0.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:38:08 GMT
ENV PHP_SHA256=7d195cad55af8b288c3919c67023a14ff870a73e3acc2165a6d17a4850a560b5 PHP_MD5=
# Sat, 29 Dec 2018 12:38:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:38:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:41:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 12:41:35 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:41:36 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 12:41:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 12:41:37 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:41:38 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 12:41:38 GMT
EXPOSE 80
# Sat, 29 Dec 2018 12:41:38 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 10:45:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 10:45:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 10:45:08 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 10:45:08 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 10:45:08 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 10:45:09 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 10:45:14 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 10:45:15 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:45:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:45:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafbaeb7163888e37cf64fb46e91b2cf58eac8540c395f64883103d3bfcf5064`  
		Last Modified: Sat, 29 Dec 2018 15:12:10 GMT  
		Size: 16.7 MB (16654350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b40f80c9fbf4364d92fdd25059fe5e0c2070334338daf628dec7751de40bd2`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d447d810b660e4c7c64129caf2a8dc24381d6de1e85c964ef7b832a1e02a`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f34a587aa02846d8add6902c1ef4c05955469cf14e7a66b9d752cace0679d3`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36880deee26710d963665eaed36d70f1d97c6f4e28c938146fd4944d6160cdb1`  
		Last Modified: Sat, 29 Dec 2018 15:12:06 GMT  
		Size: 12.3 MB (12276956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9a5899681051016ae3726dd19b3bef9ce8b8dafee61eab227f5cb905be8ae3`  
		Last Modified: Sat, 29 Dec 2018 15:12:02 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f9d66a79574fc4dfb9882a3f425691d862044280ac84c539595c99a0de6fcd`  
		Last Modified: Sat, 29 Dec 2018 15:12:09 GMT  
		Size: 14.7 MB (14720653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ef1116abefdccf0d77b344fa8780a962356a239ef5dd89343b8e7744cd2caf`  
		Last Modified: Sat, 29 Dec 2018 15:12:02 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d5a1b1d9c85308aa70bafe7feda8165f2cff2a3298410f5cc54b13129a2768`  
		Last Modified: Sat, 29 Dec 2018 15:12:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca3acda700981f741de6f9259a663dd31af4e1997a2cbf377288670b36eb504`  
		Last Modified: Sat, 29 Dec 2018 15:12:02 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a629ab42122f4978830962920714b044b5a6955d2c9674e0eba9b9da83c9ba82`  
		Last Modified: Fri, 11 Jan 2019 10:49:57 GMT  
		Size: 1.1 MB (1089672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c8df94e35226367abd1013744468e621f3bcb70a02b52e2f86dbc9c3698199`  
		Last Modified: Fri, 11 Jan 2019 10:49:57 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b17a3595d0233bcc52710ed2b2adb56c57920d1ec3ae378dfbf79368176f874`  
		Last Modified: Fri, 11 Jan 2019 10:49:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf6daeca5164fb46fea5c202c77bd402b4587d4346426b88e301ca8e8ba965e`  
		Last Modified: Fri, 11 Jan 2019 10:50:03 GMT  
		Size: 10.4 MB (10378228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2f1e531029711bf7dcfef1d104bd65dce464a7d0e5ff212257ac787c066776`  
		Last Modified: Fri, 11 Jan 2019 10:49:57 GMT  
		Size: 3.8 KB (3792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.3-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:4a6cf2d57a12be90dcfc315ada7d91fe781b2b6b0dc8b36b90488c7d78380f51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126566992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dcc7431707f4fcfe0351a53e6bec9b72637d934ed0cbd45a6b525874713a73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 15:57:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:57:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 15:57:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 15:57:30 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 15:57:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 15:57:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 15:57:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 15:57:36 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 29 Dec 2018 15:57:37 GMT
ENV PHP_VERSION=7.3.0
# Sat, 29 Dec 2018 15:57:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.0.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 15:57:38 GMT
ENV PHP_SHA256=7d195cad55af8b288c3919c67023a14ff870a73e3acc2165a6d17a4850a560b5 PHP_MD5=
# Sat, 29 Dec 2018 15:57:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 15:57:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:00:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 16:00:47 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:00:49 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 16:00:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 16:00:50 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:00:50 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 16:00:51 GMT
EXPOSE 80
# Sat, 29 Dec 2018 16:00:51 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 13:25:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 13:25:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:25:20 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 13:25:21 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:25:21 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 13:25:21 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 13:25:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 13:25:27 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:25:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:25:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec7800b34522c311353f81b69927346012c515d10994684b20a049ba54c724`  
		Last Modified: Mon, 31 Dec 2018 19:13:51 GMT  
		Size: 16.2 MB (16162446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba5955791d212ded2ccec56cb7e29725d2c3c77eab3d9e3fabf25d3f1b5cf98`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e907a4a42c73b241a2cf041cbfbb96efce659ecfd29561d66ea0f7b6a7aada83`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72faa7e759463214ed86856afa0ad160e8b2317f9b955d6da86ff57af479d7e3`  
		Last Modified: Mon, 31 Dec 2018 19:13:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d0deb16aebd783168a5b41a29b5925f81b588183b6c32a9f9be6608c49187b`  
		Last Modified: Mon, 31 Dec 2018 19:13:47 GMT  
		Size: 12.3 MB (12276966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce4c3de69a109ac48cd93d322a3b7744ef3f21b1d992338fafb27abcdb3b354`  
		Last Modified: Mon, 31 Dec 2018 19:13:44 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e90fe809c97bb1ed6ef9c9aec3a9be87d92867f1aefd7974b1d9016b03f11a`  
		Last Modified: Mon, 31 Dec 2018 19:13:49 GMT  
		Size: 13.9 MB (13856345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29380ec81559b02ca8319643d30629093ac88f91aeb1797b7eca6c4ce8f5cac`  
		Last Modified: Mon, 31 Dec 2018 19:13:44 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ac98db32bf1d41084cb84287a6e62b602cf0048ec1f9b8b60be10ab7574553`  
		Last Modified: Mon, 31 Dec 2018 19:13:44 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60d94290566c8ba5718a6c632c610fd9a1ab73195eee723508e573458372316`  
		Last Modified: Mon, 31 Dec 2018 19:13:44 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddcac4362669425562859004e4b7054a0519c0f72fe1f130141ce6f9eedc026`  
		Last Modified: Fri, 11 Jan 2019 13:30:24 GMT  
		Size: 1.0 MB (1021879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecdbb13d56da35b1db5534ee8afa996fb07b7557f5954647f147f80183549d2`  
		Last Modified: Fri, 11 Jan 2019 13:30:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f68e83cbcf9014e048ef1aaf684f12e09fb7a3ad4551f93d883c8982d1e996a`  
		Last Modified: Fri, 11 Jan 2019 13:30:23 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e40bad5ba1f730739aa089001c2fd72e0d220742d47dc53ceeeb9647c890657`  
		Last Modified: Fri, 11 Jan 2019 13:30:28 GMT  
		Size: 10.4 MB (10378230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058fdb9c618a357ae59f1080e3eee40fe699697f6531f02a5e6b184637b91645`  
		Last Modified: Fri, 11 Jan 2019 13:30:23 GMT  
		Size: 3.8 KB (3787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.3-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:1e2871a171eeb8e62f179becbde08d40dab33b8dae5b1cd5138ba7184daa711a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132862309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf27b8e482251ec550347c076876a7e5eb2a7e8a6cc8be04c522f0426a0f12b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:55:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:55:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:55:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:55:34 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:55:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:55:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:55:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:55:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 21:55:43 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 29 Dec 2018 21:55:43 GMT
ENV PHP_VERSION=7.3.0
# Sat, 29 Dec 2018 21:55:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.0.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 21:55:45 GMT
ENV PHP_SHA256=7d195cad55af8b288c3919c67023a14ff870a73e3acc2165a6d17a4850a560b5 PHP_MD5=
# Sat, 29 Dec 2018 21:56:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 21:56:18 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 22:04:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 22:04:35 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 22:04:37 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 22:04:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 22:04:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 22:04:38 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 22:04:39 GMT
EXPOSE 80
# Sat, 29 Dec 2018 22:04:40 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 11:23:57 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 11:23:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 11:24:01 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 11:24:02 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 11:24:03 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 11:24:04 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 11:24:09 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 11:24:10 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 11:24:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624799215cc8ec3f277033b52eefa3e6cdee2c0371b28a4983c3722506e677a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:48 GMT  
		Size: 16.7 MB (16711057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e7e30b294ed284d673effda7c4615ade5cd952cc3dee17c0116b1c0f6cd106`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1845118be0cdd364592b6079fb43ef235948f820e01b535e9b7da4187f405bd8`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e041c4002a5658f86b77e75593904c0fd11c2aa9f7ed2f36b876f5d4d54225`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b3fe4372d0d755d1e92a03b8937322df48d7f72afe34cd9e1e9830f5ec47cb`  
		Last Modified: Sun, 30 Dec 2018 01:04:42 GMT  
		Size: 12.3 MB (12277218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486346996a21800e089d09a9b47a66f238efe1b2794e878ff1ea495cb2b60446`  
		Last Modified: Sun, 30 Dec 2018 01:04:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d505488716cd013765a59089003ec33b4db2a2dacefa1067e9c37475e8646a`  
		Last Modified: Sun, 30 Dec 2018 01:04:45 GMT  
		Size: 14.5 MB (14478142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def28cef91c90996801ff75823e6b707a9fb80ad9431cddb602569a2c3a3f1a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:38 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94633726e822af877ac9e43e728fe4a2ddc3a3527137209b9fa8181e9b4f644`  
		Last Modified: Sun, 30 Dec 2018 01:04:38 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefe17cc9d2f38e74ee849404e2e17ec69d2054a86550b538d152262f4c6c55e`  
		Last Modified: Sun, 30 Dec 2018 01:04:38 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a805a9657f36987e3a90c6a78c0030b2f3a7c47165b5b63d17af2b62fb167db3`  
		Last Modified: Fri, 11 Jan 2019 11:40:00 GMT  
		Size: 1.1 MB (1062959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003eb9a9d93bc26e6d17487df850e8e6769124896aa06e575a2dff12647d7e7d`  
		Last Modified: Fri, 11 Jan 2019 11:39:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef419f3c5de0c2db23512644d808d977a9aa297461602d6f9c3954b7f07ddb65`  
		Last Modified: Fri, 11 Jan 2019 11:39:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b215d2c87cab19616fa7e420af3d1c8417371121c1c8772ed5e55b4e80e76e2`  
		Last Modified: Fri, 11 Jan 2019 11:40:05 GMT  
		Size: 10.4 MB (10378155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161ce2887161b152cce8040d3b7a6e8a25307218d9df932afcd166d08f0fe7e6`  
		Last Modified: Fri, 11 Jan 2019 11:39:59 GMT  
		Size: 3.8 KB (3791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.3-apache` - linux; 386

```console
$ docker pull wordpress@sha256:b41e3c581cfbe1bacb1d0cc769754695bb9d053c61d3ed0b255827076e48b97f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (152027477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ae555637283ef99e74da98aa559226641bfd9f8944b624249e4b39dfa634da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 21:45:54 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Fri, 11 Jan 2019 12:11:10 GMT
ENV PHP_VERSION=7.3.1
# Fri, 11 Jan 2019 12:11:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:11:10 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Fri, 11 Jan 2019 12:11:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:11:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:14:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:14:50 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:14:51 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:14:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:14:51 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:14:52 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:14:52 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:14:52 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 15:47:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 15:47:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:47:07 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 15:47:08 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:47:08 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 15:47:08 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 15:47:10 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 15:47:11 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:47:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:47:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0509c3cf0c9624bd2f200c1dd728bf986712f800741f26dea525f04d688e9988`  
		Last Modified: Fri, 11 Jan 2019 14:52:18 GMT  
		Size: 12.3 MB (12294010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f487bd871dea014d2f682816361b6e68de5f080def95ff19b541616ac09d3ffd`  
		Last Modified: Fri, 11 Jan 2019 14:52:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31fd3667ac821376746996ac3fc6573fb3d646cc9ff9819a3dbb7844a70c019`  
		Last Modified: Fri, 11 Jan 2019 14:52:21 GMT  
		Size: 16.0 MB (15963546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cdc0a4bb85798bff001c67fda8171df7ea178a2661a05bb7d396878c690c2`  
		Last Modified: Fri, 11 Jan 2019 14:52:16 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2cbbfed0826408d58f3b4f27d8dd1e6a317ddf0e4dd2a8fd5d65e00bcc4d1`  
		Last Modified: Fri, 11 Jan 2019 14:52:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e997af29e850c0f49edcc36c6535e6c0ad8745f12117d0ea106b542ca07eb114`  
		Last Modified: Fri, 11 Jan 2019 14:52:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a65688f1ca1800643f0864f4ee2164f3b1ad653b366eec1e9317f240aecd3`  
		Last Modified: Fri, 11 Jan 2019 15:56:03 GMT  
		Size: 1.2 MB (1181927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52186e7f85083c7ebfd0739707eba1514437e01fa2219554d8b626c20ef0cbdd`  
		Last Modified: Fri, 11 Jan 2019 15:56:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dad2d6e2b73cb1fd9f0e30b52a8cecf8b8638800dd5c82fefdef72e079d85fa`  
		Last Modified: Fri, 11 Jan 2019 15:56:02 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ee8e4ccd0c18d3064a5360ab6678810c56346f3bfd499db8cf4c39dd9690c`  
		Last Modified: Fri, 11 Jan 2019 15:56:06 GMT  
		Size: 10.4 MB (10378175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03b2e036d30de2871015885d3e916888b14e4e2a9cda1406a50fb72ff61205d`  
		Last Modified: Fri, 11 Jan 2019 15:56:02 GMT  
		Size: 3.8 KB (3786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.3-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:d89b19204e199fee3f0ce41437adc2c39f57df653c77c10904a5530814526201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141054433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e8c77a2b0a7b43ea8b1fd605bcb07ac82d67ae1a8214dcf79767586670584c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:12:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 29 Dec 2018 13:12:40 GMT
ENV PHP_VERSION=7.3.0
# Sat, 29 Dec 2018 13:12:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.0.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 13:12:44 GMT
ENV PHP_SHA256=7d195cad55af8b288c3919c67023a14ff870a73e3acc2165a6d17a4850a560b5 PHP_MD5=
# Sat, 29 Dec 2018 13:13:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 13:13:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:18:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 13:18:02 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:18:07 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 13:18:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 13:18:11 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:18:12 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 13:18:15 GMT
EXPOSE 80
# Sat, 29 Dec 2018 13:18:17 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 10:12:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 10:12:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 10:13:05 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 10:13:08 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 10:13:12 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 10:13:14 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 10:13:24 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 10:13:26 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:13:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:13:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2fa8d00c43241736f63402258a875efefadd5039e3127cac8f8d0e04e262a`  
		Last Modified: Sat, 29 Dec 2018 15:03:29 GMT  
		Size: 12.3 MB (12277530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd08dbe37188041336e6d48ba5afc77cccab651ed454d0ef1d2b609600ea4b9`  
		Last Modified: Sat, 29 Dec 2018 15:03:23 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8fe1f8cb677021862f3a0860977ad4e52531767145abd14b2f68d1d338e33a`  
		Last Modified: Sat, 29 Dec 2018 15:03:29 GMT  
		Size: 15.3 MB (15317058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50806f17f741c533bc71a50bbeb39f03c19aa53f700e5a3e40ebe74c50e91ef8`  
		Last Modified: Sat, 29 Dec 2018 15:03:23 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34c93a2d6c67612a1a176f153717913ea9768b4fc402bddfe0513b85dceac09`  
		Last Modified: Sat, 29 Dec 2018 15:03:23 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ba2fe1472b2d0acdb81586a71a26c429e2e1107a6839060234f174273a938`  
		Last Modified: Sat, 29 Dec 2018 15:03:23 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51ae682a3629a8af5904d21c9b2f73dc77222d3a57c4a59862e523fde49b40c`  
		Last Modified: Fri, 11 Jan 2019 10:25:23 GMT  
		Size: 1.1 MB (1141978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7045e02f04d71366f92f876cd57655fb411b4a3ac71376ce87c9852dce17eb`  
		Last Modified: Fri, 11 Jan 2019 10:25:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cdf174622decf238410df8fa9012b3280ad064e2bd29e0f1e98bce77d51ff4`  
		Last Modified: Fri, 11 Jan 2019 10:25:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1056a033d399ac432b095b60f5d9dd8a4a7aaba0febeed0f8cddfd9d3dc3`  
		Last Modified: Fri, 11 Jan 2019 10:25:27 GMT  
		Size: 10.4 MB (10378228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db85f371589ad3b3de3d4676bf88a191bf6a48dfd129bc7e6020700ce11fe4dc`  
		Last Modified: Fri, 11 Jan 2019 10:25:23 GMT  
		Size: 3.8 KB (3791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
