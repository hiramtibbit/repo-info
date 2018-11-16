## `php:5-apache-jessie`

```console
$ docker pull php@sha256:6934194a33a81dbf94ece833c73c1960695b7525b997d4c1dd738b2a798db5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `php:5-apache-jessie` - linux; amd64

```console
$ docker pull php@sha256:d18439be80f75fbdd4431bc5473971f6dd791bafeeb2164258e5ff77fa5f16d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156055154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98b6d661830d0785ba9c1b89641d50ad860d064e03f949d7b57b4cb7b926ad6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 04:58:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 04:58:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 04:59:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 04:59:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 04:59:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 05:11:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 05:11:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 05:11:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 16 Nov 2018 05:11:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir" 		&& chmod 1777 "$dir" 	; done
# Fri, 16 Nov 2018 05:11:59 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 16 Nov 2018 05:12:00 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 16 Nov 2018 05:12:01 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 16 Nov 2018 05:12:01 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 16 Nov 2018 05:12:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 16 Nov 2018 05:12:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 05:12:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 05:12:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 07:40:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Nov 2018 07:40:57 GMT
ENV PHP_VERSION=5.6.38
# Fri, 16 Nov 2018 07:40:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 07:40:57 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Fri, 16 Nov 2018 07:41:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 07:41:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 07:45:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 07:45:16 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Fri, 16 Nov 2018 07:45:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 07:45:17 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 16 Nov 2018 07:45:18 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 07:45:18 GMT
EXPOSE 80/tcp
# Fri, 16 Nov 2018 07:45:18 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bafc3cb160848e8d45d4e4bd4e7fe228dbaf49e5a2607560c1d438397d44d`  
		Last Modified: Fri, 16 Nov 2018 09:11:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3b432cdf8db80c606a9206406f3fc9eddd206559325717a8b065627a1459d`  
		Last Modified: Fri, 16 Nov 2018 09:11:42 GMT  
		Size: 74.6 MB (74639906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe555ebebce5a175559aa42887a4773514713d8c9da30cd4fa0c43e757b43d97`  
		Last Modified: Fri, 16 Nov 2018 09:11:28 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392d28b53f24aeb523e3a30a1b090acb58889963c9a843d7425b7f3cf96b1730`  
		Last Modified: Fri, 16 Nov 2018 09:13:16 GMT  
		Size: 4.5 MB (4467190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b68fcba3a3e297cfee862c3ecfd32e67bd7359b2696cbf5922075995227be6`  
		Last Modified: Fri, 16 Nov 2018 09:13:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664c6688f189b20fbc76e4754a3a2ba84ddd5cf81f62d9a6a20032745b51e60f`  
		Last Modified: Fri, 16 Nov 2018 09:13:14 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c20d515f894b4f37c9232466bf2fba62adbb7369868c72e4a07883d1b4b2203`  
		Last Modified: Fri, 16 Nov 2018 09:13:13 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5dc7505229ea6d630a3b46a9ab721c763a3a2b438eed65d97a9c3df1bf2cb7`  
		Last Modified: Fri, 16 Nov 2018 09:13:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ed452f9491f20661991b9334b17c82bfb00b64dd01071ed49f562a8c1d5f91`  
		Last Modified: Fri, 16 Nov 2018 09:46:43 GMT  
		Size: 12.8 MB (12819358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22f0b8efc0583dfd5724fea4289ac7250338b9bd39f96a003cb1e49b8f59d8`  
		Last Modified: Fri, 16 Nov 2018 09:46:42 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8cb1843e546095bcb09802e29ae262b6ba5fad1f0a49240c71aa91a8c0acf6`  
		Last Modified: Fri, 16 Nov 2018 09:46:45 GMT  
		Size: 9.8 MB (9764451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210d01fec3126777e3a30a90a64439d37f06ccbd1601922f7c45f7351e60e18`  
		Last Modified: Fri, 16 Nov 2018 09:46:42 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdc78270a59c2168cd594824829c04232e7fc6170804d93ebc7efb585defc44`  
		Last Modified: Fri, 16 Nov 2018 09:46:42 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-apache-jessie` - linux; arm variant v5

```console
$ docker pull php@sha256:ddb48ccf8b99f229694f8b0be4e657ede2be529dc9eddd9941b7dc9e7c94a029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139080238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3dda3fdf263496c0e60358a61420e5978fb55a53afe8b081d8c4d6f080f3f3a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:32:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 10:32:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 10:33:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:33:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 10:33:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 10:39:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:39:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 10:39:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 10:39:13 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 10:39:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 10:39:15 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 10:39:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 10:39:16 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 10:39:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 10:39:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 10:39:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 10:39:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 11:58:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 10:57:24 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 10:57:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 10:57:25 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 10:58:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 10:58:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:01:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Nov 2018 10:28:09 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Thu, 15 Nov 2018 10:28:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 10:28:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Nov 2018 10:28:10 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 10:28:10 GMT
EXPOSE 80/tcp
# Thu, 15 Nov 2018 10:28:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea77eab72fad69e4a1a0cb29e26443a4f505d17cd82d914d28d52b1091115bcf`  
		Last Modified: Wed, 05 Sep 2018 12:28:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd549c6619634d948a4f7a8540cf8f1a964e5b4c260e9372bc853b51f591378d`  
		Last Modified: Wed, 05 Sep 2018 12:28:21 GMT  
		Size: 59.8 MB (59797181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a17495d3695b9cfd7c1554361661bdfc6d0245fea6e0a46da75682712b337b9`  
		Last Modified: Wed, 05 Sep 2018 12:28:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f331df1a70a9e3f88fe1b7c49ab6186415a72f1c14da9d6a84d7231acd8b35f4`  
		Last Modified: Wed, 05 Sep 2018 12:28:56 GMT  
		Size: 4.2 MB (4181657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9d4cb7c932f63542c4cf1079e01492c6dc5260c42430b62ba4de041f7d5af3`  
		Last Modified: Wed, 05 Sep 2018 12:28:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d39c4a1c990ee1a25d8dd44ce27f661655bfa5e0cd5f0d160a4c8627db16359`  
		Last Modified: Wed, 05 Sep 2018 12:28:53 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4626f267ae195e2ade92aa55a187e8597435ffef185daf0a4c371a3c034c6b5`  
		Last Modified: Wed, 05 Sep 2018 12:28:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0142acdb72d0b605834c8e8f19652bf7bb401d44f85596852ac950e74f04d2a`  
		Last Modified: Wed, 05 Sep 2018 12:28:52 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17978bd9f8e6721fa745f14cbef7d8edf65de44958d0743e5add8580848f02f0`  
		Last Modified: Sat, 15 Sep 2018 11:44:20 GMT  
		Size: 12.8 MB (12817465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fc85323bc7833db51efee00a09b911e2ab252f455d5d4b6f3bbc6ffda618`  
		Last Modified: Sat, 15 Sep 2018 11:44:18 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef748449a84670a93e2a393801dc2ce90b723af5b5242963e7ec7d5fef0dd4ca`  
		Last Modified: Sat, 15 Sep 2018 11:44:21 GMT  
		Size: 9.8 MB (9829458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c9a63ae812925f067012562955fd2a4f40cb95b4675e39ad4213e695384cf1`  
		Last Modified: Thu, 15 Nov 2018 10:53:07 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a648742bdcb3977a55a33a20fe20c1c9084b40f8394ddedbce597533a8a3693`  
		Last Modified: Thu, 15 Nov 2018 10:53:07 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-apache-jessie` - linux; arm variant v7

```console
$ docker pull php@sha256:8ad87c6fb834877e1fbd8f30e5881974b3f67a9f6247db2badeeda58130efc0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136580811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17aea017192f9b035fd8727629a9cdeaf7a940b106f225e0d5068b22e604ed0`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:51:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 14:51:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 14:52:16 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:52:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 14:52:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:58:11 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 14:58:11 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 14:58:13 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 14:58:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 14:58:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 14:58:23 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 14:58:23 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 14:58:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 14:58:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:58:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:58:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 16:18:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 13:56:16 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 13:56:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:56:17 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 15 Sep 2018 13:57:05 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:57:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:01:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Nov 2018 13:32:30 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Thu, 15 Nov 2018 13:32:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 13:32:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Nov 2018 13:32:32 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 13:32:32 GMT
EXPOSE 80/tcp
# Thu, 15 Nov 2018 13:32:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96852222b089aab965e9dd5d2588368dc4a1ecb4598596b24553a124a7db692`  
		Last Modified: Wed, 05 Sep 2018 16:49:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29440cc7f82d86298dc13d28c9aeb11e309246617fbf136144e75689f2ac8a12`  
		Last Modified: Wed, 05 Sep 2018 16:50:04 GMT  
		Size: 60.3 MB (60267238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ff893451e32efa2924d8027dfb11e9a4dcbf843e6945114b5ac8a71bf01223`  
		Last Modified: Wed, 05 Sep 2018 16:49:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbc81981f882a4ce39da809d31217a1d7e2ddfcbef8c66b62369b6a18016d4d`  
		Last Modified: Wed, 05 Sep 2018 16:50:58 GMT  
		Size: 3.9 MB (3937679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3afa8fa4119bce868b1396cd00b994ec26521074fa1d125633bb365f37ebb6`  
		Last Modified: Wed, 05 Sep 2018 16:50:55 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5799c8b30c4573bde5aedb9b9f21cf0836e0e569cbfe244ce7f2439986bbdd2`  
		Last Modified: Wed, 05 Sep 2018 16:50:54 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790c0e4e596ac4bf7e6ce65c6286b42987bbaa3f10f5aed1ab4728fa7cd8e9e9`  
		Last Modified: Wed, 05 Sep 2018 16:50:54 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4549c6ab3af5d5cd4e64d475310e9a945029abdec9a31297afbbef6d1700b8e`  
		Last Modified: Wed, 05 Sep 2018 16:50:52 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30a85fc8269be797fbc081cf8919ab45436e67b0a7873bd2db1b94b4d09d983`  
		Last Modified: Sat, 15 Sep 2018 14:41:15 GMT  
		Size: 12.8 MB (12817481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca462f1c95c0908f8be4e4203993ab867d4f2290869a47bd84bf693ce67068`  
		Last Modified: Sat, 15 Sep 2018 14:41:13 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3852d23a32dd700918e7996bb3a82db97d404149c7c6c2b1a04f9a8cb9a5b31c`  
		Last Modified: Sat, 15 Sep 2018 14:41:16 GMT  
		Size: 9.4 MB (9363481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c3528c746f376c3ed29d90106cc5a0992a1ab479d4da5e057eddf7b9783390`  
		Last Modified: Thu, 15 Nov 2018 13:44:28 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cec97a3fce350ae95654f77c919ab8c8a12c831b9624c1cd4b1ad0649a486`  
		Last Modified: Thu, 15 Nov 2018 13:44:28 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-apache-jessie` - linux; 386

```console
$ docker pull php@sha256:4e95c085b8434389e0e9355cb4337587da75c90265a5c50e453ed6617b73f383
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161925045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c3900608f786617617ea158b51d4cc787313e339b480243d249ff31a87e773`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:39:46 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 15:39:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 15:41:09 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:41:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 15:41:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 15:53:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:53:14 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 15:53:14 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 15:53:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 15:53:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 15:53:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 15:53:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 15:53:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 15:53:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 15:53:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 15:53:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 15:53:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 18:46:03 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 18:46:03 GMT
ENV PHP_VERSION=5.6.38
# Tue, 16 Oct 2018 18:46:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 18:46:04 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Tue, 16 Oct 2018 18:46:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 18:46:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 18:51:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Nov 2018 12:53:13 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Thu, 15 Nov 2018 12:53:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Nov 2018 12:53:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Nov 2018 12:53:13 GMT
WORKDIR /var/www/html
# Thu, 15 Nov 2018 12:53:14 GMT
EXPOSE 80/tcp
# Thu, 15 Nov 2018 12:53:14 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cad0394893c30192954e2d4a8aba813587f3d302c0cd056e71c50576b47c2d6`  
		Last Modified: Tue, 16 Oct 2018 19:40:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca7c72d61544e46388a0427322bfcb5f791b2adaee779999bcff220e02cd492`  
		Last Modified: Tue, 16 Oct 2018 19:40:54 GMT  
		Size: 79.8 MB (79825568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e869ec13fa8875c1c86b25c80857f2363eb6dabdf53b52f1bc96adfcbadab5`  
		Last Modified: Tue, 16 Oct 2018 19:40:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db608bb845bc4154dccf904868adb5aec29d9b7dea1374eb70836db6c171af2f`  
		Last Modified: Tue, 16 Oct 2018 19:41:40 GMT  
		Size: 4.7 MB (4650693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384ce2186ab4903f57a92aba1a78ef6e34b3b720fe8a1c2ae84d8a11fba96e85`  
		Last Modified: Tue, 16 Oct 2018 19:41:38 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a0e109fccf8580c6bc678a4793dc31cc6171a114b79d4ed5e08728fb8f09ff`  
		Last Modified: Tue, 16 Oct 2018 19:41:37 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3aa91dc45f8f53718c05b7d1d3249ab9de94f68f5c5ed0205102574b2284cd`  
		Last Modified: Tue, 16 Oct 2018 19:41:36 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9509b02ef9646ad4e322c108db7ae9fbc290d818b8abbf3360398b0970067d45`  
		Last Modified: Tue, 16 Oct 2018 19:41:37 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cbc28775a1405ee3dfd1b0027681e6afb3810cb6df1a4e1ed9bdcc390131d2`  
		Last Modified: Tue, 16 Oct 2018 20:00:36 GMT  
		Size: 12.8 MB (12818778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cf4004fa98f1ddf59600cbadfe7c090db6e260248a3adbd501620b6edb4e`  
		Last Modified: Tue, 16 Oct 2018 20:00:34 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde1331c8e02da3377a05f203b7f3e2a619e37b7d6452dd7baf0892384cd5f2b`  
		Last Modified: Tue, 16 Oct 2018 20:00:38 GMT  
		Size: 10.1 MB (10139296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17e26213bfd638560d862d935f79bfed596d7e37fb09a0fa5c32ff05c4ef0c`  
		Last Modified: Thu, 15 Nov 2018 13:26:56 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1414cab82fb5dd5d8ae3a93985c957227a3334bc85fa627ed529f778dfc349`  
		Last Modified: Thu, 15 Nov 2018 13:26:56 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
