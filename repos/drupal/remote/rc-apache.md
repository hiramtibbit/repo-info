## `drupal:rc-apache`

```console
$ docker pull drupal@sha256:60d0ea678459edcd1974d48ddba9aa38b21ccaf65004522c91b353107e26abe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `drupal:rc-apache` - linux; amd64

```console
$ docker pull drupal@sha256:6fc8cad405ff51c8ff5393a179f8ac1d57839a7131caa63b8fcffd355da15a5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153463397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7020b0f2009e3f93e5267b30a9b7b17695df9ddf0191270ac4dd77f551aefa7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 19:03:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 19:03:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 01:11:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 01:16:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 01:16:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 01:30:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 01:30:58 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 04 Jan 2018 01:30:58 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 04 Jan 2018 01:30:59 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 04 Jan 2018 01:30:59 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 04 Jan 2018 01:31:00 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 04 Jan 2018 01:31:01 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 04 Jan 2018 01:31:01 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 04 Jan 2018 01:31:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 04 Jan 2018 01:31:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 01:31:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 01:31:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 01:31:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 06 Feb 2018 22:10:40 GMT
ENV PHP_VERSION=7.2.2
# Tue, 06 Feb 2018 22:10:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.2.tar.xz.asc/from/this/mirror
# Tue, 06 Feb 2018 22:10:40 GMT
ENV PHP_SHA256=47d7607d38a1d565fc43ea942c92229a7cd165f156737f210937e375b243cb11 PHP_MD5=
# Tue, 06 Feb 2018 22:10:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Feb 2018 22:11:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Feb 2018 22:14:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Feb 2018 22:18:04 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 06 Feb 2018 22:18:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Feb 2018 22:18:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 06 Feb 2018 22:18:05 GMT
WORKDIR /var/www/html
# Tue, 06 Feb 2018 22:18:05 GMT
EXPOSE 80/tcp
# Tue, 06 Feb 2018 22:18:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Feb 2018 20:15:59 GMT
RUN a2enmod rewrite
# Wed, 07 Feb 2018 20:17:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 20:23:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Feb 2018 20:23:07 GMT
WORKDIR /var/www/html
# Mon, 12 Feb 2018 23:59:55 GMT
ENV DRUPAL_VERSION=8.5.0-beta1
# Mon, 12 Feb 2018 23:59:55 GMT
ENV DRUPAL_MD5=981177d250839fdf325001c12b4e20ba
# Tue, 13 Feb 2018 00:00:02 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75651f24782724147b4affe1885dbd9db84995cb19bc250712f4d2e1474180c9`  
		Last Modified: Tue, 19 Dec 2017 21:48:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf8fd0150f5f07bcafefb9600b2927a27f0e245b8235756c5d057d77848c09`  
		Last Modified: Thu, 04 Jan 2018 04:36:08 GMT  
		Size: 67.4 MB (67422638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de80263f26f06fe00a02aac0cca3d2e7eabd68099d5d1f03f2578ad76967b248`  
		Last Modified: Thu, 04 Jan 2018 04:35:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be8ad4c5fd19354c4b8b9baefc3331f9182b2712b79172604cf51fc25d899e`  
		Last Modified: Thu, 04 Jan 2018 04:40:16 GMT  
		Size: 17.1 MB (17126681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239d5fed0dda232638873c5a23f03992a21fbd4ce29e20772a2f1e1f45776936`  
		Last Modified: Thu, 04 Jan 2018 04:40:11 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab39b683a9fceb99adb40583a27b18215e22de2c882a6fa03bdcd67a299230e`  
		Last Modified: Thu, 04 Jan 2018 04:40:10 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f54f2d93a453c335c196608150263f4a1aa079fad1eefd409c47bdce3e290`  
		Last Modified: Thu, 04 Jan 2018 04:40:09 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c970ad99e97647daa8896ebebe7fcd1dce4487089bd9e0bfc6ec5a3a1ca50e`  
		Last Modified: Thu, 04 Jan 2018 04:40:09 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b02bcfc0c25724d0ba43885a81189621441609b49542b9607f6add6dd4013b`  
		Last Modified: Tue, 06 Feb 2018 23:35:03 GMT  
		Size: 12.4 MB (12370923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21cb128d1e14ea224eb27e8b6162fd424f400f03922f1405bfe4a2460cc9d17`  
		Last Modified: Tue, 06 Feb 2018 23:35:00 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620a1b5634986a172c765b851fc34db418d8a5a4488a889a4b1761af598e51ca`  
		Last Modified: Tue, 06 Feb 2018 23:35:05 GMT  
		Size: 16.4 MB (16413115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7708d1b98c01fb058bfacdff2120ddcbff4b50f71f2c758f7b7539fe5c4455`  
		Last Modified: Tue, 06 Feb 2018 23:35:00 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0086574a434be83a3881b398f6d6f75a7a127d2ac9fe565064c6b2e812bac409`  
		Last Modified: Tue, 06 Feb 2018 23:34:59 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80456d1daf266c003f7f7968c08b67d61b1e7d7daf3761f17c3aa69b29bff936`  
		Last Modified: Wed, 07 Feb 2018 21:51:23 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0856a0a1a4197d715687b6d42bc017e73ff88e23e05697b5d3254ed66d7cea`  
		Last Modified: Wed, 07 Feb 2018 21:51:25 GMT  
		Size: 1.9 MB (1947870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0049f58b73e9615b00f15f99e3b156be96d3b5092caaa1b27cfe418ca4d98fd`  
		Last Modified: Wed, 07 Feb 2018 21:51:23 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83840629188ebdc803cf9a95fccec2c6ed57ff8164b8147ef62a46b052650114`  
		Last Modified: Tue, 13 Feb 2018 00:12:16 GMT  
		Size: 15.7 MB (15689385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
