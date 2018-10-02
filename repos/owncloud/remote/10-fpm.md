## `owncloud:10-fpm`

```console
$ docker pull owncloud@sha256:01f88cfc8ed66cbde2b62d028f3c1356506b9f4fa0c6fcc2a5c7fcbe91a5dfe2
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

### `owncloud:10-fpm` - linux; amd64

```console
$ docker pull owncloud@sha256:46a4d53a654b3aed7a608ebc06a216aa7ffe5b8cefb9b3a549bea7d46380b74c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217618009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e60c1a7ceb305aa08b78dae7cbd4a1f15a728401edb05acbf0f91a25b84e8f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:11:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 02:11:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:11:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:11:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 06:39:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 04:41:43 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 04:41:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:41:44 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 04:41:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 04:41:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:46:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:46:06 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:46:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:46:06 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:46:07 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 04:46:07 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 04:46:07 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 08:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 08:15:49 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 15 Sep 2018 08:15:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 08:16:20 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Thu, 20 Sep 2018 20:31:00 GMT
ENV OWNCLOUD_VERSION=10.0.10
# Thu, 20 Sep 2018 20:31:01 GMT
ENV OWNCLOUD_SHA256=a2efe484678c1659b9640ea247746a2174d77870d29c7d60abd565c20eb5aa84
# Thu, 20 Sep 2018 20:31:01 GMT
VOLUME [/var/www/html]
# Thu, 20 Sep 2018 20:31:16 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 02 Oct 2018 18:04:20 GMT
COPY file:d37f6ced72c54685115ff42b55a093ee744c3ebeb6639ddc19b28f6204890d49 in /usr/local/bin/ 
# Tue, 02 Oct 2018 18:04:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 18:04:20 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597022806544fcdd94e9f8941a20ad1fece765f84468ffa071ca3a418cf54d66`  
		Last Modified: Sat, 15 Sep 2018 06:48:15 GMT  
		Size: 12.4 MB (12359229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186e173581e7622f2fb87b8d9e845c9997a391605e4f23d1de5bb63790e939d9`  
		Last Modified: Sat, 15 Sep 2018 06:48:14 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f37e7a79f8bbdb3f2742f70d13c5b568244b07ea41135c132d3a54fd11f6b`  
		Last Modified: Sat, 15 Sep 2018 06:48:19 GMT  
		Size: 27.6 MB (27596809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f47b4975d3003d30bdbda0d913f359f21bda0bff7b0bf0de2a7c5421c45e96a`  
		Last Modified: Sat, 15 Sep 2018 06:48:14 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9014636bb272373fdfbedfdbb6c6a992c72b6aee7a65adad455b2ca5b9f5b651`  
		Last Modified: Sat, 15 Sep 2018 06:48:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78920142cd8b39ec649551874e7acaa03b2c1b621c0db154bc682b8646813e88`  
		Last Modified: Sat, 15 Sep 2018 06:48:14 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805ea66dc7d073aca2bdf1b3dd8fde0df03ed65b6d6d5a15d3f35b1894c5b07c`  
		Last Modified: Sat, 15 Sep 2018 08:19:35 GMT  
		Size: 35.5 MB (35510610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df8409fc16e35ae6a7842ab16aaa709e57ec6f22cd268477b327ce29f858902`  
		Last Modified: Sat, 15 Sep 2018 08:19:24 GMT  
		Size: 1.9 MB (1921383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc843e5597c0d3eabb213a7b106c723c698735c9ef4c049926ff091e24fda7f`  
		Last Modified: Sat, 15 Sep 2018 08:19:24 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0421f616b2125a3ed074ad26a3c78a8e110ed2656c26f44850cae659234b73`  
		Last Modified: Sat, 15 Sep 2018 08:19:25 GMT  
		Size: 1.6 MB (1552627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8421fca1447d6a4c0f8f121748c9442c4ea79241cbbd919262afda9d445467b`  
		Last Modified: Thu, 20 Sep 2018 20:33:44 GMT  
		Size: 48.8 MB (48750737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57739e12bffe965c3f64db14cd634f1f60bec59c35e92251c101ba436fff7bc4`  
		Last Modified: Tue, 02 Oct 2018 18:06:26 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; arm variant v5

```console
$ docker pull owncloud@sha256:df24d659909d2552ce5b86599cf43cf05c645236c2f7bbf1ee7e7db83136e8f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 MB (203673310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7691765dbe4a970b4a4ba5901656228425f17196ea2875a9b7cf3e2cc64c9da6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:31:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 09:31:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 09:32:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:32:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 09:32:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 09:42:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 09:42:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 09:42:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 09:42:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 11:04:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 10:09:42 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 10:09:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 10:09:43 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 10:09:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 10:10:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:13:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 10:13:31 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:13:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 10:13:31 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 10:13:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 10:13:33 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 10:13:33 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 12:20:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:22:34 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 15 Sep 2018 12:22:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:23:29 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Fri, 21 Sep 2018 08:52:52 GMT
ENV OWNCLOUD_VERSION=10.0.10
# Fri, 21 Sep 2018 08:52:52 GMT
ENV OWNCLOUD_SHA256=a2efe484678c1659b9640ea247746a2174d77870d29c7d60abd565c20eb5aa84
# Fri, 21 Sep 2018 08:52:52 GMT
VOLUME [/var/www/html]
# Fri, 21 Sep 2018 08:53:42 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Fri, 21 Sep 2018 08:53:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 21 Sep 2018 08:53:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 08:53:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12b8c370f4194843049859a40870387b6afc9ff714f14645ef229a5d129ff75`  
		Last Modified: Wed, 05 Sep 2018 12:15:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74ab99b1c6ebeed75ab17c89463d557176bb46107fdd675809640cdae86c431`  
		Last Modified: Wed, 05 Sep 2018 12:15:47 GMT  
		Size: 57.4 MB (57447228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6fab8b47c897ff471d9356b84c006020884c27efb6bd1b261221de092295bd`  
		Last Modified: Wed, 05 Sep 2018 12:15:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d538c7d08b5a7dc79a82a64e2bc32bdb6855f5314750f2a47ba2a70a5c9027`  
		Last Modified: Sat, 15 Sep 2018 11:33:46 GMT  
		Size: 12.4 MB (12357320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70d28bdec9a6795095df06e9c98e80e7845bc207a66650c6fcb8c3c72ed76a1`  
		Last Modified: Sat, 15 Sep 2018 11:33:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9583a4b0a9bad39bb7d5bba64780f24914557679cbd4e94a175ec13132914f64`  
		Last Modified: Sat, 15 Sep 2018 11:33:52 GMT  
		Size: 26.6 MB (26605837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2736d3e62fa9bf554244d26327b76006c5f766c021743eb5ae6e47c922a83c`  
		Last Modified: Sat, 15 Sep 2018 11:33:43 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bfa30ecaf4b520f67b5b9878f5d835d6d0843d33388b06dbfc19046bf22ec7`  
		Last Modified: Sat, 15 Sep 2018 11:33:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec9c6e1591091c312294045675631a1a70ba6c521e1459409ff439208016c06`  
		Last Modified: Sat, 15 Sep 2018 11:33:43 GMT  
		Size: 7.8 KB (7768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b1299a5c6346ca2a2a966c40cbffb041c037cf9973e7323bb6323bc412f008`  
		Last Modified: Sat, 15 Sep 2018 12:28:45 GMT  
		Size: 34.0 MB (33966577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e5da8b710283f4dd720183cc93960046e5ab4895b4c0e63ad3b1896e835fae`  
		Last Modified: Sat, 15 Sep 2018 12:28:28 GMT  
		Size: 1.8 MB (1849948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9aacaabb8d03478a21018ed4a0c200ebd953915cbc848fe9847a4e866c6a1`  
		Last Modified: Sat, 15 Sep 2018 12:28:26 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc00531e124215cd9aa42d8312d524386033566f38eb2d12971f37a9c75870`  
		Last Modified: Sat, 15 Sep 2018 12:28:27 GMT  
		Size: 1.5 MB (1521101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a6049d046d54c5c6efae9d80f0118fd95a4ca73d8d60ee1650d07764ef65a1`  
		Last Modified: Fri, 21 Sep 2018 08:56:22 GMT  
		Size: 48.8 MB (48750691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd6313e1127cab1cf8d654b4502db6146fdd4f76a9f860a34d796601a1c268c`  
		Last Modified: Fri, 21 Sep 2018 08:56:06 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; arm variant v7

```console
$ docker pull owncloud@sha256:1bbe12e0f269f2cccf0af9dc674b3d40ab666339afe927e018eb865279cb8630
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195833604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073113c4744bd5f8663f6492282bddc2236307d7670214cfeb010c3cd5d69ac1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:54:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 13:54:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 13:55:21 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 13:55:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:04:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 14:04:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:04:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:04:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 15:23:37 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 13:11:13 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 13:11:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:11:14 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 13:11:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:11:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 13:14:36 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:14:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 13:14:37 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 13:14:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 13:14:39 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 13:14:39 GMT
CMD ["php-fpm"]
# Fri, 21 Sep 2018 12:19:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 12:21:39 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Fri, 21 Sep 2018 12:21:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 21 Sep 2018 12:22:35 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Fri, 21 Sep 2018 12:22:41 GMT
ENV OWNCLOUD_VERSION=10.0.10
# Fri, 21 Sep 2018 12:22:50 GMT
ENV OWNCLOUD_SHA256=a2efe484678c1659b9640ea247746a2174d77870d29c7d60abd565c20eb5aa84
# Fri, 21 Sep 2018 12:22:50 GMT
VOLUME [/var/www/html]
# Fri, 21 Sep 2018 12:23:34 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Fri, 21 Sep 2018 12:23:44 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 21 Sep 2018 12:23:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 12:23:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7453977399986cae90e7dff649e6e6239b8561d9f7af71651ea23933b98bd3`  
		Last Modified: Wed, 05 Sep 2018 16:34:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c86f09d6663fdcad54665088cbc80458ba3910dd6ff1221ba525f02902078`  
		Last Modified: Wed, 05 Sep 2018 16:34:57 GMT  
		Size: 53.6 MB (53562344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca86f3766852f42b9b9e8fc1e14732770796c7e01bd15e8d45dcd04d720faeec`  
		Last Modified: Wed, 05 Sep 2018 16:34:40 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb0fb8e30f0a054e738d32487c43587955fc90a852656959d9805e2427f8633`  
		Last Modified: Sat, 15 Sep 2018 14:31:24 GMT  
		Size: 12.4 MB (12357280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d06ef45e7aa9e47e81fbb9d0733a3427ceff56e992b5eca95f22e56f405abb7`  
		Last Modified: Sat, 15 Sep 2018 14:31:22 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27c0992abb6c681c4732246d4356c890edc35ccad54050a1f29fc7a1ea1862f`  
		Last Modified: Sat, 15 Sep 2018 14:31:29 GMT  
		Size: 25.5 MB (25541626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6437b5bc1c02313a8ba888bf1353adc2bb07705f2301a861ed596f12b76c573`  
		Last Modified: Sat, 15 Sep 2018 14:31:22 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5926150a05aebed851248c8c7d034de7637d8b316972dc4a4b7f0168641ce51`  
		Last Modified: Sat, 15 Sep 2018 14:31:22 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85e0a485e1a3ac82b8157be43641f63259ee02d89e7582050d6106d018d3140`  
		Last Modified: Sat, 15 Sep 2018 14:31:22 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf919e29e737dc3cd93231be8f92430d58b65bdde54d92031ba052345b67447`  
		Last Modified: Fri, 21 Sep 2018 12:28:38 GMT  
		Size: 33.1 MB (33062222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c78801d1b94410b8dd000881576b5a7f1510901b1ace5420c3ec3232f24423`  
		Last Modified: Fri, 21 Sep 2018 12:28:26 GMT  
		Size: 1.8 MB (1776884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1790ee25f78df68a9c2a46fde7343af3e71c060b619cdd6c076b719f415734a2`  
		Last Modified: Fri, 21 Sep 2018 12:28:26 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70afdd77c33050e8abebc3ee9cd189bd04272042cd3d9410bee9037b6b2adf9`  
		Last Modified: Fri, 21 Sep 2018 12:28:26 GMT  
		Size: 1.5 MB (1500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd64c0ea2e5210c6dafa573514d51cb06932bfa0a27086bebd05c57eacc23db`  
		Last Modified: Fri, 21 Sep 2018 12:28:41 GMT  
		Size: 48.8 MB (48750688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e37b83fddfd0debac059211b3385ba5ef54ce6c6b03859145975471508a669`  
		Last Modified: Fri, 21 Sep 2018 12:28:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; arm64 variant v8

```console
$ docker pull owncloud@sha256:aa9f6c107bacdf357ed7964ba0cd2295cc507352d383846b6175bdb6361f10df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204089077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b1f356a1eddb24f459258e10c2cf756bf5cf371b3d3ffabc0f17044b076567`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 14:29:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 14:30:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:30:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 14:30:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:54:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 14:54:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:54:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 17:29:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 16:00:58 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 16:00:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 16:00:59 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 16:01:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 16:01:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:09:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 16:09:37 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:09:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 16:09:39 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 16:09:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 16:09:48 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 16:09:49 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 20:38:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:41:46 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 15 Sep 2018 20:41:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:43:06 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Fri, 21 Sep 2018 09:18:44 GMT
ENV OWNCLOUD_VERSION=10.0.10
# Fri, 21 Sep 2018 09:18:45 GMT
ENV OWNCLOUD_SHA256=a2efe484678c1659b9640ea247746a2174d77870d29c7d60abd565c20eb5aa84
# Fri, 21 Sep 2018 09:18:46 GMT
VOLUME [/var/www/html]
# Fri, 21 Sep 2018 09:19:21 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Fri, 21 Sep 2018 09:19:24 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 21 Sep 2018 09:19:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 09:19:26 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9a0c6139ac02ec19ae2b9abd5a62e150d1d48fa5b2f2ce6288673d4abf8c89`  
		Last Modified: Wed, 05 Sep 2018 18:37:30 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f9aedb13f6184ef6937e7fd4e572275b5c360fb3a82984e60f9f409ded5a`  
		Last Modified: Wed, 05 Sep 2018 18:38:28 GMT  
		Size: 57.6 MB (57596375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82954d79d5da39fa6ca0661f210feebf6a504b18c3871386acdc845a57e25927`  
		Last Modified: Wed, 05 Sep 2018 18:37:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89659c87de94ea9107eb7c3e2965a0afc627a68e9c09e6b1938a538bc4c0454e`  
		Last Modified: Sat, 15 Sep 2018 18:42:16 GMT  
		Size: 12.4 MB (12357653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af61992bf69038bc9d513b2f740bb3178bc7ddcbf5f8e874a928d68f8fe33fa`  
		Last Modified: Sat, 15 Sep 2018 18:42:12 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e082939e7ab67e7b5e0c2dd1b4d4ca2456b1adbc5e56d6c1db168dbf780122b`  
		Last Modified: Sat, 15 Sep 2018 18:42:21 GMT  
		Size: 26.6 MB (26557356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b001275fc1e02980719eb02a57b5191c61d1b655baeaeaa33d32da5cc03a5`  
		Last Modified: Sat, 15 Sep 2018 18:42:12 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19232d8895289e4d9823257eaab23c00aa112b85844ec7f6c006f187c8ae107`  
		Last Modified: Sat, 15 Sep 2018 18:42:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cb7a7d57a70c5ff35bbcc31addbb2aed8fab5ed86934362ae5ff081a1f7911`  
		Last Modified: Sat, 15 Sep 2018 18:42:12 GMT  
		Size: 7.8 KB (7768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122c0ed23d36460961bb06c99267a2ada5b0c0f78b33bf7a58dd3e7992a92eaf`  
		Last Modified: Sat, 15 Sep 2018 20:47:48 GMT  
		Size: 35.1 MB (35116117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd536017257200dfc6b6213505caed59c296119c9f76d000be491ee7020e6034`  
		Last Modified: Sat, 15 Sep 2018 20:47:31 GMT  
		Size: 1.8 MB (1829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb044671d35ebc51d60ce9837cb10655393b8eb4f9c61674185bddcaae5d58f`  
		Last Modified: Sat, 15 Sep 2018 20:47:30 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0687ff441134798e0a8dcc3e26e4c52d8486bb9979e860b264e6d1ba1f2bc2`  
		Last Modified: Sat, 15 Sep 2018 20:47:31 GMT  
		Size: 1.5 MB (1538144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c217091acf233ac4fdc0cec4cb89b7159c53040df3e40f6b68bffe345efe3be2`  
		Last Modified: Fri, 21 Sep 2018 09:23:48 GMT  
		Size: 48.8 MB (48750737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4f15411ecd70d56390580efd1c15d18525b00e570ca34ecdb80f9ba53aabf3`  
		Last Modified: Fri, 21 Sep 2018 09:23:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; 386

```console
$ docker pull owncloud@sha256:b49437d1adc7fdafdc4833f63d94b72f4a677cf78250e33bd4f29c23e5f390ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221574305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c494000bb7c9259f5467eac31ddb8720a5a55ff94b03b456eb93d8e9c9d977e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 15:10:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 06 Sep 2018 15:10:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 06 Sep 2018 15:10:43 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 15:10:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 06 Sep 2018 15:10:44 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 06 Sep 2018 15:22:33 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Thu, 06 Sep 2018 15:22:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 06 Sep 2018 15:22:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 06 Sep 2018 15:22:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 06 Sep 2018 19:03:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 14:20:04 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 14:20:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:20:04 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 14:20:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 14:20:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:24:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 14:24:49 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:24:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 14:24:50 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 14:24:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 14:24:51 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 14:24:51 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 19:53:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:54:52 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 15 Sep 2018 19:54:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:55:22 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Fri, 21 Sep 2018 11:38:11 GMT
ENV OWNCLOUD_VERSION=10.0.10
# Fri, 21 Sep 2018 11:38:11 GMT
ENV OWNCLOUD_SHA256=a2efe484678c1659b9640ea247746a2174d77870d29c7d60abd565c20eb5aa84
# Fri, 21 Sep 2018 11:38:11 GMT
VOLUME [/var/www/html]
# Fri, 21 Sep 2018 11:38:28 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Fri, 21 Sep 2018 11:38:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 21 Sep 2018 11:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 11:38:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db5bee340c5db7fe9d658f5d59664e59867d7c2c5c3b1276afb04984f58ed1e`  
		Last Modified: Thu, 06 Sep 2018 21:23:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d286edaf1c6c505e2deaff2a00ef99207980e5dfc804c4a14c2e7f972fbf91b2`  
		Last Modified: Thu, 06 Sep 2018 21:23:56 GMT  
		Size: 71.5 MB (71484727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516c83032aad187053b77d647c0890753c697dcfccf7e57b94581634df3ca9e4`  
		Last Modified: Thu, 06 Sep 2018 21:23:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862c4b3163982442b50caa962dac93dc4f96a7468c1f3771ad225093ff429893`  
		Last Modified: Sat, 15 Sep 2018 16:41:07 GMT  
		Size: 12.4 MB (12358748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2b2fbc8919b65d75e69fae43d53f5ce41c153fb95c077a5f0e289c3f717e2f`  
		Last Modified: Sat, 15 Sep 2018 16:41:04 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b5761c52986d04a966076c40d6ff5ccbe3c81f4a03251c02dce44c3255a8fe`  
		Last Modified: Sat, 15 Sep 2018 16:41:12 GMT  
		Size: 27.9 MB (27909261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177d7cf8f16d27ce5d2c283b2c21c3d98305971751237ed739d36be7c3df6956`  
		Last Modified: Sat, 15 Sep 2018 16:41:04 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa3160b5ead3fdb70921ed77d07c3269daaaac9df823e8e4ed103033ca7c6b4`  
		Last Modified: Sat, 15 Sep 2018 16:41:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded0b9eb724514258ea05b4d72ca4e95e921e056c696c3821cedd11c636aa394`  
		Last Modified: Sat, 15 Sep 2018 16:41:04 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0897905ef73bfb94f2dd71d7dbdbd29cb50ae2bcf9bc967758bf6086fad68545`  
		Last Modified: Sat, 15 Sep 2018 19:58:05 GMT  
		Size: 34.5 MB (34487177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de71ed754f9dc8b7e86c4d2b0b2644e66c01d25c86f44e203bc5ff5de323632f`  
		Last Modified: Sat, 15 Sep 2018 19:57:54 GMT  
		Size: 2.0 MB (1950826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1ca211fa3f209ee0d2fbf459ffb26197d2153dc1528d1b193953b22b766eb8`  
		Last Modified: Sat, 15 Sep 2018 19:57:54 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50246a233ca9a4ac0653299488563831719eb27bf0260ddd4f9986430b4a356f`  
		Last Modified: Sat, 15 Sep 2018 19:57:54 GMT  
		Size: 1.5 MB (1494675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47141985ace2d560e0c4920646ab18fcf41c68e580a5b126414d6dd5a3013d8f`  
		Last Modified: Fri, 21 Sep 2018 11:40:12 GMT  
		Size: 48.8 MB (48750729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecba60521cbc1abde8508214302a10231606cc3faa4ced2b62a3f331befadfb6`  
		Last Modified: Fri, 21 Sep 2018 11:40:02 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; ppc64le

```console
$ docker pull owncloud@sha256:c834438ee8b363eecdba49563399674429b5b9ce2ef2a92725d264c6918936aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212604706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761656f8ebcdd88c3dea3f70730a6c075ed772af0121f772abc23e30c45d13f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 10:12:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 10:14:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:14:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 10:14:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 10:28:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 10:28:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 10:28:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 10:28:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 11:50:59 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 11:56:34 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 11:56:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:56:35 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 11:56:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:56:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 12:00:30 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:00:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 12:00:32 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 12:00:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 12:00:35 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 12:00:37 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 16:25:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 16:27:47 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 15 Sep 2018 16:27:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 16:28:49 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Fri, 21 Sep 2018 09:25:47 GMT
ENV OWNCLOUD_VERSION=10.0.10
# Fri, 21 Sep 2018 09:25:52 GMT
ENV OWNCLOUD_SHA256=a2efe484678c1659b9640ea247746a2174d77870d29c7d60abd565c20eb5aa84
# Fri, 21 Sep 2018 09:25:59 GMT
VOLUME [/var/www/html]
# Fri, 21 Sep 2018 09:26:54 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Fri, 21 Sep 2018 09:26:58 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 21 Sep 2018 09:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 09:27:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d410d48def2a37874fbb12203fc7704c1231389db8a4d2fe7a0ec41b2054951`  
		Last Modified: Wed, 05 Sep 2018 12:30:57 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7697ebc0840cff78c11793c2ac32d5b83b5c870da149d23832f6e7c885503`  
		Last Modified: Wed, 05 Sep 2018 12:31:32 GMT  
		Size: 61.8 MB (61809691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d738f1afbe46c3ed68ec5d3eef36d8c994d3224e71b7690b39a51bc185f360`  
		Last Modified: Wed, 05 Sep 2018 12:30:59 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bcbdb713d122af2884d9d11ea7e19d4905ce36f20d6ad6887e849a871bd38c`  
		Last Modified: Sat, 15 Sep 2018 13:50:48 GMT  
		Size: 12.4 MB (12357618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5bf72a71ceb896263b24bb321872cd43475953392d778d8971b608ac5cb966`  
		Last Modified: Sat, 15 Sep 2018 13:50:42 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca07444be8900c58853f3daf192d758f7b850c6fb3db9852b67ae8dc861874d2`  
		Last Modified: Sat, 15 Sep 2018 13:50:52 GMT  
		Size: 27.5 MB (27462922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dcb1d33d61beb913f4a3d74eaf99ed9716f2b519cc58a6aaf9e1e6f52afcb4`  
		Last Modified: Sat, 15 Sep 2018 13:50:42 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c72c4cf1576c999c0e1275bf189b34e845d9d91a3a72ac15375e571a92aa059`  
		Last Modified: Sat, 15 Sep 2018 13:50:42 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdc50c9f5dd8fe0ab6f70c7bfdd292ae08ffdad4cd15b33378a212d46d2997d`  
		Last Modified: Sat, 15 Sep 2018 13:50:42 GMT  
		Size: 7.8 KB (7768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e5e9fd76815a4794f9ccf8403a4527bcbd2e2314a98d25e017dd49efe476f`  
		Last Modified: Sat, 15 Sep 2018 16:36:58 GMT  
		Size: 36.0 MB (36000606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27ac783f5a8bbe1cbc1d30f7aa7cbfa3812a14d2c33719b68d96788cc47749f`  
		Last Modified: Sat, 15 Sep 2018 16:36:45 GMT  
		Size: 1.9 MB (1907203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1eaf0795cff27db0738283ff0a38190c6324ca6f66ec11c5bbab878f7299c9`  
		Last Modified: Sat, 15 Sep 2018 16:36:44 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5634685613e495d969d93743d4eb6297360572230b3ec92d39605bbf15d34d89`  
		Last Modified: Sat, 15 Sep 2018 16:36:44 GMT  
		Size: 1.6 MB (1563698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0badc4fa98c839facfe993110c0f84098f4516019915af8e90507129e79771a2`  
		Last Modified: Fri, 21 Sep 2018 10:07:46 GMT  
		Size: 48.8 MB (48750696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51a349439a5192e388a2dfcda38de6cd5a0c0a347871142dbc0c3fac5c79088`  
		Last Modified: Fri, 21 Sep 2018 10:06:25 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; s390x

```console
$ docker pull owncloud@sha256:2101c06b09052e5f150909df56cc496da4491fdae128d51c75c69a6759dc83ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210637004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4645a623ae5562d4d95af5dc83adbc9fc1c5f1f004eed7e78340ddae0af2ab9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:52:17 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 12:52:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 12:52:34 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:52:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 12:52:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 13:02:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 05 Sep 2018 13:02:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 13:02:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 13:02:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 13:43:18 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 12:37:40 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 12:37:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:37:41 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 12:37:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 12:37:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:40:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 12:40:27 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:40:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 12:40:28 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 12:40:28 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 15 Sep 2018 12:40:28 GMT
EXPOSE 9000/tcp
# Sat, 15 Sep 2018 12:40:28 GMT
CMD ["php-fpm"]
# Sat, 15 Sep 2018 13:53:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 15 Sep 2018 13:54:38 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 15 Sep 2018 13:54:38 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 13:55:01 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Fri, 21 Sep 2018 11:57:25 GMT
ENV OWNCLOUD_VERSION=10.0.10
# Fri, 21 Sep 2018 11:57:25 GMT
ENV OWNCLOUD_SHA256=a2efe484678c1659b9640ea247746a2174d77870d29c7d60abd565c20eb5aa84
# Fri, 21 Sep 2018 11:57:25 GMT
VOLUME [/var/www/html]
# Fri, 21 Sep 2018 11:57:38 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Fri, 21 Sep 2018 11:57:39 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 21 Sep 2018 11:57:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 11:57:39 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506c5db97b9f6eb71553e5569f522e6a84e62ce4a277e9810c0fb427a4112692`  
		Last Modified: Wed, 05 Sep 2018 14:39:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81952eed5525c283ca8b58c7a82232fae8c8bdb3f5a1d40ef64981ac1bf687cd`  
		Last Modified: Wed, 05 Sep 2018 14:39:12 GMT  
		Size: 55.8 MB (55767576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e30556b64e35e6fc6a33d75c92237cc54af0e9f80f398847226c87f45eb0bb0`  
		Last Modified: Wed, 05 Sep 2018 14:39:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0722a27ac2886311502648426e6a8381de09b01414a756a7663dc4bd9a2c30`  
		Last Modified: Sat, 15 Sep 2018 13:20:55 GMT  
		Size: 12.4 MB (12356933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710af0c28ecd68cbe0b718b1dd4dee670f175a87054cca2e26d0eaf5b0e1a12a`  
		Last Modified: Sat, 15 Sep 2018 13:20:53 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22208046ab9392c62800b5b4db237afeeb3f3918adb146ded51244f47bad2839`  
		Last Modified: Sat, 15 Sep 2018 13:20:58 GMT  
		Size: 27.8 MB (27768479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8218fdc731d86dd9644ab7cf7572c609911f0c07cf8f39119d5622253bd3b1`  
		Last Modified: Sat, 15 Sep 2018 13:20:53 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ef305e6e4f3477c3e572e1d576e8073a0a4817689a3bc3c52d9c5e360620b5`  
		Last Modified: Sat, 15 Sep 2018 13:20:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee47a315c911eac343f2a0a91871dd1234620aa84c3f26fd342770d5991eadb2`  
		Last Modified: Sat, 15 Sep 2018 13:20:53 GMT  
		Size: 7.8 KB (7768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab519dd18970844132758cda8852a110ca7a51cec4637d114f82f70804b5be5c`  
		Last Modified: Sat, 15 Sep 2018 13:57:39 GMT  
		Size: 40.1 MB (40098385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f9b8c030bb0856b68cabac03bc0b8beaf58a7ec7e20da8c654e3ca2899f403`  
		Last Modified: Sat, 15 Sep 2018 13:57:30 GMT  
		Size: 2.0 MB (1966885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c54dc5d9faf42960f913f02e0cc5265d293e1b02df4e4b82a8639145a0af1a4`  
		Last Modified: Sat, 15 Sep 2018 13:57:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0ecd4194c67f6bec32edc28c6a6787a2e5ab00a9a84bdf208a7884ca0c4383`  
		Last Modified: Sat, 15 Sep 2018 13:57:30 GMT  
		Size: 1.6 MB (1581723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d3f4d2507aa0e01b098b1ebe4288b5b2c3663cacce2c7a9ea6d3b0ec16b08c`  
		Last Modified: Fri, 21 Sep 2018 11:59:30 GMT  
		Size: 48.8 MB (48750738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891865e60cc0c922c481adf823c0299330993574c572648fadeb4b626a5670da`  
		Last Modified: Fri, 21 Sep 2018 11:59:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
