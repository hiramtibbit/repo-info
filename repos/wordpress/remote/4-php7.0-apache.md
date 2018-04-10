## `wordpress:4-php7.0-apache`

```console
$ docker pull wordpress@sha256:ecc406f3e63e809cdd5967909892ccd67c2b011e97c63d6aa2d483aa55ff1c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `wordpress:4-php7.0-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:51a6679c1fed2ed4b3e8434b40bdf33076f6ce184d01be31c1ff43c3cf10532e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152845313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f3c5095bbb3328e5f4001aab6e297a2605c9a356d978647ae684d8cbfaa535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:03:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 14 Mar 2018 22:03:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Mar 2018 22:07:57 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:08:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Mar 2018 22:08:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Mar 2018 22:18:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:18:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Mar 2018 22:18:28 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Mar 2018 22:18:30 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Mar 2018 22:18:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Mar 2018 22:18:33 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Mar 2018 22:18:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Mar 2018 22:18:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Mar 2018 22:18:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Mar 2018 22:18:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 22:18:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 22:19:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Mar 2018 22:58:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 06 Apr 2018 20:03:14 GMT
ENV PHP_VERSION=7.0.29
# Fri, 06 Apr 2018 20:03:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 20:03:16 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Fri, 06 Apr 2018 20:03:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 20:03:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 20:09:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 06 Apr 2018 20:09:17 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Fri, 06 Apr 2018 20:09:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 06 Apr 2018 20:09:19 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 06 Apr 2018 20:09:20 GMT
WORKDIR /var/www/html
# Fri, 06 Apr 2018 20:09:20 GMT
EXPOSE 80/tcp
# Fri, 06 Apr 2018 20:09:21 GMT
CMD ["apache2-foreground"]
# Fri, 06 Apr 2018 22:25:37 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 22:25:39 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 06 Apr 2018 22:25:41 GMT
RUN a2enmod rewrite expires
# Fri, 06 Apr 2018 22:25:42 GMT
VOLUME [/var/www/html]
# Tue, 10 Apr 2018 03:54:43 GMT
ENV WORDPRESS_VERSION=4.9.5
# Tue, 10 Apr 2018 03:54:44 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Tue, 10 Apr 2018 03:54:49 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 10 Apr 2018 03:54:50 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 10 Apr 2018 03:54:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 03:54:53 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3c098251aa535d662f00d3a664d542881e8583b8cd05e36375c40bbd087a3f`  
		Last Modified: Thu, 15 Mar 2018 00:24:16 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15c494975db0268fc099db75fc0376f384d99a90e99d1213c82319a7e9ecb9`  
		Last Modified: Thu, 15 Mar 2018 00:24:36 GMT  
		Size: 62.5 MB (62514108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd59d3493e449128921ace9e39cf4eb8c1a98564dbd5dc35659c7b8460b8712`  
		Last Modified: Thu, 15 Mar 2018 00:24:14 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a73e26df886cec8ce697905e4f14df953f555965aaeaf08a7e51e4e1c365352`  
		Last Modified: Thu, 15 Mar 2018 00:28:44 GMT  
		Size: 4.1 MB (4124824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06a4bb921c09dc643171c98ddcfb94a9612b6df2d80b61e260001e13aed011`  
		Last Modified: Thu, 15 Mar 2018 00:28:43 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab76ba209d69d21d30eb53dc085e5ac491a231b73a3b78e082ed05d2ae98be56`  
		Last Modified: Thu, 15 Mar 2018 00:28:41 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db615f6ce2a4b3e94bdf205cd1a2723e53a78522c7354cadf58868f28e1628d6`  
		Last Modified: Thu, 15 Mar 2018 00:28:41 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12192482c22dcc72ad9335f053f6fafa733abdba88af0f427824d6062c60daa9`  
		Last Modified: Thu, 15 Mar 2018 00:28:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1cd22cd00c69a632b267e04d14af0bf45ae110f9197c99afc5dc84d9d229eb`  
		Last Modified: Fri, 06 Apr 2018 21:44:28 GMT  
		Size: 12.8 MB (12750667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbcf445139930b775e186db3f1f941f1336053ada16e5276193a353f54268a`  
		Last Modified: Fri, 06 Apr 2018 21:44:27 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e753ea6795860512e1a6f3f682a33606a47eca193f77a349e88c6a678a11582`  
		Last Modified: Fri, 06 Apr 2018 21:44:31 GMT  
		Size: 14.1 MB (14131688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de9c71e81007bc16cde67c05757420127ce56dfe06629ae479b2a91d136b9b4`  
		Last Modified: Fri, 06 Apr 2018 21:44:26 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4885e019fdc14f8f7ca8661424ae0130d4bd91ee3345627b524bc159442dd0`  
		Last Modified: Fri, 06 Apr 2018 21:44:26 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d2dd50b9af34eea2ed14a630ffc38aa972405a95c67ed83d554469377a22db`  
		Last Modified: Fri, 06 Apr 2018 22:50:36 GMT  
		Size: 958.0 KB (957970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581aa7f6fdf07bcca2bb11929fbb9f0babb14dd79d9c573c8be9fd21c94a1f92`  
		Last Modified: Fri, 06 Apr 2018 22:50:35 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991f0404594928dfa4fa0d2e7636f612dfff28bbf3df3d6eab47d1a4d77ac1f`  
		Last Modified: Fri, 06 Apr 2018 22:50:35 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e97d434986b51c52d4850dc96291b4c201d1b98d4f4cf3fa1d3bae650f69007`  
		Last Modified: Tue, 10 Apr 2018 04:05:26 GMT  
		Size: 8.4 MB (8422114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437ef3f485120e291f0d785e2fd1fb027b806a08d192b3683ca26ba29345be18`  
		Last Modified: Tue, 10 Apr 2018 04:05:22 GMT  
		Size: 3.4 KB (3357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.0-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:4021a7b1c22edc114e0519c4b0051b0c41cc28d43c921c3626752175864ec963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161214107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44407ceb05df1441282453d2569c41b71d889238d4080193f665a34b38bdbe00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:58:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Mar 2018 06:58:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Mar 2018 07:03:50 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:03:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Mar 2018 07:03:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Mar 2018 07:14:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:14:02 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Mar 2018 07:14:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Mar 2018 07:14:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Mar 2018 07:14:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Mar 2018 07:14:16 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Mar 2018 07:14:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Mar 2018 07:14:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Mar 2018 07:14:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Mar 2018 07:14:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Mar 2018 07:14:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Mar 2018 07:14:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Mar 2018 07:46:46 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 06 Apr 2018 19:41:32 GMT
ENV PHP_VERSION=7.0.29
# Fri, 06 Apr 2018 19:41:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 19:41:35 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Fri, 06 Apr 2018 19:43:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 19:43:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 19:48:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 06 Apr 2018 19:48:29 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Fri, 06 Apr 2018 19:48:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 06 Apr 2018 19:48:32 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 06 Apr 2018 19:48:33 GMT
WORKDIR /var/www/html
# Fri, 06 Apr 2018 19:48:35 GMT
EXPOSE 80/tcp
# Fri, 06 Apr 2018 19:48:37 GMT
CMD ["apache2-foreground"]
# Fri, 06 Apr 2018 21:32:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 21:32:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 06 Apr 2018 21:32:36 GMT
RUN a2enmod rewrite expires
# Fri, 06 Apr 2018 21:32:37 GMT
VOLUME [/var/www/html]
# Tue, 10 Apr 2018 02:52:09 GMT
ENV WORDPRESS_VERSION=4.9.5
# Tue, 10 Apr 2018 02:52:11 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Tue, 10 Apr 2018 02:52:19 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 10 Apr 2018 02:52:22 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:52:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:52:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12afeed72b4b5801d2c4d4528dd71c5081ed9af8727481420acaea71c283eeb`  
		Last Modified: Thu, 15 Mar 2018 08:51:15 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fecf808e67709f204c88ba901a7c44cc3c04b02a56de3c11122c2246f1e72ae`  
		Last Modified: Thu, 15 Mar 2018 08:51:35 GMT  
		Size: 67.8 MB (67847417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0465374ceef2253ccf3bc08978e4bbe9337256ba1a38991ec50b5ca46de0479`  
		Last Modified: Thu, 15 Mar 2018 08:51:12 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8e5752669ded8687821ef8b60171575253113b0d6d0be1a8d2357b2b877e19`  
		Last Modified: Thu, 15 Mar 2018 08:52:46 GMT  
		Size: 4.3 MB (4332762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4c3e4cdb617487140aa38b825a3a18b30337200a5f4fdfbe0b376e9aeab192`  
		Last Modified: Thu, 15 Mar 2018 08:52:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83587815719dbc92c7b6318eb2acd7c6a397df505f778231c99d8be448f9dcb9`  
		Last Modified: Thu, 15 Mar 2018 08:52:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a47d15a2a654e6670e11a1ed10a362cb7027ceba200849ca1299648ebfd406d`  
		Last Modified: Thu, 15 Mar 2018 08:52:44 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6380e483a9167ed50054a2a10e5c798430a9f296140994f5a9d8ded3f36d576`  
		Last Modified: Thu, 15 Mar 2018 08:52:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf605600ec1dd79b3a019199b279afb0ffb0c22a542a5a693788628a1f8a2a4`  
		Last Modified: Fri, 06 Apr 2018 20:55:21 GMT  
		Size: 12.8 MB (12750903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c037bc8e81af000eb8dfdc523486c9c200b9a312d749f0e313c4ffc4587f514`  
		Last Modified: Fri, 06 Apr 2018 20:55:20 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07799ba06d0a9f1905e6df50af34708b7a195b0b14d140bc537577ff98642c60`  
		Last Modified: Fri, 06 Apr 2018 20:55:24 GMT  
		Size: 15.0 MB (15028796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b7c02cb6a9614ae59ec75279ff93b9ebe107bc5de505de4bf08027973a084a`  
		Last Modified: Fri, 06 Apr 2018 20:55:19 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b7a6df714337feeda5c5bacd781224b4c34a89e953e7184ca0ed705e04de93`  
		Last Modified: Fri, 06 Apr 2018 20:55:19 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7e6e0476494ddbd9f2bb5ebcb6dce4b8cfea13ec2d6b745ec0ac69ea5896ef`  
		Last Modified: Fri, 06 Apr 2018 21:54:33 GMT  
		Size: 1.0 MB (1004314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2640330101b202a58b2186b7737a986b069b2ef8f3b565a7a055fac34fbcb2`  
		Last Modified: Fri, 06 Apr 2018 21:54:28 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da2ffb8bd527e26126340c1ec1b821789e52182551db43f704c90c4c9cc741a`  
		Last Modified: Fri, 06 Apr 2018 21:54:33 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2737beb24a9a7a4e508f2f4476056d285bf30b7317957076f208fa7ca7b32ea`  
		Last Modified: Tue, 10 Apr 2018 02:59:02 GMT  
		Size: 8.4 MB (8422140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd105507666ce969b889bd4dc883b3b77ad49bb8b847313cfb165b2f7b00318`  
		Last Modified: Tue, 10 Apr 2018 02:58:59 GMT  
		Size: 3.4 KB (3362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
