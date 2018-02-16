## `wordpress:4-php7.1-apache`

```console
$ docker pull wordpress@sha256:5c004e5afa7b2253f28565682faaaf2b6f4da3b897cf56734335a73461ed06d7
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

### `wordpress:4-php7.1-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:bcbcad9a9d9e42337ffc1da2cfa8d9b6762a8c58cbcdcfe53c81eb459d58e220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175043355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b44390086c3e5b535670628e287b31a22f73a712f5b8f718c058bde4c3846ec`
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
# Tue, 09 Jan 2018 00:38:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Feb 2018 23:41:31 GMT
ENV PHP_VERSION=7.1.14
# Tue, 06 Feb 2018 23:41:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Tue, 06 Feb 2018 23:41:31 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Tue, 06 Feb 2018 23:41:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Feb 2018 23:41:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Feb 2018 23:44:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Feb 2018 23:55:31 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 06 Feb 2018 23:55:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Feb 2018 23:55:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 06 Feb 2018 23:55:31 GMT
WORKDIR /var/www/html
# Tue, 06 Feb 2018 23:55:32 GMT
EXPOSE 80/tcp
# Tue, 06 Feb 2018 23:55:32 GMT
CMD ["apache2-foreground"]
# Wed, 07 Feb 2018 19:05:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 19:15:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Feb 2018 19:15:47 GMT
RUN a2enmod rewrite expires
# Wed, 07 Feb 2018 19:15:47 GMT
VOLUME [/var/www/html]
# Fri, 09 Feb 2018 00:08:37 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 09 Feb 2018 00:08:38 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 09 Feb 2018 00:08:42 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 09 Feb 2018 00:08:43 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:08:44 GMT
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
	-	`sha256:9fe46b7726faba3808fb21761b8e27fb2a8d8360bfd69e2d38be04b14b7e76e2`  
		Last Modified: Wed, 07 Feb 2018 01:34:15 GMT  
		Size: 12.6 MB (12551365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e47f2fde782d8f7b4d85cc0a7fc06992040367d248437ff529dd741401983`  
		Last Modified: Wed, 07 Feb 2018 01:34:13 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b600d8a15a48f3894092bb4d9069ee7a462d5b15f0eb6fc7628e842bbf271be`  
		Last Modified: Wed, 07 Feb 2018 01:34:21 GMT  
		Size: 15.7 MB (15651823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcff15900e231e76aabc439685992ec62e5711cffdb3e82fdc79c4a93d23ffd6`  
		Last Modified: Wed, 07 Feb 2018 01:34:13 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1579cb8d94f5bdc9b803f0b5428d703dca6d7df1274dfd5eb2bd990182dac275`  
		Last Modified: Wed, 07 Feb 2018 01:34:13 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3eca9815411f149eda4d93bad4f2b0c061af60728afef474a6a048bf4a3ef00`  
		Last Modified: Wed, 07 Feb 2018 19:48:37 GMT  
		Size: 1.1 MB (1095571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711ac4be4460166bce474ffed1ed4cf35ed2af7a04fa2eba5eade5988d289816`  
		Last Modified: Wed, 07 Feb 2018 19:48:36 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae7826c8dacecb933a3907faaac1cb7af7287c4ba7979e43b58b15b2c68f0fc`  
		Last Modified: Wed, 07 Feb 2018 19:48:36 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc394a3677418bffb7f53da3b85656945949a99bc354378ee3e54c9f5f9dbe14`  
		Last Modified: Fri, 09 Feb 2018 00:27:12 GMT  
		Size: 8.4 MB (8422121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba50888735ba7b7388ebd51bbaa6acfc974ef90514a1768f4792e1587eeaadc`  
		Last Modified: Fri, 09 Feb 2018 00:27:10 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:e3659a46cc68e3db15896223e43bde7c46bd854a8c74945397970bc35fc5a2db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.1 MB (152066640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a87266fb6eb783b6d91a747408aef924a6565a76ff19505ac5b9028502d619f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:52:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 22:52:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 22:53:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:53:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 22:53:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 22:58:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:58:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 22:58:17 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 22:58:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 22:58:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 22:58:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 22:58:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 22:58:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 22:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 22:58:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 22:58:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 22:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 22:58:23 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 15 Feb 2018 22:58:23 GMT
ENV PHP_VERSION=7.1.14
# Thu, 15 Feb 2018 22:58:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Thu, 15 Feb 2018 22:58:23 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Thu, 15 Feb 2018 22:58:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 15 Feb 2018 22:59:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:01:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Feb 2018 23:01:59 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:02:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Feb 2018 23:02:00 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:02:00 GMT
WORKDIR /var/www/html
# Thu, 15 Feb 2018 23:02:01 GMT
EXPOSE 80/tcp
# Thu, 15 Feb 2018 23:02:01 GMT
CMD ["apache2-foreground"]
# Fri, 16 Feb 2018 03:46:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:46:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Feb 2018 03:46:19 GMT
RUN a2enmod rewrite expires
# Fri, 16 Feb 2018 03:46:19 GMT
VOLUME [/var/www/html]
# Fri, 16 Feb 2018 03:46:19 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 16 Feb 2018 03:46:20 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 16 Feb 2018 03:46:22 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 16 Feb 2018 03:46:23 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 16 Feb 2018 03:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 03:46:24 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3578d1788a426771b3d546f87fa16e4dc68993bb08d07182ee6b82e7ff2160`  
		Last Modified: Thu, 15 Feb 2018 23:51:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f43bdf794581fff8cd4c38d34a0175b9c43d2974eeeebaba6700b4bea76c6c8`  
		Last Modified: Thu, 15 Feb 2018 23:51:43 GMT  
		Size: 61.4 MB (61428567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb888e4227beada3ac449871b89189f005b1306a8782cd5ad19d6b1c670d9370`  
		Last Modified: Thu, 15 Feb 2018 23:51:24 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fad4c128addf4b34139687f33e82613901e81f525ec695bd2f212413832c4f7`  
		Last Modified: Thu, 15 Feb 2018 23:52:57 GMT  
		Size: 4.2 MB (4182857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a390a3931b95eb12f5067e58e4c22c87bc8f3d45d7f7b2ab66ee429740998a`  
		Last Modified: Thu, 15 Feb 2018 23:52:56 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2451e50f76ec83dbdaf3ed5c607f8b012adcfdbfbffdd5f62872a7851cb8631b`  
		Last Modified: Thu, 15 Feb 2018 23:52:55 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7897fa16df876a7e112861c566df8d44ddda01a36d694f9b0cdfdfbacf79a4`  
		Last Modified: Thu, 15 Feb 2018 23:52:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b80015427230659951b1ed2bd574eb1ce305a446ce72b6d5e6453e2b4c80f0`  
		Last Modified: Thu, 15 Feb 2018 23:52:55 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abbdb2b33cdde66de601738484b7a9cab69cd22339184714647d50f5fcda816`  
		Last Modified: Thu, 15 Feb 2018 23:52:54 GMT  
		Size: 12.5 MB (12549450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aa82ad21fbeef30341617e5edcd98078a53aa4e7f95dda3c6451735ce9e304`  
		Last Modified: Thu, 15 Feb 2018 23:52:53 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55395dd1a4ff9677d9da8438d28c4c484ba5789b80a4e600f8c9778d5a5528c2`  
		Last Modified: Thu, 15 Feb 2018 23:52:57 GMT  
		Size: 13.5 MB (13518961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56825c9b084a6ea1f6813f69be4cf02161d8478653d1564367fba49aafd14c8`  
		Last Modified: Thu, 15 Feb 2018 23:52:53 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f745fbfc383ab2e344235ec8d995a5b208825e45c3bb9aa49dff7ae681767fe1`  
		Last Modified: Thu, 15 Feb 2018 23:52:53 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a9de6685a232f07e02b38d06904d058c4a96553cc35da5fb89994f2d8218c5`  
		Last Modified: Fri, 16 Feb 2018 03:58:21 GMT  
		Size: 1.1 MB (1064484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d331b6fd8ec649f4f323548a16139586d5c098a1515871e965992c5f54ad6531`  
		Last Modified: Fri, 16 Feb 2018 03:58:19 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c86ffe6035591ca83d7c25c7a485e6ad414d09c818f5b54fe11df797f82414`  
		Last Modified: Fri, 16 Feb 2018 03:58:21 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35950b63d25c75c1219b113feced38529ac73875f7353ce1ae1ad334116feed0`  
		Last Modified: Fri, 16 Feb 2018 03:58:23 GMT  
		Size: 8.4 MB (8422124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c857a978557fa1495c13554589c32b55d1c75d3ce28b27d92fab8e45374c70`  
		Last Modified: Fri, 16 Feb 2018 03:58:20 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:678e8026fad0c5c663f0964cbb690dd73f300824862d02978834c75b62a327a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149271423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471fbca1cac55dd722fbcd4a72a7c0dfc7db2587e6624c66abc5f73b6262043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:00:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 15:00:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 15:01:09 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 15:01:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 15:06:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:06:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 15:06:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 15:06:07 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 15:06:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 15:06:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 15:06:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 15:06:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 15:06:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 15:06:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 15:06:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 15:06:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 15:06:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 15 Feb 2018 15:06:20 GMT
ENV PHP_VERSION=7.1.14
# Thu, 15 Feb 2018 15:06:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Thu, 15 Feb 2018 15:06:21 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Thu, 15 Feb 2018 15:06:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 15 Feb 2018 15:06:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 15 Feb 2018 15:09:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Feb 2018 15:09:42 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 15 Feb 2018 15:09:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Feb 2018 15:09:43 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Feb 2018 15:09:43 GMT
WORKDIR /var/www/html
# Thu, 15 Feb 2018 15:09:44 GMT
EXPOSE 80/tcp
# Thu, 15 Feb 2018 15:09:44 GMT
CMD ["apache2-foreground"]
# Thu, 15 Feb 2018 19:32:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:32:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Feb 2018 19:32:11 GMT
RUN a2enmod rewrite expires
# Thu, 15 Feb 2018 19:32:11 GMT
VOLUME [/var/www/html]
# Thu, 15 Feb 2018 19:32:12 GMT
ENV WORDPRESS_VERSION=4.9.4
# Thu, 15 Feb 2018 19:32:12 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Thu, 15 Feb 2018 19:32:16 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 15 Feb 2018 19:32:17 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 15 Feb 2018 19:32:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:32:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9924463a0695d1c94b95c08799f8e7c8414f5a2a9eac4fb24ed408591f27ea71`  
		Last Modified: Thu, 15 Feb 2018 16:01:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9e3576d748b7b0a89106b959273e9e42ce52bf506fd404afc361493507c681`  
		Last Modified: Thu, 15 Feb 2018 16:01:53 GMT  
		Size: 61.8 MB (61828451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953402aaa2017b5cf38864c9b7f7ab3e63e0f725adbcc827a16f71445c7e5ffc`  
		Last Modified: Thu, 15 Feb 2018 16:01:33 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2169d2e870bd4dbbb626e7fcdeacc6f100d4074c6027e036ebab02b90ab8762`  
		Last Modified: Thu, 15 Feb 2018 16:03:47 GMT  
		Size: 3.9 MB (3937257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d5cc715270773f25d11d7c93840e77ce14b51d58dd00a32b6bc629030e2dd1`  
		Last Modified: Thu, 15 Feb 2018 16:03:45 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbecec8258e5c23f1966fa4408ae244de1ec1e98e6ebfc68dbd21335c25efd3`  
		Last Modified: Thu, 15 Feb 2018 16:03:44 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfa5fae5bd14ed2b1bfc13b153144273e6fb322839bd7103b569e7950e9028a`  
		Last Modified: Thu, 15 Feb 2018 16:03:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b22f01924f834c07a9956a920e743b1b06f33dd9508d6d536c7d61a94d84d5`  
		Last Modified: Thu, 15 Feb 2018 16:03:42 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af3fa606b3dce813cee02495a72f662e646325321da4fbf4171f31942adb8d`  
		Last Modified: Thu, 15 Feb 2018 16:03:43 GMT  
		Size: 12.5 MB (12549453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702efe422af195cc5d0ab38fc529a852588d88be2400b714faedeef6879820fb`  
		Last Modified: Thu, 15 Feb 2018 16:03:41 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481d3cd00ac48a787902ab555db7e67c8cb5ce00aa458efb6a62e8095bcc509e`  
		Last Modified: Thu, 15 Feb 2018 16:03:44 GMT  
		Size: 12.8 MB (12809442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cc7f69e1da4f7bd579c91b22c63f9d2e1bdd90127a4c4305485225ab04b8a6`  
		Last Modified: Thu, 15 Feb 2018 16:03:40 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e23229defb092aa790262f4798f4200ba2cefcd9adaa171b1d7737d1aabc99`  
		Last Modified: Thu, 15 Feb 2018 16:03:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb77ed9dd2a1739e6d6233e6bd224b46f526e0feba5a058ba971c463d07176e9`  
		Last Modified: Thu, 15 Feb 2018 19:45:39 GMT  
		Size: 1.0 MB (1012725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486a043afe12068612a88ab8d8e377c03b89faa30af904765ba643a82af5f63c`  
		Last Modified: Thu, 15 Feb 2018 19:45:38 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a256a1c3cbfcf2e411c75364f2b716efe0ff7294b489eac844be3e24adcc7854`  
		Last Modified: Thu, 15 Feb 2018 19:45:39 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce38d2805eae4cd984b4e25724baef46db85b455baf9cc1301b426a27eb2c7b`  
		Last Modified: Thu, 15 Feb 2018 19:45:42 GMT  
		Size: 8.4 MB (8422125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876a72f34628feddc6bce17a153c7982e8ec69d8a72602c2ac45d10d3db6f4ec`  
		Last Modified: Thu, 15 Feb 2018 19:45:39 GMT  
		Size: 3.4 KB (3356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:d64bf4bc9ae41a9f1f986bc4013e855cdf5228b0e9485129e413dcc1aedb80f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151919094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66119ab368eb578d37a84287bce54553fd8c7d2766915bdf6f0c9f83318876d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 00:13:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Feb 2018 00:13:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Feb 2018 00:15:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:15:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Feb 2018 00:15:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Feb 2018 00:26:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:26:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Feb 2018 00:26:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 16 Feb 2018 00:26:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 16 Feb 2018 00:26:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 16 Feb 2018 00:26:43 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 16 Feb 2018 00:26:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 16 Feb 2018 00:26:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 16 Feb 2018 00:26:47 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 16 Feb 2018 00:26:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Feb 2018 00:26:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Feb 2018 00:26:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Feb 2018 00:26:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 16 Feb 2018 00:26:52 GMT
ENV PHP_VERSION=7.1.14
# Fri, 16 Feb 2018 00:26:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Fri, 16 Feb 2018 00:26:54 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Fri, 16 Feb 2018 00:27:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Feb 2018 00:27:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:35:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Feb 2018 00:35:26 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:35:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Feb 2018 00:35:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:35:28 GMT
WORKDIR /var/www/html
# Fri, 16 Feb 2018 00:35:29 GMT
EXPOSE 80/tcp
# Fri, 16 Feb 2018 00:35:30 GMT
CMD ["apache2-foreground"]
# Fri, 16 Feb 2018 11:57:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:57:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Feb 2018 11:57:13 GMT
RUN a2enmod rewrite expires
# Fri, 16 Feb 2018 11:57:14 GMT
VOLUME [/var/www/html]
# Fri, 16 Feb 2018 11:57:15 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 16 Feb 2018 11:57:15 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 16 Feb 2018 11:57:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 16 Feb 2018 11:57:20 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 16 Feb 2018 11:57:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 11:57:22 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49e9ef3cbf9baa447b668c20b563d7dec600e0fbd3b478d458a194d80154ab5`  
		Last Modified: Fri, 16 Feb 2018 02:19:51 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bee21f0931f1d32487cfeacd0321cb07d2bc7ae9ae318d01125340a31460202`  
		Last Modified: Fri, 16 Feb 2018 02:20:10 GMT  
		Size: 62.5 MB (62545544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8720a8696cb6baea119161a3931e8da4a22918f097d5739c188b6d45637b82c`  
		Last Modified: Fri, 16 Feb 2018 02:19:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc81b87a93dfeaa28357d32f3fff1fefb4cfe57a3b76156e7fe4a492a6ec78c5`  
		Last Modified: Fri, 16 Feb 2018 02:22:07 GMT  
		Size: 4.1 MB (4124545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b3485f114d0950a280e8437aaf3c64972b6062fe9d0e0ecc2a0f2ce755e4f6`  
		Last Modified: Fri, 16 Feb 2018 02:22:05 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac7a4db7dbebffe9355fb5c853a0122e616343e8288d080515a59a3412720db`  
		Last Modified: Fri, 16 Feb 2018 02:22:04 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df79c52fe31c1535429a8e8510c7480c627fb2103dcef1315c5a1ee9753e992d`  
		Last Modified: Fri, 16 Feb 2018 02:22:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481469cdffd7da5e9484322340dcf22b55e3c4498ce61261188a0ecfa9fa6905`  
		Last Modified: Fri, 16 Feb 2018 02:22:04 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c368378cf766c1ac8bf7b1c82c0b30ad53e1acb03be4fee7a1bd4fe45173d6`  
		Last Modified: Fri, 16 Feb 2018 02:22:04 GMT  
		Size: 12.5 MB (12549313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af3cd23298151bb81939a036237e26da03f6f906486362bd5eff5c15dd8e80f`  
		Last Modified: Fri, 16 Feb 2018 02:22:02 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9edc97a6b31d6260755175dfc85b7895cf5136b4d1b47bd8698caa5a3ee6a98`  
		Last Modified: Fri, 16 Feb 2018 02:22:08 GMT  
		Size: 13.3 MB (13291148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda34f7cbb4cd53ec269e24f313a03ad54727747ae44b459818c9607a78c313c`  
		Last Modified: Fri, 16 Feb 2018 02:22:02 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb794fdfd4e73ce6e6e50da23812d600f21eb0dd9d41b2896a4338d7303e7aa3`  
		Last Modified: Fri, 16 Feb 2018 02:22:02 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471d074d1a5fc292d5cd9a5c2fb64ef743cd8feada8efa681a2ccccd5c8547ae`  
		Last Modified: Fri, 16 Feb 2018 12:15:26 GMT  
		Size: 1.0 MB (1042095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a253f6a2f1b9555b89d288a327f8cbfe9296a94dc63e368cda207a49141bef6e`  
		Last Modified: Fri, 16 Feb 2018 12:15:26 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fd769dbec9a1479be0e5d1343c6a04c0b5d0fee327ab73eef9a0e459047e45`  
		Last Modified: Fri, 16 Feb 2018 12:15:26 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0723ae41d44620690c576e4f782e09de2bfe75fee24f1975c079b8ce0d1baab7`  
		Last Modified: Fri, 16 Feb 2018 12:15:29 GMT  
		Size: 8.4 MB (8422129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402ec140797221c517bea1edd1103d9c4f91d5e0c0a51b9e02e52868974847dd`  
		Last Modified: Fri, 16 Feb 2018 12:15:26 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1-apache` - linux; 386

```console
$ docker pull wordpress@sha256:c22cccec2eecc4068bf8d95b244b4bdd77f0d0d8c68f73b28c0a44b8d5b8c1c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.3 MB (177264091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88d9d2b8f3d9e1cfc0e9df0bb43f7897948da18106f2e6b0e222440e30221ec`
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
# Tue, 09 Jan 2018 14:44:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 07 Feb 2018 19:17:31 GMT
ENV PHP_VERSION=7.1.14
# Wed, 07 Feb 2018 19:17:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Wed, 07 Feb 2018 19:17:32 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Wed, 07 Feb 2018 19:18:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 07 Feb 2018 19:25:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 07 Feb 2018 19:30:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 07 Feb 2018 19:41:48 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Wed, 07 Feb 2018 19:41:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 07 Feb 2018 19:41:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 07 Feb 2018 19:41:49 GMT
WORKDIR /var/www/html
# Wed, 07 Feb 2018 19:41:49 GMT
EXPOSE 80/tcp
# Wed, 07 Feb 2018 19:41:50 GMT
CMD ["apache2-foreground"]
# Thu, 08 Feb 2018 07:37:37 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 07:44:39 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 08 Feb 2018 07:44:40 GMT
RUN a2enmod rewrite expires
# Thu, 08 Feb 2018 07:44:40 GMT
VOLUME [/var/www/html]
# Fri, 09 Feb 2018 07:14:20 GMT
ENV WORDPRESS_VERSION=4.9.4
# Fri, 09 Feb 2018 07:14:20 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Fri, 09 Feb 2018 07:14:25 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 09 Feb 2018 07:14:25 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Fri, 09 Feb 2018 07:14:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 07:14:26 GMT
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
	-	`sha256:d30fb7509953fd9e2faed333d87f307dd862fcb91d08256c5691739c45cfa1f8`  
		Last Modified: Wed, 07 Feb 2018 23:23:46 GMT  
		Size: 12.6 MB (12550856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e393a6edc562f68910e519b23b3f0e287b9273ad68d1e6c1de0b821ce47c8b1`  
		Last Modified: Wed, 07 Feb 2018 23:23:44 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8270011ee0db559687d98ed4c711267bd9486573bf5d1dbcbc25c3f107bd58f`  
		Last Modified: Wed, 07 Feb 2018 23:23:51 GMT  
		Size: 16.2 MB (16181545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c700decae0aa85e4bb8327667db7f920b50653f3ee3d8c0811b5c869501bdac`  
		Last Modified: Wed, 07 Feb 2018 23:23:44 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938f4c92fff0a290124d59c4e40f8850923aa91c78bf8a78fac976fe75bab0b8`  
		Last Modified: Wed, 07 Feb 2018 23:23:44 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77379abe111357be420914a67be5509501d83c3fe7daf429e2c9c1cdfe29597`  
		Last Modified: Thu, 08 Feb 2018 11:15:03 GMT  
		Size: 1.1 MB (1121710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a837137d84b0ff413b704f534aedb27394ac548f1764aa182862ea21d363e0`  
		Last Modified: Thu, 08 Feb 2018 11:15:02 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932930620df468c805f88608fc854a2dce8372cd4a1bb6209b692589941a4f26`  
		Last Modified: Thu, 08 Feb 2018 11:15:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04dbf26d4aaf0cf41115bf69cdd2c8cddcce82df7509037d4d9cb08212d71e7`  
		Last Modified: Fri, 09 Feb 2018 08:27:15 GMT  
		Size: 8.4 MB (8422127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66bdd9f36c7dd03e86953fc305ee1edd5ac6a28dc7c1ac079cf9d20fe31ba79e`  
		Last Modified: Fri, 09 Feb 2018 08:27:10 GMT  
		Size: 3.4 KB (3363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:ac19bdb7396c2842969bcce68af794cf64e2f9d440e5df792ada8cbc6d0e9463
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160203725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faab6da58d801e5a673d9fe09f93fb44dba5bcc117c1cab131afdf59b79e8b88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:20:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 05:20:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 05:22:32 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 05:22:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 05:22:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 05:25:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 05:25:22 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 05:25:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 05:25:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 05:25:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 05:25:43 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 05:25:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 05:26:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 05:26:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 05:26:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 05:26:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 05:26:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 05:26:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 15 Feb 2018 05:26:25 GMT
ENV PHP_VERSION=7.1.14
# Thu, 15 Feb 2018 05:26:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Thu, 15 Feb 2018 05:26:31 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Thu, 15 Feb 2018 05:27:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 15 Feb 2018 05:27:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:32:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Feb 2018 05:32:30 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:32:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Feb 2018 05:32:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:32:37 GMT
WORKDIR /var/www/html
# Thu, 15 Feb 2018 05:32:40 GMT
EXPOSE 80/tcp
# Thu, 15 Feb 2018 05:32:41 GMT
CMD ["apache2-foreground"]
# Thu, 15 Feb 2018 10:23:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 10:23:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Feb 2018 10:23:20 GMT
RUN a2enmod rewrite expires
# Thu, 15 Feb 2018 10:23:22 GMT
VOLUME [/var/www/html]
# Thu, 15 Feb 2018 10:23:25 GMT
ENV WORDPRESS_VERSION=4.9.4
# Thu, 15 Feb 2018 10:23:28 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Thu, 15 Feb 2018 10:23:37 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 15 Feb 2018 10:23:41 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 15 Feb 2018 10:23:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 10:23:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b18160df76743482c104e0424428a95a1ef69ba2124665a354ada6adc6b5395`  
		Last Modified: Thu, 15 Feb 2018 06:40:07 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91967a08dfb8903e319b5d2f36ef7e5c0afa6ad9198ddae9fb5099fdeac8aaa5`  
		Last Modified: Thu, 15 Feb 2018 06:40:22 GMT  
		Size: 67.9 MB (67863484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4da311ba705bb75dff0a34db039a5718c0f61644ec69b4679bd2a1fda6a84cd`  
		Last Modified: Thu, 15 Feb 2018 06:40:04 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2968359e05b4c7b5c8f2a9926f834acbb6f71d1615753782f617b82211211978`  
		Last Modified: Thu, 15 Feb 2018 06:40:05 GMT  
		Size: 4.3 MB (4332537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02d848246eb297b8568e8482e0649d59fca9fbcb7eae02b5e62641bd50af356`  
		Last Modified: Thu, 15 Feb 2018 06:40:03 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6faa7d034a646b4c07256bb13490948d681c23aba40f1308216e80a179b7fb95`  
		Last Modified: Thu, 15 Feb 2018 06:40:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7a07d6d4bbe6f94187fdfb853c67432abe6cdbe027b21688d33c6a58c3600a`  
		Last Modified: Thu, 15 Feb 2018 06:40:01 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e8f2c1fc550773eda72b2880b040cec147ea9cbde97b67363da18652ab43e`  
		Last Modified: Thu, 15 Feb 2018 06:40:11 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f175cbf2f6b8df14478d5423b47c5c6692f5e999f6c707acf577d52d37d267`  
		Last Modified: Thu, 15 Feb 2018 06:40:00 GMT  
		Size: 12.5 MB (12549649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4823cac6a483351926cf96d1b076bc8cf7aa7b5fbb95d63390ec8e9fbd342690`  
		Last Modified: Thu, 15 Feb 2018 06:39:58 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773405d0fe59f714a38b0c5d0fdde704a7d56cf38f480e3c79557c7688713cc`  
		Last Modified: Thu, 15 Feb 2018 06:40:02 GMT  
		Size: 14.1 MB (14111737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d348c17334e0d8ee5f0534529312cf32dfc46f924182a75b78902906744045e9`  
		Last Modified: Thu, 15 Feb 2018 06:39:58 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d95ed8cd751f796f488fcc17607c112c25d53becd41ad8e21764adb377a943`  
		Last Modified: Thu, 15 Feb 2018 06:39:59 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e35b6d262e56601664b5335acd9f0622d4c29d601e25e287847ed409db933`  
		Last Modified: Thu, 15 Feb 2018 10:38:05 GMT  
		Size: 1.1 MB (1096529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea5f4b4f1eacef1536020ff2cd9d5afafd3e189ae9f3dc1610487610121b173`  
		Last Modified: Thu, 15 Feb 2018 10:38:04 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d89e92993ae8973e73b504994d45d163f60ed0696e5e6383e736dc09d80ef0`  
		Last Modified: Thu, 15 Feb 2018 10:38:04 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcef8d19d9ea5384015f47e22b71a9c158d1c3810e1728d942eb85533e26d0a4`  
		Last Modified: Thu, 15 Feb 2018 10:38:07 GMT  
		Size: 8.4 MB (8422124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd22b56d12b2663d67127f3c760f7edbbe68b587c45c21315847bbb1ef87532`  
		Last Modified: Thu, 15 Feb 2018 10:38:04 GMT  
		Size: 3.4 KB (3358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.1-apache` - linux; s390x

```console
$ docker pull wordpress@sha256:416bcab2f932566ffed101fba484816b432277f890d469b751daeca638af4c59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155687470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f72ae257f00b3cb9391b44c5446129fc010bf7d138e2d47cd80740802829ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:20:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 07:20:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 07:20:58 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:20:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 07:20:58 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 07:24:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:24:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 07:24:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 07:24:51 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 07:24:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 07:24:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 07:24:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 07:24:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 07:24:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 07:24:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 07:24:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_VERSION=7.1.14
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Thu, 15 Feb 2018 07:25:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 15 Feb 2018 07:25:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:27:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Feb 2018 07:27:13 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:27:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Feb 2018 07:27:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:27:13 GMT
WORKDIR /var/www/html
# Thu, 15 Feb 2018 07:27:13 GMT
EXPOSE 80/tcp
# Thu, 15 Feb 2018 07:27:13 GMT
CMD ["apache2-foreground"]
# Thu, 15 Feb 2018 12:05:56 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:05:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 15 Feb 2018 12:05:57 GMT
RUN a2enmod rewrite expires
# Thu, 15 Feb 2018 12:05:58 GMT
VOLUME [/var/www/html]
# Thu, 15 Feb 2018 12:05:58 GMT
ENV WORDPRESS_VERSION=4.9.4
# Thu, 15 Feb 2018 12:05:58 GMT
ENV WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c
# Thu, 15 Feb 2018 12:06:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 15 Feb 2018 12:06:00 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 15 Feb 2018 12:06:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 12:06:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96005eba8a61ab393ddfeb5b2e0b93b1de59d2966ce4de5f11fb615932845dfd`  
		Last Modified: Thu, 15 Feb 2018 08:00:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d923a0cf59f25f60f52e4beeb8d299d0eaf78d0bbd936a2a4919e7a582422e59`  
		Last Modified: Thu, 15 Feb 2018 08:00:39 GMT  
		Size: 61.8 MB (61798119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50f7a8712f563bbb8850e19e2f52a9046bc26aef8df4c7036564de9d93ebe59`  
		Last Modified: Thu, 15 Feb 2018 08:00:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c9b5641b6f2c7345c196655eca94c5912f8e3e0378bf2bcd83c214562d703`  
		Last Modified: Thu, 15 Feb 2018 08:01:07 GMT  
		Size: 4.5 MB (4487782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397515e078de583b02fbcb0b366bf1eb5c434b0cb1790ca8392c01be1d6d0626`  
		Last Modified: Thu, 15 Feb 2018 08:01:07 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaa58f474cb93c6a3152edd858caa5609ccd4c605b88735d3cd0c0d8798cba0`  
		Last Modified: Thu, 15 Feb 2018 08:01:05 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4c470e6bb51c9f993c2a4a9c50895696c753bde07bd37bdbf4f237b8b94efb`  
		Last Modified: Thu, 15 Feb 2018 08:01:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423b6e75f53316c6615c86efdefe3492ef8c54dd96997766f7b7000519e34dbb`  
		Last Modified: Thu, 15 Feb 2018 08:01:06 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab99248c0383b90aa99cb751fd7c8fa5b9cd2e049e09089222417dfe785a63e5`  
		Last Modified: Thu, 15 Feb 2018 08:01:06 GMT  
		Size: 12.5 MB (12548690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be64e88291a2678d160a7933735b8609b3afb5fd3979b3ca9b8957f5b17afc25`  
		Last Modified: Thu, 15 Feb 2018 08:01:04 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86036a519c51d809348983d51b49575fa43e596efa23943ed1563bf6a5b46535`  
		Last Modified: Thu, 15 Feb 2018 08:01:08 GMT  
		Size: 14.5 MB (14507588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18831bb885bc8d8adf76faed771df16b8d26a069c820b19bf165173d58fea197`  
		Last Modified: Thu, 15 Feb 2018 08:01:04 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e4b7fd9b8b5316b528c500687258bd5992d59f96ef2fa62c91a3eb3ec5171b`  
		Last Modified: Thu, 15 Feb 2018 08:01:04 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb00fffdc6c83439ffba39d792635597924e62c96c7eeabe3cdbc3a3c656225c`  
		Last Modified: Thu, 15 Feb 2018 12:08:31 GMT  
		Size: 1.1 MB (1117895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b0bb67997354cdaf018ddc070cbe04b6a0e0183febb151151bf5c91c3cb159`  
		Last Modified: Thu, 15 Feb 2018 12:08:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abf925162c4e1644f4f9886cceb1051a69cabefa08b7594e39dcb424062e0c5`  
		Last Modified: Thu, 15 Feb 2018 12:08:30 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042ccf5ceeb15bc79a66597e796d5f3acabb22fa701765eb0fd3fb4b64386ec`  
		Last Modified: Thu, 15 Feb 2018 12:08:33 GMT  
		Size: 8.4 MB (8422128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936ff6a49693e480d6ed14e34b0a668eac630fb3ecefb6e27aa789bf63bae0e7`  
		Last Modified: Thu, 15 Feb 2018 12:08:30 GMT  
		Size: 3.4 KB (3359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
