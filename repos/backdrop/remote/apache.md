## `backdrop:apache`

```console
$ docker pull backdrop@sha256:4d65adcd28eea673121ef5445c510ac56e022a5aeff456f4916974a9a45eed1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:apache` - linux; amd64

```console
$ docker pull backdrop@sha256:0a7e9e696f157435b2d92f3c62c23a5dc32a6cf6119508717054a95367c64c4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171439988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce4d351ac4fc99ac8747588c8a620e48f82dfc3d99536a21f347ea7ec06a60e`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 01 May 2018 00:27:00 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 01 May 2018 00:27:01 GMT
ENV PHP_VERSION=5.6.35
# Tue, 01 May 2018 00:27:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.35.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.35.tar.xz.asc/from/this/mirror
# Tue, 01 May 2018 00:27:01 GMT
ENV PHP_SHA256=9985cb64cb8224c289effff5b34f670d14f838175f76daea0507d643eec650d2 PHP_MD5=
# Tue, 01 May 2018 00:27:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 01 May 2018 00:27:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 01 May 2018 00:29:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 01 May 2018 00:29:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 01 May 2018 00:29:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 01 May 2018 00:29:54 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 01 May 2018 00:29:55 GMT
WORKDIR /var/www/html
# Tue, 01 May 2018 00:29:55 GMT
EXPOSE 80/tcp
# Tue, 01 May 2018 00:29:55 GMT
CMD ["apache2-foreground"]
# Thu, 03 May 2018 07:13:13 GMT
RUN a2enmod rewrite
# Thu, 03 May 2018 07:14:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Thu, 03 May 2018 07:14:49 GMT
WORKDIR /var/www/html
# Thu, 03 May 2018 07:14:49 GMT
ENV BACKDROP_VERSION=1.9.3
# Thu, 03 May 2018 07:14:50 GMT
ENV BACKDROP_MD5=bb9abf45b565fd717d876f484fa8bd90
# Thu, 03 May 2018 07:14:53 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Thu, 03 May 2018 07:14:54 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Thu, 03 May 2018 07:14:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 May 2018 07:14:54 GMT
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
	-	`sha256:7ac573f6d705ad0514b5078f7ccec3ba1feba9e9891896d57af8fcff2f0c851a`  
		Last Modified: Tue, 01 May 2018 03:36:53 GMT  
		Size: 12.8 MB (12818518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ba66238853d79fd559e7ef3ec4bf5d79c8de2afbad53147b59b1fbc81d1da7`  
		Last Modified: Tue, 01 May 2018 03:36:52 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53a3c5b9c3af64f7f261e47499c6217723657bc59afcb4ce50fe4b0910b6477`  
		Last Modified: Tue, 01 May 2018 03:36:55 GMT  
		Size: 9.7 MB (9714507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547f948a842dbfa53e7f5756f729f722f04db6cf790f34564d56bd2378cf54c0`  
		Last Modified: Tue, 01 May 2018 03:36:52 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658f272cfc51db8b864b6622a8be4d35f4e3f797f261cf377821306c1d67b79`  
		Last Modified: Tue, 01 May 2018 03:36:53 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc4b515b34d81c2434f8a9e3be8aae00baa2a769ba09024573f4979ef8293d8`  
		Last Modified: Thu, 03 May 2018 07:40:20 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb5653af2ab608cdb29388754bf09cb34d1a264f928300632a6b6254654880c`  
		Last Modified: Thu, 03 May 2018 07:40:23 GMT  
		Size: 7.2 MB (7198982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4946d28f791e2402dbcd7daceacfbcf338b144d739c79898fb7ccc437af2144b`  
		Last Modified: Thu, 03 May 2018 07:40:23 GMT  
		Size: 8.3 MB (8309854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d405781adb94861b352b40f2b8db30bd66b0c42be7762c84f975f6de2ff49148`  
		Last Modified: Thu, 03 May 2018 07:40:20 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
