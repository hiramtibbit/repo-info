## `wordpress:5-php7.0`

```console
$ docker pull wordpress@sha256:5a7ff88543607e0d5091bbbd8aa5a51af99f56b3f714c8fba0e7e2c4bf0c329b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `wordpress:5-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:a8ed1df1407c743b48fae83f425cc228d7169c5b0429676b30cae77a43aae568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144703626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4cf053df17a1e8fc2d066e4cd672003dfc814a4d49c1342654e2d7092fa5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:53:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 01:53:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 01:54:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:54:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 01:54:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 02:06:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 02:06:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 02:06:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Nov 2018 22:47:36 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 28 Nov 2018 22:47:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 28 Nov 2018 22:47:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 28 Nov 2018 22:47:52 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 28 Nov 2018 22:47:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 28 Nov 2018 22:47:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Nov 2018 22:47:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Nov 2018 22:47:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Nov 2018 23:11:15 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 28 Nov 2018 23:11:15 GMT
ENV PHP_VERSION=7.0.32
# Wed, 28 Nov 2018 23:11:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Wed, 28 Nov 2018 23:11:16 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Wed, 28 Nov 2018 23:11:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 28 Nov 2018 23:11:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 28 Nov 2018 23:15:06 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:15:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Nov 2018 23:15:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:15:21 GMT
WORKDIR /var/www/html
# Wed, 28 Nov 2018 23:15:21 GMT
EXPOSE 80/tcp
# Wed, 28 Nov 2018 23:15:21 GMT
CMD ["apache2-foreground"]
# Wed, 28 Nov 2018 23:51:37 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:51:38 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 28 Nov 2018 23:51:39 GMT
RUN a2enmod rewrite expires
# Wed, 28 Nov 2018 23:51:39 GMT
VOLUME [/var/www/html]
# Sat, 08 Dec 2018 03:44:56 GMT
ENV WORDPRESS_VERSION=5.0
# Sat, 08 Dec 2018 03:44:56 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Sat, 08 Dec 2018 03:44:59 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 08 Dec 2018 03:45:00 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Sat, 08 Dec 2018 03:45:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 03:45:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633e0d1cd2a336ecc3124ec0b06e1039049f1716554038b9dfc8c3529f6fd988`  
		Last Modified: Fri, 16 Nov 2018 08:15:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdfdf7118ba156cb7115b991210623e82c6ad0f57aa55e38790f2bd734c50fa`  
		Last Modified: Fri, 16 Nov 2018 08:16:15 GMT  
		Size: 67.4 MB (67428583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dc76b176992c0aa2fd3f3bc438ac6be98897e6025b68e8652b24b132ec952`  
		Last Modified: Fri, 16 Nov 2018 08:15:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c425447c8835eea0dd20e2413708f2049d419d86a586923131dd511fcbd2f71f`  
		Last Modified: Fri, 16 Nov 2018 08:20:26 GMT  
		Size: 17.1 MB (17128043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75780b7b99771735ed400379da8c1593913a3a716e38c2cee20f28fb2472757d`  
		Last Modified: Wed, 28 Nov 2018 23:33:31 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ed51bc30e852a31ceb7c7515bd4cfa384a0dbe82f21247ccd00826e1006394`  
		Last Modified: Wed, 28 Nov 2018 23:33:30 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4215700bc420c3c03025af9d3f5e8429b2d782bf1a6a45f28a185bfe78959f`  
		Last Modified: Wed, 28 Nov 2018 23:33:30 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639b7d0ed70809073d523c6a29f7a28d4b9b374f8773e424ba2db25290a3e34f`  
		Last Modified: Wed, 28 Nov 2018 23:43:43 GMT  
		Size: 12.4 MB (12379896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1df4ccb0bb134ee383859b222f5d080c82bb162623d2f031e3bfd460b3c2633`  
		Last Modified: Wed, 28 Nov 2018 23:43:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a147cbf423d166b3ac1dd61473640d198d20a52f5ed647abc7ee817449733`  
		Last Modified: Wed, 28 Nov 2018 23:43:46 GMT  
		Size: 13.9 MB (13904676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229c264b8af4410c19fb2d4a4b6b6ff182438c6218f2881469ba8507032d5f13`  
		Last Modified: Wed, 28 Nov 2018 23:43:42 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef0428995990d9acdff9b941edf09152412889cf2bc22d14be5055c5563e16`  
		Last Modified: Wed, 28 Nov 2018 23:43:42 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2009df7e1e88bcda90d81787d890c48254db52a8d542497080c67b14f76c23f`  
		Last Modified: Thu, 29 Nov 2018 00:08:26 GMT  
		Size: 998.0 KB (998045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d882a2430e1b66c098dc54d1fca1ea67aa5736c2971d12ccdcf4eaebf18977b6`  
		Last Modified: Thu, 29 Nov 2018 00:08:25 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e52b27342c3509cd5b527ea3a0611bce3c0164804323711a038b15e4b7303`  
		Last Modified: Thu, 29 Nov 2018 00:08:25 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0cdc61073e4345a1d27d2676620537f4a03e1011a72be25e7d3bf1d0a48b34`  
		Last Modified: Sat, 08 Dec 2018 03:59:05 GMT  
		Size: 10.4 MB (10367353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df65c346360961c5853948cf11a25e4580ed107777c53eef41b5dabfcae265`  
		Last Modified: Sat, 08 Dec 2018 03:59:01 GMT  
		Size: 3.8 KB (3793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.0` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:0fc4a3956f7ffa8252ecb2753179cadd9cda8315557a3dae340772e4a5f02f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132274547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c31b09c355029ab8c5d5f19fc5f56c04ee2ddd90174a813cc6cf96ef5ea4b83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:28:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 11:28:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 11:29:36 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:29:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 11:29:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 11:34:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:34:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 11:34:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 16 Nov 2018 11:34:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir" 		&& chmod 1777 "$dir" 	; done
# Fri, 16 Nov 2018 11:34:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 16 Nov 2018 11:34:56 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 16 Nov 2018 11:34:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 16 Nov 2018 11:34:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 16 Nov 2018 11:34:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 16 Nov 2018 11:34:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 11:34:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 11:34:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 12:51:19 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Nov 2018 12:51:20 GMT
ENV PHP_VERSION=7.0.32
# Fri, 16 Nov 2018 12:51:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 12:51:20 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Fri, 16 Nov 2018 12:51:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 12:51:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:54:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 12:54:20 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:54:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 12:54:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:54:21 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 12:54:22 GMT
EXPOSE 80/tcp
# Fri, 16 Nov 2018 12:54:22 GMT
CMD ["apache2-foreground"]
# Fri, 16 Nov 2018 17:45:59 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:46:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Nov 2018 17:46:01 GMT
RUN a2enmod rewrite expires
# Fri, 16 Nov 2018 17:46:02 GMT
VOLUME [/var/www/html]
# Sat, 08 Dec 2018 10:56:53 GMT
ENV WORDPRESS_VERSION=5.0
# Sat, 08 Dec 2018 10:56:54 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Sat, 08 Dec 2018 10:57:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 08 Dec 2018 10:57:01 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Sat, 08 Dec 2018 10:57:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:57:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36be7f24ef8249a63caa2e9cf2d4a5240da49447f8f4b1022e6deaabc04ade65`  
		Last Modified: Fri, 16 Nov 2018 14:03:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dd69dcf2218b5d34ed001407e1b7b7762ae29fc1cbb5cdff51c4dc98f446dc`  
		Last Modified: Fri, 16 Nov 2018 14:03:38 GMT  
		Size: 57.4 MB (57447645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fbb3322a97ab486d1416315f7bc8a4a229380e180bfaa7e7debcf05ba88012`  
		Last Modified: Fri, 16 Nov 2018 14:03:17 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d490db21ea244d5a3afd9968406184550a611fec8010d4c3b034c86986256be1`  
		Last Modified: Fri, 16 Nov 2018 14:05:55 GMT  
		Size: 16.7 MB (16654407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653eb437a1b41918a1818ce7589baec7c1f9c128fd295ac1ac8a85f0a6067dfe`  
		Last Modified: Fri, 16 Nov 2018 14:05:48 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391a0694c1e3a34fed3a18275b32dc39eb1786f0e9cd77a34ae3eaec3d35472`  
		Last Modified: Fri, 16 Nov 2018 14:05:48 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d4ebca979803d857bb3309f08a8166af32df70b3b52448cd33eb0ccf60175f`  
		Last Modified: Fri, 16 Nov 2018 14:05:48 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f3b28b19037ae0b40ed2a0253335ea701d62e4f28fe95ea1d794160c8e7936`  
		Last Modified: Fri, 16 Nov 2018 14:05:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99174fc21a2ad8c14d3818587a41f1c45d1025bfae87e34c5862645bbe582c`  
		Last Modified: Fri, 16 Nov 2018 14:25:19 GMT  
		Size: 12.4 MB (12378222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9ebe89cb2dab0bd5bd8921b60f4cff84a8b00c4006c24f7da1fece2ea4a88`  
		Last Modified: Fri, 16 Nov 2018 14:25:17 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d917a73715cfb69734dfe0fd2e63804845ccd4a762fc81d7fd3d7db3db5ff7`  
		Last Modified: Fri, 16 Nov 2018 14:25:22 GMT  
		Size: 13.3 MB (13295255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de683e4c8bc73face5d70cf3b30e7c63e7fa5facefc6b41b7390a1447ab3761`  
		Last Modified: Fri, 16 Nov 2018 14:25:17 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a490941b66f1a9f2c43f4e9c1d41c702df37ef6a9141f108403ae8d2381a60`  
		Last Modified: Fri, 16 Nov 2018 14:25:17 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c501f310418eb8e2d1846abd447713a03550ca460a7667262d18e4bbff309720`  
		Last Modified: Fri, 16 Nov 2018 18:04:06 GMT  
		Size: 957.6 KB (957630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6569034b6fd2054751b503622559101fdb5efb7ec83a2094a0a883c4c5cba8c`  
		Last Modified: Fri, 16 Nov 2018 18:04:06 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd3e23e2f32b36a61fa0bc4cd07c08456053d88d3e5dd63c7b9a6787f298e46`  
		Last Modified: Fri, 16 Nov 2018 18:04:06 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe6c792cdbf1b867204fe775fc3439872ae4dc1ef904b8a804c246bc166a7b6`  
		Last Modified: Sat, 08 Dec 2018 11:00:35 GMT  
		Size: 10.4 MB (10367370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5927a27acb42e3dc424dcd2cd8cff3b8388205598cdb876af3cb9e2af9f648`  
		Last Modified: Sat, 08 Dec 2018 11:00:31 GMT  
		Size: 3.8 KB (3790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.0` - linux; ppc64le

```console
$ docker pull wordpress@sha256:59dc79eacdba004168b309f2c478a9fe25674435308e6b10927ac1605e0b3df9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139360145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de39a40ca56f7a112cb4951fb012dd8203b154c4cb2469e24f730b4e85af8ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:29:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 13:29:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 13:31:03 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:31:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 13:31:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 13:38:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:38:32 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 13:38:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 29 Nov 2018 12:34:37 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Thu, 29 Nov 2018 12:34:53 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 29 Nov 2018 12:35:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 29 Nov 2018 12:35:11 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 29 Nov 2018 12:35:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Thu, 29 Nov 2018 12:35:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 12:35:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 12:35:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 29 Nov 2018 13:17:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 29 Nov 2018 13:17:55 GMT
ENV PHP_VERSION=7.0.32
# Thu, 29 Nov 2018 13:17:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Thu, 29 Nov 2018 13:17:57 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Thu, 29 Nov 2018 13:18:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 29 Nov 2018 13:18:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 29 Nov 2018 13:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 29 Nov 2018 13:28:18 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Thu, 29 Nov 2018 13:28:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 29 Nov 2018 13:28:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 29 Nov 2018 13:28:35 GMT
WORKDIR /var/www/html
# Thu, 29 Nov 2018 13:28:36 GMT
EXPOSE 80/tcp
# Thu, 29 Nov 2018 13:28:36 GMT
CMD ["apache2-foreground"]
# Thu, 29 Nov 2018 14:16:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 29 Nov 2018 14:19:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 29 Nov 2018 14:19:21 GMT
RUN a2enmod rewrite expires
# Thu, 29 Nov 2018 14:19:23 GMT
VOLUME [/var/www/html]
# Sat, 08 Dec 2018 12:21:08 GMT
ENV WORDPRESS_VERSION=5.0
# Sat, 08 Dec 2018 12:21:09 GMT
ENV WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b
# Sat, 08 Dec 2018 12:21:22 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 08 Dec 2018 12:21:24 GMT
COPY file:478065d280d23145023321e3c5bdf13b633da7678c35fc500c41b225dee007ca in /usr/local/bin/ 
# Sat, 08 Dec 2018 12:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:21:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525a8972b97972b561c916db0eeb988df6c690c0327eb7bbd50dabe640267c26`  
		Last Modified: Fri, 16 Nov 2018 16:36:09 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d30d763795613fabe9c44f25107d390b018c907e93539edd828f6aad6894fa`  
		Last Modified: Fri, 16 Nov 2018 16:36:40 GMT  
		Size: 61.8 MB (61809932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5ece80e3e063a15e644cb8657370a0df63979da031a7e6f3b04cacf4fcc89f`  
		Last Modified: Fri, 16 Nov 2018 16:36:08 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bc559e903c65301af76a3950a71bedf41208e7a857df100dd7f33721563e0f`  
		Last Modified: Fri, 16 Nov 2018 16:40:26 GMT  
		Size: 17.3 MB (17348378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69abac7efff342e7f38e49a674ee70cbba75ed7933d9679ae971583f0fa4d094`  
		Last Modified: Thu, 29 Nov 2018 13:45:12 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e309cbf837f7f5dfbf1ce330e65f4ebbdcad9b0c8103784d4c4a558f1854f73d`  
		Last Modified: Thu, 29 Nov 2018 13:45:10 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c5e5e23b66e4a401954df146cf3dc9ceedccf98d444408cfdc31e72dffc034`  
		Last Modified: Thu, 29 Nov 2018 13:45:10 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613a840da5d8657f290fad1133482a226ab8c47916bc1e34ccf0856989ee0dcd`  
		Last Modified: Thu, 29 Nov 2018 13:52:57 GMT  
		Size: 12.4 MB (12378528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5e9dc94157585953a5f2538077c291477738d4b5c80a54ea2a42946adfa349`  
		Last Modified: Thu, 29 Nov 2018 13:52:51 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99142809abee617b0b2f8ffc5ad7345be96a775fda3e05fae3eb4f3956591353`  
		Last Modified: Thu, 29 Nov 2018 13:53:24 GMT  
		Size: 13.7 MB (13702384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c2ea78e916557f7eb5b29c959843d1496744f9e08686977f56002755b63464`  
		Last Modified: Thu, 29 Nov 2018 13:52:51 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5e8b3113686746a7b004dbf614442bba21a9483dd1d761c33cfeecae71147a`  
		Last Modified: Thu, 29 Nov 2018 13:52:51 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d524be32fd2e9cfea4c0ce89767af1e0053d0440ebff8fec88f0b267c32b7280`  
		Last Modified: Thu, 29 Nov 2018 14:57:19 GMT  
		Size: 1.0 MB (1001907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf62fbedc3cb25880129be69f01a27596e345c6b3e25a947ed5ba72146aa3d0`  
		Last Modified: Thu, 29 Nov 2018 14:57:18 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590a925a4f639175aff8774547a395ed9308a4d9e33a4bf0cf536106874bb9ef`  
		Last Modified: Thu, 29 Nov 2018 14:57:18 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce4aab488c0a2f98f37d8ad4f9a13618b3ac84a7e4876f0181239f22e605089`  
		Last Modified: Sat, 08 Dec 2018 12:32:38 GMT  
		Size: 10.4 MB (10367389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29fcdfedb2cf63bf3f5424f5b3c718760a04af8746f79622bdb7e0c1eb66260`  
		Last Modified: Sat, 08 Dec 2018 12:32:35 GMT  
		Size: 3.8 KB (3791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
