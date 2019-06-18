## `joomla:fpm`

```console
$ docker pull joomla@sha256:27df773ce2ec4f8014ce53bb860a13db3b268f723ada3343a11ed51e75259b5e
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

### `joomla:fpm` - linux; amd64

```console
$ docker pull joomla@sha256:0efc4f2dd804b549219f0cce778ab1a78465dad3daac68619416293bcf276e57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142706564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b617f98ede48be1ddda6d05e8fb5d18b70b951e03bd2b599ecfb7d6aa12e59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:35:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 01:35:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 01:36:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:36:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 01:36:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 01:54:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 11 Jun 2019 01:54:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:54:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:54:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 03:05:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Jun 2019 03:05:31 GMT
ENV PHP_VERSION=7.1.30
# Tue, 11 Jun 2019 03:05:31 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 03:05:31 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Tue, 11 Jun 2019 03:05:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 03:05:46 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 18 Jun 2019 00:18:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Tue, 18 Jun 2019 00:18:23 GMT
COPY multi:c1ff99c7805e8f41fdb0717f754884884ce2157d746a82343d7c737c86ded761 in /usr/local/bin/ 
# Tue, 18 Jun 2019 00:18:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 18 Jun 2019 00:18:23 GMT
WORKDIR /var/www/html
# Tue, 18 Jun 2019 00:18:24 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 18 Jun 2019 00:18:24 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Jun 2019 00:18:24 GMT
EXPOSE 9000
# Tue, 18 Jun 2019 00:18:24 GMT
CMD ["php-fpm"]
# Tue, 18 Jun 2019 02:01:28 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Jun 2019 02:01:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 18 Jun 2019 02:04:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 02:04:55 GMT
VOLUME [/var/www/html]
# Tue, 18 Jun 2019 02:04:55 GMT
ENV JOOMLA_VERSION=3.9.8
# Tue, 18 Jun 2019 02:04:55 GMT
ENV JOOMLA_SHA512=099ccb3b2d6cfb0b6d465f5f45a694e76744aff1a9e9ebf69b8697236849fd6568a6b0de593008ec60dbdb08547a7eee3da2a6c6315ae4013e32d02225a5ed66
# Tue, 18 Jun 2019 02:05:04 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Jun 2019 02:05:04 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Tue, 18 Jun 2019 02:05:05 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Tue, 18 Jun 2019 02:05:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Jun 2019 02:05:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e65236fc68ab0d8a95b419f7227dade0eb78d84ac65d318d4e0b6f91d914ab3`  
		Last Modified: Tue, 11 Jun 2019 04:41:39 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fde9a4a72e50b9d59c73c8820c043c09b1218afb3f103f101d3d2bf78dbeef`  
		Last Modified: Tue, 11 Jun 2019 04:42:01 GMT  
		Size: 67.4 MB (67448408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7565c4cbce22d7dc86bc386167e3a99a3079e08789801c15d0b1091774897ead`  
		Last Modified: Tue, 11 Jun 2019 04:41:38 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352281f44ca9e732de2ad582005a57ff4e36b730409abe95cadfb7b478ce4970`  
		Last Modified: Tue, 11 Jun 2019 04:45:01 GMT  
		Size: 12.6 MB (12550066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f9d459328613b5135427a4c6d4635145a4405aaddafa9402727809dcd0402`  
		Last Modified: Tue, 11 Jun 2019 04:45:00 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdfc646ad83ec9b7a22a0850f3e5aeeb22453c1d2408684460fbe7877b4f597`  
		Last Modified: Tue, 18 Jun 2019 01:19:40 GMT  
		Size: 27.4 MB (27430337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021ca7df6bf0e95945aaa3d3a766f38f54d0117246acbb10b52c7fc3009288d5`  
		Last Modified: Tue, 18 Jun 2019 01:19:35 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7b9df5878dcc934836fba157a079988d681714ac19a0b4d5e780821a8c29e0`  
		Last Modified: Tue, 18 Jun 2019 01:19:35 GMT  
		Size: 7.8 KB (7775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a7ae92c76d3dc47606d2e9397d7125d3f92f403184dcb6772e450022b70efb`  
		Last Modified: Tue, 18 Jun 2019 02:29:32 GMT  
		Size: 3.1 MB (3123735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da3bc7a81f02a0c27050f55db1e7411c400110d1646f31cf803abd8ca342a97`  
		Last Modified: Tue, 18 Jun 2019 02:29:36 GMT  
		Size: 9.7 MB (9651972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0991e6489cda7334e6f0ad05714b4d5682b7fcd4271de8dce1a65bac6c130c60`  
		Last Modified: Tue, 18 Jun 2019 02:29:30 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df77bb3dbc9892a6572287a66bd1272516b9bc224135ced1c7be41ee0a0f609d`  
		Last Modified: Tue, 18 Jun 2019 02:29:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:fpm` - linux; arm variant v5

```console
$ docker pull joomla@sha256:4b10a463d0504c2b41283bc46646ae8cf79d1e17351fc84122a03cf711095bc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130248945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3874e72fc725b63844a741d0e5b40915bcc07afb0d717875b40148ed7e31982a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:49:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 01:49:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 01:50:11 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:50:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 01:50:14 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 02:00:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 11 Jun 2019 02:00:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 02:00:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 02:00:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 02:37:01 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Jun 2019 02:37:01 GMT
ENV PHP_VERSION=7.1.30
# Tue, 11 Jun 2019 02:37:02 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 02:37:02 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Tue, 11 Jun 2019 02:37:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 02:37:20 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:53:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 21:53:25 GMT
COPY multi:c1ff99c7805e8f41fdb0717f754884884ce2157d746a82343d7c737c86ded761 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:53:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:53:26 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 21:53:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 17 Jun 2019 21:53:28 GMT
STOPSIGNAL SIGQUIT
# Mon, 17 Jun 2019 21:53:28 GMT
EXPOSE 9000
# Mon, 17 Jun 2019 21:53:28 GMT
CMD ["php-fpm"]
# Mon, 17 Jun 2019 23:01:40 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Mon, 17 Jun 2019 23:01:40 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Mon, 17 Jun 2019 23:05:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:05:50 GMT
VOLUME [/var/www/html]
# Mon, 17 Jun 2019 23:05:51 GMT
ENV JOOMLA_VERSION=3.9.8
# Mon, 17 Jun 2019 23:05:51 GMT
ENV JOOMLA_SHA512=099ccb3b2d6cfb0b6d465f5f45a694e76744aff1a9e9ebf69b8697236849fd6568a6b0de593008ec60dbdb08547a7eee3da2a6c6315ae4013e32d02225a5ed66
# Mon, 17 Jun 2019 23:06:04 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Mon, 17 Jun 2019 23:06:05 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Mon, 17 Jun 2019 23:06:06 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Mon, 17 Jun 2019 23:06:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Jun 2019 23:06:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cf4f39177cdc0d44e2bba303a27dd9a37e6df3e854c2fdd1191b574bafbaef`  
		Last Modified: Tue, 11 Jun 2019 03:15:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32501d5831013497a7747924b87cfaa0b4ff736fd02852e03987bd57a804b26`  
		Last Modified: Tue, 11 Jun 2019 03:15:37 GMT  
		Size: 57.5 MB (57478383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10249e0ae30e551e86df9e688a1c7f85fd655fc5341e4f43dc544fddef7a7040`  
		Last Modified: Tue, 11 Jun 2019 03:15:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8489dbd08cf6104c326817acf2c0b496582af3667de22e783dff5ce0fa1592f1`  
		Last Modified: Tue, 11 Jun 2019 03:19:22 GMT  
		Size: 12.5 MB (12547822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd586d1447e7469dc7b3f3fcb5b493d7ca2749f6168361bc675f61c739d0c17`  
		Last Modified: Tue, 11 Jun 2019 03:19:20 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74f104e808045c65d7da8db881bca507698a62288591e9c7908072d069bf05a`  
		Last Modified: Mon, 17 Jun 2019 22:04:55 GMT  
		Size: 26.4 MB (26390305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56fcb549a75905850323628fd1ba72400b706e8917a966bc2750f4ee38959e4`  
		Last Modified: Mon, 17 Jun 2019 22:04:45 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d766fc2bb338e52d4b934e96bcd818a5547dcd49cecfab458c9b6ef4b4f40f`  
		Last Modified: Mon, 17 Jun 2019 22:04:45 GMT  
		Size: 7.8 KB (7772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a42e7ce3bcd4087c4192e8a79cd89a037e007b0df29662d76d2ced15cf3fd4`  
		Last Modified: Mon, 17 Jun 2019 23:25:23 GMT  
		Size: 3.0 MB (3011844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a878267423bbb6d3401f2687b1145ec3b7a2bfcfc0038c9cddba8ba6428caddd`  
		Last Modified: Mon, 17 Jun 2019 23:25:28 GMT  
		Size: 9.7 MB (9651963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a33675f4aaf615ff7005494a780a381898fd09289bfc4682391f920ad3d89b4`  
		Last Modified: Mon, 17 Jun 2019 23:25:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3056675d7079f24a912d2076ff7a44a3d923608104dbf571f971a0ee64c39`  
		Last Modified: Mon, 17 Jun 2019 23:25:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:fpm` - linux; arm variant v7

```console
$ docker pull joomla@sha256:69a97078e97c2785d0e0801520a7a5c67c89c1e19c54e4d2ff50d938ae6a6c3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123345460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83265c01781640f1cd3413f4e5b723e38a883f792dcb082c73c8d1909bd5623d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:06:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 02:06:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 02:07:26 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:07:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 02:07:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 02:15:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 11 Jun 2019 02:15:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 02:15:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 02:15:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 02:49:29 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Jun 2019 02:49:30 GMT
ENV PHP_VERSION=7.1.30
# Tue, 11 Jun 2019 02:49:30 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 02:49:31 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Tue, 11 Jun 2019 02:49:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 02:49:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:35:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 22:35:40 GMT
COPY multi:c1ff99c7805e8f41fdb0717f754884884ce2157d746a82343d7c737c86ded761 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:35:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 22:35:41 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 22:35:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 17 Jun 2019 22:35:43 GMT
STOPSIGNAL SIGQUIT
# Mon, 17 Jun 2019 22:35:44 GMT
EXPOSE 9000
# Mon, 17 Jun 2019 22:35:45 GMT
CMD ["php-fpm"]
# Tue, 18 Jun 2019 00:02:41 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Jun 2019 00:02:42 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 18 Jun 2019 00:06:03 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 00:06:04 GMT
VOLUME [/var/www/html]
# Tue, 18 Jun 2019 00:06:04 GMT
ENV JOOMLA_VERSION=3.9.8
# Tue, 18 Jun 2019 00:06:05 GMT
ENV JOOMLA_SHA512=099ccb3b2d6cfb0b6d465f5f45a694e76744aff1a9e9ebf69b8697236849fd6568a6b0de593008ec60dbdb08547a7eee3da2a6c6315ae4013e32d02225a5ed66
# Tue, 18 Jun 2019 00:06:15 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Jun 2019 00:06:16 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Tue, 18 Jun 2019 00:06:17 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Tue, 18 Jun 2019 00:06:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Jun 2019 00:06:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b6f13d13ac723fe0f8a842912b66a1875a09e8ee07140099dfef6b45fd7369`  
		Last Modified: Tue, 11 Jun 2019 03:26:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3803c9e10e4e404d44431f5a836118ef2c76578d1daff839b3c901a5e04dbb63`  
		Last Modified: Tue, 11 Jun 2019 03:27:06 GMT  
		Size: 53.6 MB (53589733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f70c348724606f939a1ecb29fe74e556819f7cb437ad0e19d3778819d1e454`  
		Last Modified: Tue, 11 Jun 2019 03:26:48 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16aab41c794c8954364abbb4fd71b2c61b5fc257a69e876e450472dff0255d3`  
		Last Modified: Tue, 11 Jun 2019 03:31:04 GMT  
		Size: 12.5 MB (12547828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd93df4e853d429db4e1e86cf3b3bde7ecb555db6b65275e7ff9aff7333775`  
		Last Modified: Tue, 11 Jun 2019 03:31:02 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6abef8e04f7255d57f31e593af64e1678126f1014aa99458fa6b1dd651c9cb`  
		Last Modified: Mon, 17 Jun 2019 23:01:05 GMT  
		Size: 25.4 MB (25358794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89772178b04dc31ba5857a31ae6663c6673480b43fc08254cc8d641f94cc309a`  
		Last Modified: Mon, 17 Jun 2019 23:00:57 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a33586be5b6c140ebee1369da2cac32a26e36bc6b4202f88b05b538ae3014d5`  
		Last Modified: Mon, 17 Jun 2019 23:00:57 GMT  
		Size: 7.8 KB (7775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42e37dbea307f42031da87b04aeeb65c13a7e1ae1455298f09cc8a8bffece10`  
		Last Modified: Tue, 18 Jun 2019 00:32:37 GMT  
		Size: 2.9 MB (2908166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb7fc3674eb154560876599b4d27d8e6f7316815150f952aadcbc42a12c061a`  
		Last Modified: Tue, 18 Jun 2019 00:32:41 GMT  
		Size: 9.7 MB (9651963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be81c6c2b8bc20ae111492b29f92efe0361c5ebd4c13d20f34b273c7d9c39ccc`  
		Last Modified: Tue, 18 Jun 2019 00:32:37 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1469a636e48d8e48e133c392d89fd7b59f76aa07ef53c4c0843c4730327504`  
		Last Modified: Tue, 18 Jun 2019 00:32:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:fpm` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:3a6798e5807cc522589397c262da9c98849a1bc2a85ebe34f1892396febb6002
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129571208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe304a56184ec937419e40e69a316d358a41a7352102ceb22e8fbbf59aa6887`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:15:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 01:15:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 01:16:15 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:16:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 01:16:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 01:25:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 11 Jun 2019 01:25:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:25:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:25:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 01:59:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Jun 2019 01:59:25 GMT
ENV PHP_VERSION=7.1.30
# Tue, 11 Jun 2019 01:59:26 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 01:59:27 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Tue, 11 Jun 2019 01:59:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 01:59:45 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:19:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 22:19:44 GMT
COPY multi:c1ff99c7805e8f41fdb0717f754884884ce2157d746a82343d7c737c86ded761 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:19:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 22:19:48 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 22:19:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 17 Jun 2019 22:19:50 GMT
STOPSIGNAL SIGQUIT
# Mon, 17 Jun 2019 22:19:51 GMT
EXPOSE 9000
# Mon, 17 Jun 2019 22:19:52 GMT
CMD ["php-fpm"]
# Mon, 17 Jun 2019 23:40:55 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Mon, 17 Jun 2019 23:40:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Mon, 17 Jun 2019 23:44:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:44:25 GMT
VOLUME [/var/www/html]
# Mon, 17 Jun 2019 23:44:26 GMT
ENV JOOMLA_VERSION=3.9.8
# Mon, 17 Jun 2019 23:44:26 GMT
ENV JOOMLA_SHA512=099ccb3b2d6cfb0b6d465f5f45a694e76744aff1a9e9ebf69b8697236849fd6568a6b0de593008ec60dbdb08547a7eee3da2a6c6315ae4013e32d02225a5ed66
# Mon, 17 Jun 2019 23:44:34 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Mon, 17 Jun 2019 23:44:36 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Mon, 17 Jun 2019 23:44:37 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Mon, 17 Jun 2019 23:44:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Jun 2019 23:44:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f0e3b1ea6135c2c40f26763e08032a918260d0124d7e52179154076017302f`  
		Last Modified: Tue, 11 Jun 2019 02:09:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f893bf60be8ec044bd5b67d7e1172eef50628d3573d6062af2f2d7e5e94b09`  
		Last Modified: Tue, 11 Jun 2019 02:09:56 GMT  
		Size: 57.6 MB (57617859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546af12ff2af210aaf5b0500a17463681bd976790f01b8d6f104d20875bf93b0`  
		Last Modified: Tue, 11 Jun 2019 02:09:34 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d909519e0ed42095693fa3871e2380d3835946da8b3837286f7c0ca82c1d0bfa`  
		Last Modified: Tue, 11 Jun 2019 02:13:56 GMT  
		Size: 12.5 MB (12547762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8199844f05dbb529d539cfae572af480ec7dc5911705a1e756db6398e71afc`  
		Last Modified: Tue, 11 Jun 2019 02:13:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8949885e61c47a28de9dabee6ef66621bd8ac6781254ebcc7c0ef5b0e28f81`  
		Last Modified: Mon, 17 Jun 2019 22:47:46 GMT  
		Size: 26.4 MB (26401082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3ff0f8362c9d5a68792c3e0922d6ebf2a430ebcc5e1d1af8ad3e22311d6f01`  
		Last Modified: Mon, 17 Jun 2019 22:47:40 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181758b48f537e3546cad2530996f2a722b030009528c35df82232f45644789a`  
		Last Modified: Mon, 17 Jun 2019 22:47:40 GMT  
		Size: 7.8 KB (7777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516021303c402e79364206d84b3be8b99f14eb2c0f0b22fd86751c90cd03553a`  
		Last Modified: Tue, 18 Jun 2019 00:11:27 GMT  
		Size: 3.0 MB (3005950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab664771504b4db91959a79f7a766577f4e46d86b239c1bbfc2f03cfcfb81aa`  
		Last Modified: Tue, 18 Jun 2019 00:11:31 GMT  
		Size: 9.7 MB (9651969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4425187154fd2909ca23a0fef54b3451afc8f71238b76e77ae1bf58a051f734`  
		Last Modified: Tue, 18 Jun 2019 00:11:26 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcc9c9af5827efb8f58581a26a953f28582feab1157dd648b52c6338d7b9cfd`  
		Last Modified: Tue, 18 Jun 2019 00:11:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:fpm` - linux; 386

```console
$ docker pull joomla@sha256:81514adb5d5c5dde6e65d497618cc2a6d15bbd1dea0c050c2a0f0a298c273540
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.1 MB (148084017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c964adaf244a84e2e45d61c3652091d37de3003e28aee06913634154d1a417`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:13:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 09:13:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 09:14:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:14:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 09:14:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 09:30:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 11 Jun 2019 09:30:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 09:30:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 09:30:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 10:47:25 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Jun 2019 10:47:26 GMT
ENV PHP_VERSION=7.1.30
# Tue, 11 Jun 2019 10:47:26 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 10:47:26 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Tue, 11 Jun 2019 10:47:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 10:47:42 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 10:57:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 12 Jun 2019 23:54:35 GMT
COPY multi:c1ff99c7805e8f41fdb0717f754884884ce2157d746a82343d7c737c86ded761 in /usr/local/bin/ 
# Wed, 12 Jun 2019 23:54:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 12 Jun 2019 23:54:36 GMT
WORKDIR /var/www/html
# Wed, 12 Jun 2019 23:54:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 12 Jun 2019 23:54:37 GMT
STOPSIGNAL SIGQUIT
# Wed, 12 Jun 2019 23:54:37 GMT
EXPOSE 9000
# Wed, 12 Jun 2019 23:54:37 GMT
CMD ["php-fpm"]
# Thu, 13 Jun 2019 00:54:18 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 13 Jun 2019 00:54:18 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 13 Jun 2019 00:56:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 00:56:48 GMT
VOLUME [/var/www/html]
# Thu, 13 Jun 2019 00:56:48 GMT
ENV JOOMLA_VERSION=3.9.8
# Thu, 13 Jun 2019 00:56:48 GMT
ENV JOOMLA_SHA512=099ccb3b2d6cfb0b6d465f5f45a694e76744aff1a9e9ebf69b8697236849fd6568a6b0de593008ec60dbdb08547a7eee3da2a6c6315ae4013e32d02225a5ed66
# Thu, 13 Jun 2019 00:56:55 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 13 Jun 2019 00:56:56 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Thu, 13 Jun 2019 00:56:56 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Thu, 13 Jun 2019 00:56:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:56:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a513bbd972d333e230f58f4fb02df3eba7a9b587564e5dacf960385051b963c7`  
		Last Modified: Tue, 11 Jun 2019 12:29:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5404367e9ab935acf7d7f661b3e9a4fc2baf299f280474cf1c9a57e94066d05`  
		Last Modified: Tue, 11 Jun 2019 12:30:10 GMT  
		Size: 71.5 MB (71519695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593fe5cf1352b5d1cd7bb14dffc150faddd01e4153d5d355e709bb5743dae6ff`  
		Last Modified: Tue, 11 Jun 2019 12:29:29 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f351283d4114045611120b95d0be34233d4df2e6dc7cac62c7687faaef853e93`  
		Last Modified: Tue, 11 Jun 2019 12:34:29 GMT  
		Size: 12.5 MB (12549471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fb6ac35402912d91b9ec03d5dd774eaa5c6e6ee5d614f45f0ab13f4b9e40bb`  
		Last Modified: Tue, 11 Jun 2019 12:34:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ed9fc54c633e159b93c5a9c28a29eac776eeef0ca7954f65fb1e1d0a37a59b`  
		Last Modified: Tue, 11 Jun 2019 12:34:35 GMT  
		Size: 28.1 MB (28113166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c509122b8590399a58ca7d624fea8c040580f2f0ed7cf65b5c566931e09ab4`  
		Last Modified: Wed, 12 Jun 2019 23:59:27 GMT  
		Size: 2.2 KB (2218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108a59a92846a2738e92fffbdb860daf703b87432e3333b4badde9b1cf6ed7ea`  
		Last Modified: Wed, 12 Jun 2019 23:59:28 GMT  
		Size: 7.8 KB (7778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee8e5e2a502c3bdbd56f6bf3669968e6677de045de26bb875bb51bed8489f0`  
		Last Modified: Thu, 13 Jun 2019 01:15:55 GMT  
		Size: 3.1 MB (3116108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229a0d550163fcf3ac132c23771200430b86daa3b71dcbeab8911a47d363a80c`  
		Last Modified: Thu, 13 Jun 2019 01:16:01 GMT  
		Size: 9.7 MB (9651971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cf79ec49804fd5f92f3a467a30579e60c61cb8f7b7c49398711406ec564caa`  
		Last Modified: Thu, 13 Jun 2019 01:15:54 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7beb1266595d83836ed1daea084f33b3a6bff0f444bc7557ced78b6eb5f5e1`  
		Last Modified: Thu, 13 Jun 2019 01:15:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:fpm` - linux; ppc64le

```console
$ docker pull joomla@sha256:8abcf9c67ba00859928016e2619d0daea3ff95d23d9fe74852ec6cf3eeba8b88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137209907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1d322861acf508a0d1900a6eb5655f4d124ac30058b2f5eeec39fe7b97cde9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:28:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 00:28:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 00:30:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 00:30:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 00:48:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 11 Jun 2019 00:48:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:49:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:49:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 01:47:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Jun 2019 01:47:34 GMT
ENV PHP_VERSION=7.1.30
# Tue, 11 Jun 2019 01:47:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 01:47:41 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Tue, 11 Jun 2019 01:48:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 01:48:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:23:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 22:23:34 GMT
COPY multi:c1ff99c7805e8f41fdb0717f754884884ce2157d746a82343d7c737c86ded761 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:23:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 22:23:43 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 22:23:52 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 17 Jun 2019 22:23:55 GMT
STOPSIGNAL SIGQUIT
# Mon, 17 Jun 2019 22:23:58 GMT
EXPOSE 9000
# Mon, 17 Jun 2019 22:24:01 GMT
CMD ["php-fpm"]
# Tue, 18 Jun 2019 00:31:18 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 18 Jun 2019 00:31:22 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 18 Jun 2019 00:35:11 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 00:35:16 GMT
VOLUME [/var/www/html]
# Tue, 18 Jun 2019 00:35:20 GMT
ENV JOOMLA_VERSION=3.9.8
# Tue, 18 Jun 2019 00:35:23 GMT
ENV JOOMLA_SHA512=099ccb3b2d6cfb0b6d465f5f45a694e76744aff1a9e9ebf69b8697236849fd6568a6b0de593008ec60dbdb08547a7eee3da2a6c6315ae4013e32d02225a5ed66
# Tue, 18 Jun 2019 00:35:35 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 18 Jun 2019 00:35:37 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Tue, 18 Jun 2019 00:35:38 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Tue, 18 Jun 2019 00:35:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Jun 2019 00:35:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b6e5574bd2cd035a3336cc3b8f5b333a20ffbccab045455da0228bab0c1ba5`  
		Last Modified: Tue, 11 Jun 2019 02:03:15 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e927325137c49c14f11fe0043e8b00c0752c407cd1e1dfb5f295b28036ccb9a5`  
		Last Modified: Tue, 11 Jun 2019 02:03:50 GMT  
		Size: 61.8 MB (61833544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd6161db9f298f2195c7171c084406f44551f48daec89a6ebe6dd51d2a519cb`  
		Last Modified: Tue, 11 Jun 2019 02:03:15 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ea90ecedcf673a64d9d8fa32ae44ed551d8cda110c54243a491e2b62ad7404`  
		Last Modified: Tue, 11 Jun 2019 02:10:17 GMT  
		Size: 12.5 MB (12548346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4629fd56688b589383247747825e41b83734dabe4108ac018e65b1195d934ff3`  
		Last Modified: Tue, 11 Jun 2019 02:10:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225ccf00b6a4e7c2c36c5a041b867bf64a25a9c6a8f79c05be5fbd675d65b64d`  
		Last Modified: Mon, 17 Jun 2019 23:07:43 GMT  
		Size: 27.3 MB (27278541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34dab9c59958c207dfee7425f483fb2a148e15b7ea2a9ab6bc108244ee8c050`  
		Last Modified: Mon, 17 Jun 2019 23:07:33 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c775ea8c079b20959dcd12b32b49942b1255e94b680de921dd9cd239c718883`  
		Last Modified: Mon, 17 Jun 2019 23:07:33 GMT  
		Size: 7.8 KB (7776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7faa7a9f4242587dab77bba7ef082a9b058af1212fea6fe6b415c395fbd944`  
		Last Modified: Tue, 18 Jun 2019 01:10:22 GMT  
		Size: 3.1 MB (3139803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dd62436a98f0653b8da87279aef8f9afcddfae23ff8f396dc3f377dfc51399`  
		Last Modified: Tue, 18 Jun 2019 01:10:24 GMT  
		Size: 9.7 MB (9651971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835985d2260c6c457567b44c1f8de76843a3469db630f753d435fe62ddecd409`  
		Last Modified: Tue, 18 Jun 2019 01:10:17 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3406e0eb249bfadb78fc80bc8b0fab7810dc1f06a8e0be8c929fe65c397804b4`  
		Last Modified: Tue, 18 Jun 2019 01:10:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:fpm` - linux; s390x

```console
$ docker pull joomla@sha256:bb7856ba020255cecb36b4d70a97e14144c5fc1c91ad2e578b9ef8158f6c0d08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131106643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210fd5468ccd2ca01eb2779035e8639bbe36420144629016db51fb41b8dd9f08`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:14:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 00:14:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 00:14:32 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:14:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 00:14:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 00:21:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 11 Jun 2019 00:21:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:21:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:21:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 00:21:29 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Jun 2019 00:21:29 GMT
ENV PHP_VERSION=7.1.30
# Tue, 11 Jun 2019 00:21:30 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 00:21:30 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Tue, 11 Jun 2019 00:21:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 00:21:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 20:56:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 20:56:01 GMT
COPY multi:c1ff99c7805e8f41fdb0717f754884884ce2157d746a82343d7c737c86ded761 in /usr/local/bin/ 
# Mon, 17 Jun 2019 20:56:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 20:56:01 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 20:56:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 17 Jun 2019 20:56:03 GMT
STOPSIGNAL SIGQUIT
# Mon, 17 Jun 2019 20:56:04 GMT
EXPOSE 9000
# Mon, 17 Jun 2019 20:56:04 GMT
CMD ["php-fpm"]
# Mon, 17 Jun 2019 21:37:24 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Mon, 17 Jun 2019 21:37:24 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Mon, 17 Jun 2019 21:39:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 21:39:48 GMT
VOLUME [/var/www/html]
# Mon, 17 Jun 2019 21:39:48 GMT
ENV JOOMLA_VERSION=3.9.8
# Mon, 17 Jun 2019 21:39:48 GMT
ENV JOOMLA_SHA512=099ccb3b2d6cfb0b6d465f5f45a694e76744aff1a9e9ebf69b8697236849fd6568a6b0de593008ec60dbdb08547a7eee3da2a6c6315ae4013e32d02225a5ed66
# Mon, 17 Jun 2019 21:39:55 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Mon, 17 Jun 2019 21:39:56 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Mon, 17 Jun 2019 21:39:56 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Mon, 17 Jun 2019 21:39:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Jun 2019 21:39:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5b1e4331a748676200bbdf6b84dacc8ef84fac172bb5923ee5427183a544c8`  
		Last Modified: Tue, 11 Jun 2019 00:52:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c12ba6b51fd55336371dfe818037dc0edda2d570eb4783385da7f07f4413246`  
		Last Modified: Tue, 11 Jun 2019 00:52:17 GMT  
		Size: 55.8 MB (55789082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef956d5d7d868f55f1b344530f6355dc9bd3cf744265c2f66dc566b0d0524eb2`  
		Last Modified: Tue, 11 Jun 2019 00:52:03 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08afaaa3fbf51d8df15c28a2e693e2d744bef3485ae5aa0b0b3f3746bc12b098`  
		Last Modified: Tue, 11 Jun 2019 00:52:44 GMT  
		Size: 12.5 MB (12547359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa432ecfd9f9397eb92559c60a69a571e02bb32a370c4f526cb12bf00ba9a82`  
		Last Modified: Tue, 11 Jun 2019 00:52:43 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f1c64ad006e1a52f032be7f77cfdeaee1bd8375bab3fc3b896bab3e4d8f351`  
		Last Modified: Mon, 17 Jun 2019 21:18:02 GMT  
		Size: 27.6 MB (27589786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320344cc8903b99fe67877871c260705bfc06d5738ff6761a34d6c3be6b4de95`  
		Last Modified: Mon, 17 Jun 2019 21:17:57 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea47e6b33b24f22325586eb79fff13000a880219e692d6e88bf726a4f0ef2e37`  
		Last Modified: Mon, 17 Jun 2019 21:17:57 GMT  
		Size: 7.8 KB (7774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d68f4562993f7ca19880589c2acbc6783c53f999d51d36351e5c84e7581ad7e`  
		Last Modified: Mon, 17 Jun 2019 21:41:19 GMT  
		Size: 3.2 MB (3176858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff588bb91024445b77d5fa2fabbeffb84522448e551e2d526d654dd49ea3928`  
		Last Modified: Mon, 17 Jun 2019 21:41:22 GMT  
		Size: 9.7 MB (9651971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72658fe178a21a83bd091a4f19d520573421ea4b3ad1b8a91f74bbfcf7deed8d`  
		Last Modified: Mon, 17 Jun 2019 21:41:18 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f8c076ea0d5e37177887cb97c992fac0c5580d5c112896b07a31281116325f`  
		Last Modified: Mon, 17 Jun 2019 21:41:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
