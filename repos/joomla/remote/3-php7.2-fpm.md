## `joomla:3-php7.2-fpm`

```console
$ docker pull joomla@sha256:c823769bea82c2e127e263e82681a3328b5c1bd682846e3418b5014f1d04ec27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `joomla:3-php7.2-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:1605375092de0100e2357f700cc778da9821d8c07265dfe9685039173ef51fba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143565818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb43e506c63c1ed310dc857a5a8329f4bdfcfbed0e9ea09cfa8b7509fc3305f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:59:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Mar 2019 00:59:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Mar 2019 01:00:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Mar 2019 01:00:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Mar 2019 01:00:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 27 Mar 2019 01:14:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Mar 2019 01:14:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 01:14:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 01:14:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 01:47:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 06 Apr 2019 03:23:32 GMT
ENV PHP_VERSION=7.2.17
# Sat, 06 Apr 2019 03:23:33 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.17.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.17.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 03:23:33 GMT
ENV PHP_SHA256=a3e5f51a9ae08813b3925bea3a4de02cd4906fcccf75646e267a213bb63bcf84 PHP_MD5=
# Sat, 06 Apr 2019 03:23:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 06 Apr 2019 03:23:42 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 03:28:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 03:28:49 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 03:28:49 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 03:28:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 03:28:50 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 03:28:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 03:28:51 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 03:28:51 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 06:01:51 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 06 Apr 2019 06:01:51 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 06 Apr 2019 06:03:52 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 06 Apr 2019 06:03:52 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 02:44:52 GMT
ENV JOOMLA_VERSION=3.9.5
# Wed, 10 Apr 2019 02:44:53 GMT
ENV JOOMLA_SHA512=60822c4dd005480ed3554a2e37138c3afdd207e860d617f38db10aab0b11b9367cf287b203fd58385f7ebc75d07ef7af1ecb6b702d3da4877e24ec8998ecaf1f
# Wed, 10 Apr 2019 02:44:57 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 10 Apr 2019 02:44:58 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 10 Apr 2019 02:44:58 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 10 Apr 2019 02:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:44:58 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d79f6773a3c5ae07c05b0e7b89ec1e77ecc166e174fb31aa6a84c5dbd8bbbe0`  
		Last Modified: Wed, 27 Mar 2019 03:24:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dd9a448b8288ad00804e46cc00dbb3f04c56171b5e33625bc10a39b991bed6`  
		Last Modified: Wed, 27 Mar 2019 03:24:16 GMT  
		Size: 67.4 MB (67447123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95719e57e42beddbc34392b923357d36b406690b1d1ff7b23132ebc8e5cb5218`  
		Last Modified: Wed, 27 Mar 2019 03:23:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62434787548a72291cfc9237962b00f83bf7b032a6e11a15997a87d26ae639a0`  
		Last Modified: Sat, 06 Apr 2019 05:34:35 GMT  
		Size: 12.5 MB (12473034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e3ec703cf9889299013e21dbb0308771affc35a46c500c63c3c4fff18be017`  
		Last Modified: Sat, 06 Apr 2019 05:34:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bb1490735cd585d426cfaf0c4b1ca85a9ace084539fa72683b994b7c5b1952`  
		Last Modified: Sat, 06 Apr 2019 05:34:38 GMT  
		Size: 28.4 MB (28449757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392325a0cd0b7e003f94107a3170eda4266dff6ec278573b767fc60d7a822063`  
		Last Modified: Sat, 06 Apr 2019 05:34:34 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f756247246125e40c14fd33e5d95a87ddc027dcedbb408f251e5915de21d6a8`  
		Last Modified: Sat, 06 Apr 2019 05:34:33 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0a8d48a9dc5243dd9179b5ac93732012e306cd20831faa3b647655d292360c`  
		Last Modified: Sat, 06 Apr 2019 05:34:33 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81d17a38280b02b742b049f2e21f60e243867ca5b90d74e6a537cfdfa23d499`  
		Last Modified: Sat, 06 Apr 2019 06:13:41 GMT  
		Size: 3.0 MB (3037704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39d77fece6818fee26f8f2f61d4cda9e2464b44a5c43345d5e674a9232730c`  
		Last Modified: Wed, 10 Apr 2019 02:50:38 GMT  
		Size: 9.6 MB (9649139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13f24f1114b97b28672582b6dc59d37a1b0f3193089d581980bdc90060ead87`  
		Last Modified: Wed, 10 Apr 2019 02:50:32 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28b8915ccbe85fd560fbac0092c5e8731c32ea1040d06eea95702f4aa8eaf9f`  
		Last Modified: Wed, 10 Apr 2019 02:50:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm` - linux; arm variant v5

```console
$ docker pull joomla@sha256:f2503f260f88e9e97e022f966c91e2da57e429fad563cd720136e1c084eadd8a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130952860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8bc8a2e6aedd40c745cecac7ccc972e4b300465117d6883b83d53170bf39da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:52:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Mar 2019 09:52:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Mar 2019 09:54:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:54:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Mar 2019 09:54:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 27 Mar 2019 10:05:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Mar 2019 10:05:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 10:05:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 10:05:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 10:22:09 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 06 Apr 2019 09:14:45 GMT
ENV PHP_VERSION=7.2.17
# Sat, 06 Apr 2019 09:14:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.17.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.17.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 09:14:46 GMT
ENV PHP_SHA256=a3e5f51a9ae08813b3925bea3a4de02cd4906fcccf75646e267a213bb63bcf84 PHP_MD5=
# Sat, 06 Apr 2019 09:15:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 06 Apr 2019 09:15:02 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:18:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:18:53 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:18:54 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:18:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:18:55 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:18:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 09:18:56 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 09:18:57 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 10:36:37 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 06 Apr 2019 10:36:37 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 06 Apr 2019 10:40:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 06 Apr 2019 10:40:26 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 08:49:26 GMT
ENV JOOMLA_VERSION=3.9.5
# Wed, 10 Apr 2019 08:49:27 GMT
ENV JOOMLA_SHA512=60822c4dd005480ed3554a2e37138c3afdd207e860d617f38db10aab0b11b9367cf287b203fd58385f7ebc75d07ef7af1ecb6b702d3da4877e24ec8998ecaf1f
# Wed, 10 Apr 2019 08:49:37 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 10 Apr 2019 08:49:38 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 10 Apr 2019 08:49:39 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 10 Apr 2019 08:49:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 08:49:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a58b87451d460a943c6ad74741ebed6647c7d7f45c14f24e2db5937b3b4d5`  
		Last Modified: Wed, 27 Mar 2019 11:20:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97ec9ee378af874cc7e2992954cc320ef287a2269d420be6c8f5d5531a53b2e`  
		Last Modified: Wed, 27 Mar 2019 11:21:12 GMT  
		Size: 57.5 MB (57471046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c79df62f1fa2576e196bd7819d1211f9ef06498c09229e3398a4fb4d1baac8`  
		Last Modified: Wed, 27 Mar 2019 11:20:51 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eceec60dccac5b0c12909d794cd824acf80141ca240ec994cb1822c5c50077b`  
		Last Modified: Sat, 06 Apr 2019 10:06:13 GMT  
		Size: 12.5 MB (12471135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9600ae280540dabc65687e12911f1beb46113dac231c77c8b76fd4a5a9e45d3`  
		Last Modified: Sat, 06 Apr 2019 10:06:11 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b615d4e4ff2f143f60a157efc04d2aa4dabc5cf149f0e902df99aa41c8cf7d`  
		Last Modified: Sat, 06 Apr 2019 10:06:20 GMT  
		Size: 27.3 MB (27253184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6cf9a3f05f0b35c65afebae5a4a727968676a3f253d58a582b4f4efbf7e788`  
		Last Modified: Sat, 06 Apr 2019 10:06:11 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be36ff69b49eec07430ee73238bd9067f8ffe247d7d25890cef9ec62e281650`  
		Last Modified: Sat, 06 Apr 2019 10:06:11 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32b3ba5e2af4d843d574233f569bd4c34b912b33fc06fc6f128102e494da7bf`  
		Last Modified: Sat, 06 Apr 2019 10:06:11 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a880fd1bf6de814b6d17005f86a3176a9f39868eca5a9997e9963cfd52780396`  
		Last Modified: Sat, 06 Apr 2019 10:50:22 GMT  
		Size: 2.9 MB (2934638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed915294d4f3619f59e9b64bb17e95e391bbba73199f0c6fb121fefb93449f27`  
		Last Modified: Wed, 10 Apr 2019 08:52:22 GMT  
		Size: 9.6 MB (9649142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c37457b2bea8ef7b1a171193fccfc3d2474f519e04579b6e4a1bb05fed465`  
		Last Modified: Wed, 10 Apr 2019 08:52:16 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d58e45aef44158f0acdb67cfd83f1b206efbff2a40eca9e548146345a1bef8b`  
		Last Modified: Wed, 10 Apr 2019 08:52:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:0438fe90de6e4c00a618d47ba8cbbdeb8fb6126958a1f5e7c61db3906ab964e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130258313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef1cb149d4c4b305358fe54fd4bd7bf70fcd224dedbe76e49b4b790b7ea00d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:04:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Mar 2019 13:04:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Mar 2019 13:06:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:06:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Mar 2019 13:06:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 27 Mar 2019 13:28:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Mar 2019 13:29:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 13:29:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 13:29:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 14:13:35 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 06 Apr 2019 10:53:06 GMT
ENV PHP_VERSION=7.2.17
# Sat, 06 Apr 2019 10:53:07 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.17.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.17.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 10:53:08 GMT
ENV PHP_SHA256=a3e5f51a9ae08813b3925bea3a4de02cd4906fcccf75646e267a213bb63bcf84 PHP_MD5=
# Sat, 06 Apr 2019 10:53:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 06 Apr 2019 10:53:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 11:02:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 11:02:20 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 11:02:22 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 11:02:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 11:02:23 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 11:02:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 11:02:25 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 11:02:26 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 14:55:24 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 06 Apr 2019 14:55:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 06 Apr 2019 15:01:01 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 06 Apr 2019 15:01:01 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 09:01:00 GMT
ENV JOOMLA_VERSION=3.9.5
# Wed, 10 Apr 2019 09:01:01 GMT
ENV JOOMLA_SHA512=60822c4dd005480ed3554a2e37138c3afdd207e860d617f38db10aab0b11b9367cf287b203fd58385f7ebc75d07ef7af1ecb6b702d3da4877e24ec8998ecaf1f
# Wed, 10 Apr 2019 09:01:16 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 10 Apr 2019 09:01:17 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 10 Apr 2019 09:01:18 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 10 Apr 2019 09:01:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:01:20 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c8d1c325b5ce5964273f58c45a2c57323bccda171ddabdc24bfb400fbe3f22`  
		Last Modified: Wed, 27 Mar 2019 15:23:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501659e67d0bb573ea81c6c5f8b2f77ec24f07c694c474eb6dc7477093bc7e57`  
		Last Modified: Wed, 27 Mar 2019 15:23:42 GMT  
		Size: 57.6 MB (57607687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee486ea61f5ab3d2cbaa95d972834e60d14aa238fde079747e34fd4493608f83`  
		Last Modified: Wed, 27 Mar 2019 15:23:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ffbc187183a52fbf14350de02386ff3cd0814e2bc62d6e3b0da6a2755a5517`  
		Last Modified: Sat, 06 Apr 2019 13:40:28 GMT  
		Size: 12.5 MB (12471376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de6f2decedc8c6f1fc46dc51ca6ae09a6e156b666385990723de7f6fc0e67a8`  
		Last Modified: Sat, 06 Apr 2019 13:40:24 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360c43a292d0be55c27d10e35aa06eb816765a2ee01af3389f60c5a10863969c`  
		Last Modified: Sat, 06 Apr 2019 13:40:34 GMT  
		Size: 27.3 MB (27250753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde5c31fea2e39824d7202d175f9fb6ee569927dcedfcda2bcb0a27e9802f6f`  
		Last Modified: Sat, 06 Apr 2019 13:40:24 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ba41357ec4e28849e57ca9e250c24ac215bc2535a637271d058af3b2bbe7`  
		Last Modified: Sat, 06 Apr 2019 13:40:24 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20a30b7ed45da689e906d9cc3b00e8c0f25a0733b893a6e78ef5161557e3d89`  
		Last Modified: Sat, 06 Apr 2019 13:40:24 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a5473defed9c259111681dad47a7fe1556f49880c053ede6544cc2c7632fb1`  
		Last Modified: Sat, 06 Apr 2019 15:24:05 GMT  
		Size: 2.9 MB (2926165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3784ddbdbdfb5cc187695bd492724eb8e8dc3d7abf90894458759273d3f825e4`  
		Last Modified: Wed, 10 Apr 2019 09:06:39 GMT  
		Size: 9.6 MB (9649154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181a877bb2066a7382459385e5769a297f57474eab86b2a1ddceb21760861481`  
		Last Modified: Wed, 10 Apr 2019 09:06:33 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358fd6f89e70ecebdf6283bd953a1bfc1d6c2cca5e02a048efe90f274a407584`  
		Last Modified: Wed, 10 Apr 2019 09:06:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm` - linux; 386

```console
$ docker pull joomla@sha256:30c12749b78e40c670829cfb90c4f0050941e209d7a208a3e60345cc773484c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148886715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c0422b357a0ce13aa51a316197d1c7fd68c0e032628a808cabfddee174b116`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:38:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Mar 2019 18:38:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Mar 2019 18:39:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:39:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Mar 2019 18:39:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 27 Mar 2019 18:50:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Mar 2019 18:50:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 18:50:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 18:50:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 19:12:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 06 Apr 2019 11:58:32 GMT
ENV PHP_VERSION=7.2.17
# Sat, 06 Apr 2019 11:58:32 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.17.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.17.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 11:58:32 GMT
ENV PHP_SHA256=a3e5f51a9ae08813b3925bea3a4de02cd4906fcccf75646e267a213bb63bcf84 PHP_MD5=
# Sat, 06 Apr 2019 11:58:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 06 Apr 2019 11:58:42 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:04:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 12:04:12 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 12:04:13 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 12:04:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 12:04:14 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 12:04:14 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 12:04:15 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 12:04:15 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 15:15:02 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 06 Apr 2019 15:15:03 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 06 Apr 2019 15:17:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 06 Apr 2019 15:17:06 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 10:43:55 GMT
ENV JOOMLA_VERSION=3.9.5
# Wed, 10 Apr 2019 10:43:55 GMT
ENV JOOMLA_SHA512=60822c4dd005480ed3554a2e37138c3afdd207e860d617f38db10aab0b11b9367cf287b203fd58385f7ebc75d07ef7af1ecb6b702d3da4877e24ec8998ecaf1f
# Wed, 10 Apr 2019 10:44:00 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 10 Apr 2019 10:44:01 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 10 Apr 2019 10:44:01 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 10 Apr 2019 10:44:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 10:44:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e8b1be9a73e6feca88b632775c8898a46f0dd5937c8ef1f9205c095738762c`  
		Last Modified: Wed, 27 Mar 2019 20:42:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6544196e9554a6d40b37a2a8b4d5687ffdcf4cd3943f4e5fbdeb3412c6e773`  
		Last Modified: Wed, 27 Mar 2019 20:43:05 GMT  
		Size: 71.5 MB (71515745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35effbc15be9d24bde7b27173fffe933934fddcc3b97c54e1eaaf7d99cd73619`  
		Last Modified: Wed, 27 Mar 2019 20:42:46 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc28cc80668bef79a8302a07a242169459aafcaeeead6b535ac3dd2049930bef`  
		Last Modified: Sat, 06 Apr 2019 14:34:29 GMT  
		Size: 12.5 MB (12472620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a967b866fc0bca7ba0d5fb9ead35719d4ea2a25fc92cc4c8e01bd4e0a7082f`  
		Last Modified: Sat, 06 Apr 2019 14:34:27 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347c3d13852543c2b90391b01064c4bc0d43ec9e98b145ae6026b6b398d3e31c`  
		Last Modified: Sat, 06 Apr 2019 14:34:34 GMT  
		Size: 29.1 MB (29076794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc62b2e3e9ad3408ad941b0698a7a0b3dcd9cad3b636401fe983e216bcd8a0e`  
		Last Modified: Sat, 06 Apr 2019 14:34:27 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c21a51397450ce0322068d7160e8170c7fd81276cef661008ddde5141aa274c`  
		Last Modified: Sat, 06 Apr 2019 14:34:27 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f795321199458bee1596677ff47a17fb44e8cdac2cd68cfe9808d20a84575f8`  
		Last Modified: Sat, 06 Apr 2019 14:34:27 GMT  
		Size: 7.8 KB (7803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472ac428a28f2259fad1d35bf97f91f467616c0fa8bfca96b20051e49f8a83c6`  
		Last Modified: Sat, 06 Apr 2019 15:26:32 GMT  
		Size: 3.0 MB (3033651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4c83478ea692d06567adaa73cebb69ff1ad8a8ecdf4f0ac4a41d63b101c0d2`  
		Last Modified: Wed, 10 Apr 2019 10:46:15 GMT  
		Size: 9.6 MB (9649160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e95338670414890e0c54cf4572dcd27baa66a6ca0275b8936833b64025264fc`  
		Last Modified: Wed, 10 Apr 2019 10:46:11 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c778102894fd70940896d3b1c4bad9bd582601064f382d9bcf2ad1cf3ce3ca09`  
		Last Modified: Wed, 10 Apr 2019 10:46:11 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.2-fpm` - linux; ppc64le

```console
$ docker pull joomla@sha256:b927cb88745f3e6f387674d0c30370926d77bc933043230da691aec4abab3cd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138074042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ab83009196e076724c234ae0ef04587cc6b60e102465a3a6671829366df937`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:55:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Mar 2019 10:55:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Mar 2019 10:57:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:57:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Mar 2019 10:57:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 27 Mar 2019 11:10:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Mar 2019 11:10:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 11:11:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 11:11:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 11:38:34 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 06 Apr 2019 09:35:45 GMT
ENV PHP_VERSION=7.2.17
# Sat, 06 Apr 2019 09:35:47 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.17.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.17.tar.xz.asc/from/this/mirror
# Sat, 06 Apr 2019 09:35:50 GMT
ENV PHP_SHA256=a3e5f51a9ae08813b3925bea3a4de02cd4906fcccf75646e267a213bb63bcf84 PHP_MD5=
# Sat, 06 Apr 2019 09:36:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 06 Apr 2019 09:36:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:41:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 06 Apr 2019 09:42:01 GMT
COPY multi:a2584e5f7c76a8490afb4ee25a0ca396447538b121e31873975439ee8f7305d9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 09:42:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 06 Apr 2019 09:42:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 06 Apr 2019 09:42:13 GMT
WORKDIR /var/www/html
# Sat, 06 Apr 2019 09:42:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 06 Apr 2019 09:42:23 GMT
EXPOSE 9000
# Sat, 06 Apr 2019 09:42:26 GMT
CMD ["php-fpm"]
# Sat, 06 Apr 2019 12:01:12 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 06 Apr 2019 12:01:15 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 06 Apr 2019 12:05:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 06 Apr 2019 12:05:21 GMT
VOLUME [/var/www/html]
# Wed, 10 Apr 2019 08:43:17 GMT
ENV JOOMLA_VERSION=3.9.5
# Wed, 10 Apr 2019 08:43:22 GMT
ENV JOOMLA_SHA512=60822c4dd005480ed3554a2e37138c3afdd207e860d617f38db10aab0b11b9367cf287b203fd58385f7ebc75d07ef7af1ecb6b702d3da4877e24ec8998ecaf1f
# Wed, 10 Apr 2019 08:43:36 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 10 Apr 2019 08:43:38 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 10 Apr 2019 08:43:39 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 10 Apr 2019 08:43:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 08:43:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d8d6ee980ff0699d1c4ae1cd58d966012a7ac3339b6d79b236de2039107f2`  
		Last Modified: Wed, 27 Mar 2019 12:20:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc75f64ae24214c9b90e368f7a5e0f4dcaa9bb0846c942a01de5913ebdb0f50`  
		Last Modified: Wed, 27 Mar 2019 12:20:58 GMT  
		Size: 61.8 MB (61832711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb762fbffd9e09ca148bb8f5c57e5ac2d629675cf3c52c0568d859fb01b99d`  
		Last Modified: Wed, 27 Mar 2019 12:20:18 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84016a7871a1d45617a1107faf6b5b3c178298ddb419aba6351ee7adf0cb9835`  
		Last Modified: Sat, 06 Apr 2019 11:20:40 GMT  
		Size: 12.5 MB (12471544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d15f5b84bd0f660f8bbfca40980be30fab9b7e134b78781a39d4922c5fd70a`  
		Last Modified: Sat, 06 Apr 2019 11:20:35 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fb92a2a3246d8b39c0ef01902ef3b30e2912a768c392190441363b25a289e6`  
		Last Modified: Sat, 06 Apr 2019 11:20:46 GMT  
		Size: 28.3 MB (28303276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ddaaf7b3efbedf35ab6605035dfca909fa3b82a6cc2012a05ec2829d76f2e1`  
		Last Modified: Sat, 06 Apr 2019 11:20:36 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0e670f7811ce3cf599cb7f465291d8185284d766593c92057e34fc9f3fbc72`  
		Last Modified: Sat, 06 Apr 2019 11:20:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91981608cc6c2d4db83911478377bd8ac8a07b8bdfdd7c12fdf7ed2f6d6f6b9`  
		Last Modified: Sat, 06 Apr 2019 11:20:36 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d583caf629c94557cbed303078933ac9667c7a1dbf88036bf6716f841da80b`  
		Last Modified: Sat, 06 Apr 2019 12:26:44 GMT  
		Size: 3.1 MB (3052928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed38c87f9756269bb9f95d8e41d9e43b43e6df8543dbd93137af41ef06eb8093`  
		Last Modified: Wed, 10 Apr 2019 08:52:21 GMT  
		Size: 9.6 MB (9649142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcfbed0eeca7955abc2114e2849853d1255537dec6d20e1cc2e107e44dfb0f3`  
		Last Modified: Wed, 10 Apr 2019 08:51:45 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad2c80dae81ec52c4d2f5d4d95bae467b773898fd0da16ac72edb11ce47dc99`  
		Last Modified: Wed, 10 Apr 2019 08:51:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
