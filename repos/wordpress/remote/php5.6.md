## `wordpress:php5.6`

```console
$ docker pull wordpress@sha256:78f81cb80df509585786732749be8169efa8f87a021e0835504616f68c7ed58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `wordpress:php5.6` - linux; amd64

```console
$ docker pull wordpress@sha256:2e74550eeb680a9f6a937dca57be5539b0aeedd85a43fa7f9d04946d9edabf24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169274029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da0f63f196c343a4cf75ee4d44a0d65932cbcf27a229632a433219ba289815d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 02:17:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 02:17:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 02:17:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 02:28:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 02:28:50 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 04 Jan 2018 02:28:50 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 04 Jan 2018 02:28:51 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 04 Jan 2018 02:28:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 04 Jan 2018 02:28:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 04 Jan 2018 02:28:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 04 Jan 2018 02:28:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 04:00:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 Jan 2018 02:53:29 GMT
ENV PHP_VERSION=5.6.33
# Tue, 09 Jan 2018 02:53:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.33.tar.xz.asc/from/this/mirror
# Tue, 09 Jan 2018 02:53:29 GMT
ENV PHP_SHA256=9004995fdf55f111cd9020e8b8aff975df3d8d4191776c601a46988c375f3553 PHP_MD5=
# Tue, 09 Jan 2018 02:53:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 09 Jan 2018 02:53:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 Jan 2018 02:56:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 09 Jan 2018 02:56:06 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 09 Jan 2018 02:56:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 Jan 2018 02:56:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 09 Jan 2018 02:56:07 GMT
WORKDIR /var/www/html
# Tue, 09 Jan 2018 02:56:07 GMT
EXPOSE 80/tcp
# Tue, 09 Jan 2018 02:56:07 GMT
CMD ["apache2-foreground"]
# Tue, 09 Jan 2018 04:43:58 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 09 Jan 2018 04:44:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 09 Jan 2018 04:44:06 GMT
RUN a2enmod rewrite expires
# Tue, 09 Jan 2018 04:44:06 GMT
VOLUME [/var/www/html]
# Fri, 09 Feb 2018 00:06:08 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 09 Feb 2018 00:06:09 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 09 Feb 2018 00:06:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 09 Feb 2018 00:06:13 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:06:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc132db2e0d4529b0f1ecce1b0208d1415551c378edbbf72912b2da05b161b1`  
		Last Modified: Thu, 04 Jan 2018 04:57:51 GMT  
		Size: 80.2 MB (80245843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c1c323341aeccc9c187d1704349390ffbf8437718af11841e34591ff13d47f`  
		Last Modified: Thu, 04 Jan 2018 04:57:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3701349211b0562574e27d711206dcd615b3797f6d77c9aa875134377b7761`  
		Last Modified: Thu, 04 Jan 2018 04:59:28 GMT  
		Size: 4.5 MB (4466468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faab1d6ad70f31babae6f7c2270dd249254e70d4c08a50256538f302ff572a81`  
		Last Modified: Thu, 04 Jan 2018 04:59:26 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae8d88d75e023a84174030212c8214aa6901e2fc3ed5ec0a28410f0d16433ba`  
		Last Modified: Thu, 04 Jan 2018 04:59:24 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbd4c732645aa40ffe7bc27c7cd11c0788e303712f489bab7103dbedd6c8791`  
		Last Modified: Thu, 04 Jan 2018 04:59:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e59bdd1208f7a5114bfa402c99e628de65f3e48c7497bfa31e1747b10414ff`  
		Last Modified: Thu, 04 Jan 2018 04:59:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe0c2fe033b1725e5aa265fb0ca1d9167655ebc606b919253c2f3fd75a3e2b`  
		Last Modified: Tue, 09 Jan 2018 03:49:58 GMT  
		Size: 12.8 MB (12817559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c46dbb5c3639a039ab7bf577945b35c65d3841aa3048f17efd7d29f78845592`  
		Last Modified: Tue, 09 Jan 2018 03:49:56 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8717ca404f3f0521dd934284d60aea6ffc6b4df24602c9d7a3851e3020bda95b`  
		Last Modified: Tue, 09 Jan 2018 03:49:59 GMT  
		Size: 9.7 MB (9715344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085634ab1c777e9601fcfac1987d79c38cac826c063fda5ed1ff936baff3295`  
		Last Modified: Tue, 09 Jan 2018 03:49:57 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bfe1e101b951079979082433eeb6faa15d6e1de30e84b56300dde5f3c89791`  
		Last Modified: Tue, 09 Jan 2018 03:49:57 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44c878b275e82c2fbcf10baffbe51b233a813ce504d6878e6f66e27bc5ffec1`  
		Last Modified: Tue, 09 Jan 2018 06:23:23 GMT  
		Size: 996.5 KB (996534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f228666e90a057ffb49d3ad4b0162be1378298e70b3370264f07dcc1e04c187`  
		Last Modified: Tue, 09 Jan 2018 06:23:23 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c35aad3d53644763e5c77e9b7c465a7cd55890c595bbc2be0ce80380497d8`  
		Last Modified: Tue, 09 Jan 2018 06:23:23 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0638b581d8e3ad53018c89a10f698e2fdce3c659799e3fd1c44a2cc9a3f647cd`  
		Last Modified: Fri, 09 Feb 2018 00:11:15 GMT  
		Size: 8.4 MB (8422129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a4f974dd3cac78366ecbf13e48612351de99757c90fb1d10e01477941f4341`  
		Last Modified: Fri, 09 Feb 2018 00:11:13 GMT  
		Size: 3.4 KB (3357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php5.6` - linux; 386

```console
$ docker pull wordpress@sha256:8b8439044907cf652bae0a40dba7f7b21b63ebc575ba9bb7674722e58ed9812a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171344419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c8fc40f06154a2b5fbc6703269e7d2e509c6a359cebf5999b94b8865175eb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 09:54:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 09:54:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 11:19:18 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 11:20:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 11:20:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 11:39:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 11:39:55 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 04 Jan 2018 11:39:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 04 Jan 2018 11:39:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 04 Jan 2018 11:40:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 04 Jan 2018 11:40:10 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 04 Jan 2018 11:40:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 04 Jan 2018 11:40:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 04 Jan 2018 11:40:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 04 Jan 2018 11:40:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 11:40:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 11:40:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 13:38:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 Jan 2018 18:10:30 GMT
ENV PHP_VERSION=5.6.33
# Tue, 09 Jan 2018 18:10:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.33.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.33.tar.xz.asc/from/this/mirror
# Tue, 09 Jan 2018 18:10:31 GMT
ENV PHP_SHA256=9004995fdf55f111cd9020e8b8aff975df3d8d4191776c601a46988c375f3553 PHP_MD5=
# Tue, 09 Jan 2018 18:11:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 09 Jan 2018 18:16:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 Jan 2018 18:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 09 Jan 2018 18:25:18 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 09 Jan 2018 18:25:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 Jan 2018 18:25:19 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 09 Jan 2018 18:25:19 GMT
WORKDIR /var/www/html
# Tue, 09 Jan 2018 18:25:20 GMT
EXPOSE 80/tcp
# Tue, 09 Jan 2018 18:25:20 GMT
CMD ["apache2-foreground"]
# Wed, 10 Jan 2018 01:27:50 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 10 Jan 2018 01:35:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 10 Jan 2018 01:35:55 GMT
RUN a2enmod rewrite expires
# Wed, 10 Jan 2018 01:35:55 GMT
VOLUME [/var/www/html]
# Fri, 09 Feb 2018 06:52:36 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 09 Feb 2018 06:52:36 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 09 Feb 2018 06:52:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 09 Feb 2018 06:52:42 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 09 Feb 2018 06:52:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 06:52:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e78f833def8147f02d3b46ee9fa9bd4b7dc76472e6f78b04a44c617456a787`  
		Last Modified: Thu, 21 Dec 2017 13:06:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800a874680e6297c686a886a24dc8a58968a7f1b19ee0feec2b43fda5fff070c`  
		Last Modified: Thu, 04 Jan 2018 15:03:55 GMT  
		Size: 81.5 MB (81549738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe30bfdc208a3fee8ee073c6c85f98e1f74f9013ebc071962e4a635e51f717a`  
		Last Modified: Thu, 04 Jan 2018 15:03:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670e09b0df737aa4a43f58cd8ef4e484e74663484b520d9bc85ec7de4ef67499`  
		Last Modified: Thu, 04 Jan 2018 15:06:32 GMT  
		Size: 4.7 MB (4650272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3cae5c720c42aa72095c99a80ce0af30c04b65d874fc8c4de59326949f77800`  
		Last Modified: Thu, 04 Jan 2018 15:06:29 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7aceca139d3c08e96ababe2cfb8f5107f587fa1b219999b09d9301b8c1789e0`  
		Last Modified: Thu, 04 Jan 2018 15:06:30 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cf5007ffe6910e081df4574fa67d5081e3d88093697198d89f43cf00d0d1bf`  
		Last Modified: Thu, 04 Jan 2018 15:06:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04ca694b7e7515e326813a2bedcc6fc09c421bc32040de9675565cd86a5103`  
		Last Modified: Thu, 04 Jan 2018 15:06:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabc4fe08cc9e95aa2605d349c33411b3f06100a403a5e0d3a8cf18ef68dfd80`  
		Last Modified: Tue, 09 Jan 2018 22:41:36 GMT  
		Size: 12.8 MB (12817055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337c4c86d68b71a58c5e60976faf4b731f76c4f22c319f82009f761dee7188f6`  
		Last Modified: Tue, 09 Jan 2018 22:41:35 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397aec5b15f3c616568837f73d19e228be62f66ffc740e118722667d7f4a0d9d`  
		Last Modified: Tue, 09 Jan 2018 22:41:39 GMT  
		Size: 10.1 MB (10091857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c3c8b2d1295c1146711341bd718a210b9ee98dfc9366a9d227692a5ac6e35f`  
		Last Modified: Tue, 09 Jan 2018 22:41:35 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a507625fedf0504b53b88eaa7cf4d88063aac651ba826c60c5611b5d8e8924cc`  
		Last Modified: Tue, 09 Jan 2018 22:41:35 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcaae00f4dbadc874ef26064cbd5d95d35f1f974b07d1e4f56368c8cbf2f7f2`  
		Last Modified: Wed, 10 Jan 2018 03:31:45 GMT  
		Size: 1.0 MB (1025533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dfd5f27b9a032a05644fb4387a7367e3a0633532738d0daa61ba5f35d2d42b`  
		Last Modified: Wed, 10 Jan 2018 03:31:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611343ad03e01ddea08c4d28a02483b5db49bf7b7c789a8285a664d7a16ab2ec`  
		Last Modified: Wed, 10 Jan 2018 03:31:45 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df751724ebb7c2c36057fb71531f5ecb4e008864f95c98d9715248e0cdd3c9a`  
		Last Modified: Fri, 09 Feb 2018 07:43:50 GMT  
		Size: 8.4 MB (8422128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3b2c0c3c95311d74cecf84be06e0729ac623df7562ebe06b01e4e412bd5fd`  
		Last Modified: Fri, 09 Feb 2018 07:43:46 GMT  
		Size: 3.4 KB (3361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
