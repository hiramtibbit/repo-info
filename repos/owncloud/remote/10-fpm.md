## `owncloud:10-fpm`

```console
$ docker pull owncloud@sha256:c2bb236d0e117dce6e28c1c8888b6dcbff0864c606a5603cf0db6d2d2d1c5255
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
$ docker pull owncloud@sha256:00f98b85140563a1a501ae1e4106f37d5998228d23a225fd287a0a79d4a2477c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213097899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be03264347c494797d8de2afa59162e6995b2a6d0e64141375889bf038b4d520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:49:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 04:49:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 04:50:16 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:50:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 04:50:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 04:59:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 17 Jul 2018 04:59:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 04:59:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 04:59:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 05:55:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 09:23:48 GMT
ENV PHP_VERSION=7.0.31
# Sat, 21 Jul 2018 09:23:49 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 09:23:49 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Sat, 21 Jul 2018 09:24:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 21 Jul 2018 09:24:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 09:27:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 09:27:32 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 21 Jul 2018 09:27:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 09:27:32 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 09:27:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 21 Jul 2018 09:27:34 GMT
EXPOSE 9000/tcp
# Sat, 21 Jul 2018 09:27:34 GMT
CMD ["php-fpm"]
# Sat, 21 Jul 2018 14:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 14:39:31 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 21 Jul 2018 14:39:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 14:40:23 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Sat, 21 Jul 2018 14:40:23 GMT
ENV OWNCLOUD_VERSION=10.0.9
# Sat, 21 Jul 2018 14:40:23 GMT
ENV OWNCLOUD_SHA256=767faedf7b236b469e71ad73a70c6250fc33fd493708d95cf31b0b58b4710973
# Sat, 21 Jul 2018 14:40:24 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 14:40:43 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Sat, 21 Jul 2018 14:40:44 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Sat, 21 Jul 2018 14:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 14:40:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a25f7e493029f541fc3c7ac66fdffdd5f8c4b9b33346031523d053177bb365`  
		Last Modified: Tue, 17 Jul 2018 06:59:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65632e89c5f4ef102bcd13b6e86baf954e0b902f688a46961d5ff0a36dddfebe`  
		Last Modified: Tue, 17 Jul 2018 07:00:01 GMT  
		Size: 67.4 MB (67428909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75fa32da8fd946b82c0447feac1f3c24330594492e3be74a516b18437d5306`  
		Last Modified: Tue, 17 Jul 2018 06:59:32 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b72a8d2ca3d019912767db955cc131297bf8b79b61ebe3e44f57d898146be58`  
		Last Modified: Sat, 21 Jul 2018 11:43:43 GMT  
		Size: 12.4 MB (12358228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697572fbf66ab2229ff980588917f951ac472fe427d8ef7e61e2c45c109571aa`  
		Last Modified: Sat, 21 Jul 2018 11:43:39 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d46439402d1643532dc00f6c4228c159d2c0728e11107768382bc8245fd0bbd`  
		Last Modified: Sat, 21 Jul 2018 11:43:44 GMT  
		Size: 27.2 MB (27187146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be668ef0f0fb69f9d22b253605ed991ffca8dc03d5967f5dfd0291584b7d93ed`  
		Last Modified: Sat, 21 Jul 2018 11:43:40 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b23bdf516e8032647f81d3b937bac12a9bcd93c4776892e4e3070de6e297039`  
		Last Modified: Sat, 21 Jul 2018 11:43:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3fa50e8c6e2cc8c879dad5b6041a7c24b4785f36a2984cd31fb887fa2aad2f`  
		Last Modified: Sat, 21 Jul 2018 11:43:40 GMT  
		Size: 7.8 KB (7760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5b684dde9205d0e27c8eed407e5d5195018a142024812bdba86de7bb68ba15`  
		Last Modified: Sat, 21 Jul 2018 14:45:43 GMT  
		Size: 35.5 MB (35509776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6c7fc7e1b4ad02d779ecb7825537436a48a53d9f737d92053138797ac08862`  
		Last Modified: Sat, 21 Jul 2018 14:45:27 GMT  
		Size: 1.9 MB (1921405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b52168b7739e74eafa160cb06b6ec93dd3bd37bdf1f0017ba4c7aba3e0f661`  
		Last Modified: Sat, 21 Jul 2018 14:45:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de213965f9e3c0c1e8ed074c0d672ba2bfb0306360febeeb9956129d0151b5e3`  
		Last Modified: Sat, 21 Jul 2018 14:45:27 GMT  
		Size: 1.6 MB (1552643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8988517bae3362afc21440ed2d3f219e905ee20974153dd85f2d1c44d2f3d2c`  
		Last Modified: Sat, 21 Jul 2018 14:45:40 GMT  
		Size: 44.6 MB (44642220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1434bf92051f92814e045715b8765de7c1a94c7f70b6cacbf92a1926cd10ba83`  
		Last Modified: Sat, 21 Jul 2018 14:45:26 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; arm variant v5

```console
$ docker pull owncloud@sha256:4fa89300063b99a81f39fadb1294b6d1c3a84cdb11dbe9ceb95c1d10627f8e08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199152070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1a192d196973a3a154432c8b52368938b0b57182d008be74e52daf51eb8899`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:11:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 12:11:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 12:12:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:12:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 12:12:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 12:20:07 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 17 Jul 2018 12:20:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 12:20:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 12:20:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 13:12:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 09:45:55 GMT
ENV PHP_VERSION=7.0.31
# Sat, 21 Jul 2018 09:45:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 09:45:56 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Sat, 21 Jul 2018 09:46:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 21 Jul 2018 09:46:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 09:49:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 09:49:34 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 21 Jul 2018 09:49:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 09:49:35 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 09:49:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 21 Jul 2018 09:49:37 GMT
EXPOSE 9000/tcp
# Sat, 21 Jul 2018 09:49:37 GMT
CMD ["php-fpm"]
# Sat, 21 Jul 2018 14:21:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 14:23:08 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 21 Jul 2018 14:23:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 14:24:01 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Sat, 21 Jul 2018 14:24:01 GMT
ENV OWNCLOUD_VERSION=10.0.9
# Sat, 21 Jul 2018 14:24:01 GMT
ENV OWNCLOUD_SHA256=767faedf7b236b469e71ad73a70c6250fc33fd493708d95cf31b0b58b4710973
# Sat, 21 Jul 2018 14:24:01 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 14:24:21 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Sat, 21 Jul 2018 14:24:24 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Sat, 21 Jul 2018 14:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 14:24:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd628726115d1b85f5fa4da7cce482866282d8d413ca606ea4ceb6d5c78e4f4b`  
		Last Modified: Tue, 17 Jul 2018 14:10:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d762076c20a075be84e128e3058c548c89794ff387f3398c1ffff670865359`  
		Last Modified: Tue, 17 Jul 2018 14:10:35 GMT  
		Size: 57.4 MB (57447364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285bc4dc2b6d84e706bd65098634e75f474fe61ef97464d1ef11e6fd51f5cda7`  
		Last Modified: Tue, 17 Jul 2018 14:10:16 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce175fab79fd268dc3547f66414c83996eeebf8aeb82d243656ada9558c58081`  
		Last Modified: Sat, 21 Jul 2018 11:00:42 GMT  
		Size: 12.4 MB (12356177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9b74b896e30820af182eb3f833ee2f4b219af5dc09adb79aa9b2ba3bee8db9`  
		Last Modified: Sat, 21 Jul 2018 11:00:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4a7154a194285f2f3db88fd01f0da804628747a1660e64d2e5797c489ddbcc`  
		Last Modified: Sat, 21 Jul 2018 11:00:47 GMT  
		Size: 26.2 MB (26194424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628985e41f8f0c76a28109023db50a48808034bc2f2a5dc8cf41300e2363ab4e`  
		Last Modified: Sat, 21 Jul 2018 11:00:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731ba5d6d77e87c88886aebc5878d6f7ba8295ce842a06870a8d1cabde4b0a83`  
		Last Modified: Sat, 21 Jul 2018 11:00:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6fbc8764283dc573ae2c4ab5cb54f00f7878c92013474b08a3106a92038659b`  
		Last Modified: Sat, 21 Jul 2018 11:00:38 GMT  
		Size: 7.8 KB (7762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a030a65b44aa0f8c9db09ce4b2d671fd1828292f41502c621683c444cd8ba70`  
		Last Modified: Sat, 21 Jul 2018 14:27:55 GMT  
		Size: 34.0 MB (33966363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4e341caa0dbdde04a7a99202f3c259533680ba87f94d9a40a4436077ae80a2`  
		Last Modified: Sat, 21 Jul 2018 14:27:44 GMT  
		Size: 1.8 MB (1849928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5be006759af5fbac4ef3a9948e8fa835ee2c794f101d5ea0094e32719bf41c`  
		Last Modified: Sat, 21 Jul 2018 14:27:43 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60962ecd63274bbc9d2c35d410d6760e2b6e7e326f573f05ecad1cec07863f`  
		Last Modified: Sat, 21 Jul 2018 14:27:43 GMT  
		Size: 1.5 MB (1521086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569aa3790f4a265746df18b93756329a6e8fbc8cbe58bd5c0afa93754ef7e3a6`  
		Last Modified: Sat, 21 Jul 2018 14:27:58 GMT  
		Size: 44.6 MB (44642349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e28d2d9787245ae971fd4cedcb8a098aae897c5a13d68b6cd3fe0fa3e1bafe6`  
		Last Modified: Sat, 21 Jul 2018 14:27:43 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; arm variant v7

```console
$ docker pull owncloud@sha256:7c7125a475e1eb9703aa5a48fad0d45ffaeb5d5e00dc3d69a87c3da5f97b7c9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191346734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2358512c7c1ee17718a364d1834342a541636f797d4ed430eafd963654561573`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:15:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 15:15:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 15:15:41 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 15:15:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 15:23:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 17 Jul 2018 15:23:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:23:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:23:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 16:14:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jul 2018 16:14:27 GMT
ENV PHP_VERSION=7.0.30
# Tue, 17 Jul 2018 16:14:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 16:14:27 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Tue, 17 Jul 2018 16:14:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 16:14:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:17:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 16:17:44 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:17:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 16:17:45 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 16:17:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jul 2018 16:17:47 GMT
EXPOSE 9000/tcp
# Tue, 17 Jul 2018 16:17:47 GMT
CMD ["php-fpm"]
# Tue, 17 Jul 2018 20:57:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:58:40 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 17 Jul 2018 20:58:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jul 2018 20:59:27 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Sat, 21 Jul 2018 12:11:22 GMT
ENV OWNCLOUD_VERSION=10.0.9
# Sat, 21 Jul 2018 12:11:22 GMT
ENV OWNCLOUD_SHA256=767faedf7b236b469e71ad73a70c6250fc33fd493708d95cf31b0b58b4710973
# Sat, 21 Jul 2018 12:11:22 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 12:11:41 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Sat, 21 Jul 2018 12:11:47 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Sat, 21 Jul 2018 12:11:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 12:11:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d2a0c1d131c19625fceb8248dc96a847893d5f98f01da360c6b39e27bc3ca0`  
		Last Modified: Tue, 17 Jul 2018 17:14:09 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271d58948a13adbffe09af81abcb95bcfc955a7c954392052af0f5e92bfdfa31`  
		Last Modified: Tue, 17 Jul 2018 17:14:26 GMT  
		Size: 53.6 MB (53562473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f3a80a747ed1051b60ee82a50901d727f7b6bf1adef7ee158199fefc295d04`  
		Last Modified: Tue, 17 Jul 2018 17:14:08 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da74b05bddd14d8e4f10590ceb7a8673861f4f19fb5ca2a4f9393c6f115cc7ed`  
		Last Modified: Tue, 17 Jul 2018 17:36:02 GMT  
		Size: 12.4 MB (12356808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afaf46001b0d5c9fdd7b89282624063127d52b438e60f813cb5bbb951cd9de`  
		Last Modified: Tue, 17 Jul 2018 17:35:55 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d4d4a365b4e73f60ce422f210e10b6101c0c775aa8a922fe0d66f1d191b807`  
		Last Modified: Tue, 17 Jul 2018 17:36:01 GMT  
		Size: 25.2 MB (25164028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdd0e4a857a9499cc123556bdca9869cc1cb8c9c54d476a58a7bf0b564505e8`  
		Last Modified: Tue, 17 Jul 2018 17:35:59 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea35da256fdad6dd485f57cfa0fac11ebf0aacf68568192812e7fb2426617a`  
		Last Modified: Tue, 17 Jul 2018 17:35:59 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ac3296826b7d69fd8e41af2e08047f99b2d75ff92848033e7fbdc01a8cebfe`  
		Last Modified: Tue, 17 Jul 2018 17:35:55 GMT  
		Size: 7.8 KB (7764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3067336a1f256f3cc3d08e8cbc264cf9a3f6c20fb48e2b899fffdfbff98561fd`  
		Last Modified: Tue, 17 Jul 2018 21:03:53 GMT  
		Size: 33.1 MB (33061431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd8fd872b67d76da996d52f980f9c2b1d4ca2ce38d843f69ab084db3cd1d29`  
		Last Modified: Tue, 17 Jul 2018 21:03:41 GMT  
		Size: 1.8 MB (1776936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ea8962b1ac43e143208abc175cc5772a5bcd9b16a9d1e0343d142db4927745`  
		Last Modified: Tue, 17 Jul 2018 21:03:41 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f027d29dca5b442c8758f51ae981e26cb7157c359f783ecbcf13f11ff23969`  
		Last Modified: Tue, 17 Jul 2018 21:03:42 GMT  
		Size: 1.5 MB (1500795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ad38535e75969a5aae33ab800d940b2ad08791a7a50ffbacb60135512b0a5b`  
		Last Modified: Sat, 21 Jul 2018 12:15:06 GMT  
		Size: 44.6 MB (44642349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6391485618076000a1ea6790bf5ff60d1c09623f657e374f1b9b4c0caa1c71`  
		Last Modified: Sat, 21 Jul 2018 12:14:52 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; arm64 variant v8

```console
$ docker pull owncloud@sha256:e02128336d45e4f59ee35e8c2a8eb0e245e9ff682567ea42bfb02d1bfdcca7b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199602922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee6d724af0a195898de79c6250810b6d5585f5a852aac59e2df86e62b767e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 16:03:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 16:03:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:04:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 16:04:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 16:27:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 17 Jul 2018 16:27:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 16:27:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 16:27:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 17:53:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jul 2018 17:53:35 GMT
ENV PHP_VERSION=7.0.30
# Tue, 17 Jul 2018 17:53:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 17:53:36 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Tue, 17 Jul 2018 17:54:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 17:54:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 18:03:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 18:03:40 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 17 Jul 2018 18:03:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 18:03:52 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 18:03:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jul 2018 18:03:54 GMT
EXPOSE 9000/tcp
# Tue, 17 Jul 2018 18:03:55 GMT
CMD ["php-fpm"]
# Wed, 18 Jul 2018 06:47:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 06:50:20 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Wed, 18 Jul 2018 06:50:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 18 Jul 2018 06:51:37 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Sat, 21 Jul 2018 10:25:17 GMT
ENV OWNCLOUD_VERSION=10.0.9
# Sat, 21 Jul 2018 10:25:19 GMT
ENV OWNCLOUD_SHA256=767faedf7b236b469e71ad73a70c6250fc33fd493708d95cf31b0b58b4710973
# Sat, 21 Jul 2018 10:25:23 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 10:26:02 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Sat, 21 Jul 2018 10:26:08 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Sat, 21 Jul 2018 10:26:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 10:26:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873bd0f2b0da24bb481d8491665955d3176f41a8c3262572051e6fbfc2075c14`  
		Last Modified: Tue, 17 Jul 2018 18:53:34 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e8001003dbe417b7882e436548f10e9fc4bfbfc45d9c22416657a3ab0ce20e`  
		Last Modified: Tue, 17 Jul 2018 18:53:57 GMT  
		Size: 57.6 MB (57595585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e276d47e823964f5d049fdc2f13115ee09bb8044a6355809621253a1c52d2adb`  
		Last Modified: Tue, 17 Jul 2018 18:53:34 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee366c458ae9cbfcb9b7a268b5b48f2daf5eb02f1dbb6b34e1a1e082d6bd814f`  
		Last Modified: Tue, 17 Jul 2018 19:13:15 GMT  
		Size: 12.4 MB (12357167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96f8c37d4f69204cf48d01a835e9f07b5764ea92d0e6ed26b54e9bfd69cf5b1`  
		Last Modified: Tue, 17 Jul 2018 19:13:10 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68be2a1e94e05c16c61bbba8ec064e0f9833b817a52523456253afe38f716176`  
		Last Modified: Tue, 17 Jul 2018 19:13:20 GMT  
		Size: 26.2 MB (26181110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67706f2c457273c079a0a634b9cb8e20080874173bbfdf02caeab7f7bcd36a84`  
		Last Modified: Tue, 17 Jul 2018 19:13:10 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ceaca51b7e1554a3342948d4120212b5b896ebeeabe04c186fe4f70becddae2`  
		Last Modified: Tue, 17 Jul 2018 19:13:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e741ca1ad5a1de0c81b5e24b417fdc1e846838b499d5303b21280ff9b0134b39`  
		Last Modified: Tue, 17 Jul 2018 19:13:10 GMT  
		Size: 7.8 KB (7767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fea6f998625cde4b130696bf44eea7b410fc8e2835b0ff2e21575d96d6e54b`  
		Last Modified: Wed, 18 Jul 2018 07:00:45 GMT  
		Size: 35.1 MB (35115934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4507cab6d0858264c0c24cd747118a4b5db27606fd30a7a3b28322e8155f2da4`  
		Last Modified: Wed, 18 Jul 2018 07:00:28 GMT  
		Size: 1.8 MB (1829532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0869e39ed3b038b2ce5b59d37d6cc61808e5e96233e3535016f9cceb2b08ab`  
		Last Modified: Wed, 18 Jul 2018 07:00:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d5324a7a912d029df97e1a3812dcbe44f68f5467dca88f9f4b848cbce6ee50`  
		Last Modified: Wed, 18 Jul 2018 07:00:28 GMT  
		Size: 1.5 MB (1538031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a925f7c4b7c9a222f70da30a63a5436da0f35133292f344ede7af672d75cc81`  
		Last Modified: Sat, 21 Jul 2018 10:32:11 GMT  
		Size: 44.6 MB (44642232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad8c8f523e0dd92fcd22db7a57749b837453efe95d2cf0f5fb0af1a6b26d78d`  
		Last Modified: Sat, 21 Jul 2018 10:31:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; 386

```console
$ docker pull owncloud@sha256:1b93277fb188f4fc90cf3b06225304f38f974933b538aef043547144f15bb39c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217421065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1056e3a45a9b0318f507c789c51f8026ef80afeeb0405b463e53a37bdab870`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:47:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 15:47:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 15:48:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:48:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 15:48:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 15:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 17 Jul 2018 15:59:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:59:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 15:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 17:05:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jul 2018 17:05:04 GMT
ENV PHP_VERSION=7.0.30
# Tue, 17 Jul 2018 17:05:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Tue, 17 Jul 2018 17:05:05 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Tue, 17 Jul 2018 17:05:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 17 Jul 2018 17:05:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 17:09:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 17 Jul 2018 17:09:03 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 17 Jul 2018 17:09:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jul 2018 17:09:03 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 17:09:04 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jul 2018 17:09:04 GMT
EXPOSE 9000/tcp
# Tue, 17 Jul 2018 17:09:05 GMT
CMD ["php-fpm"]
# Wed, 18 Jul 2018 00:30:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:32:08 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Wed, 18 Jul 2018 00:32:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 18 Jul 2018 00:33:06 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Sat, 21 Jul 2018 11:26:00 GMT
ENV OWNCLOUD_VERSION=10.0.9
# Sat, 21 Jul 2018 11:26:00 GMT
ENV OWNCLOUD_SHA256=767faedf7b236b469e71ad73a70c6250fc33fd493708d95cf31b0b58b4710973
# Sat, 21 Jul 2018 11:26:00 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 11:26:25 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Sat, 21 Jul 2018 11:26:26 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Sat, 21 Jul 2018 11:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:26:26 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373dbc1260a05667efc80f8be05f86f2c8e1ffd318e78ef63c8e46f89a458c23`  
		Last Modified: Tue, 17 Jul 2018 18:23:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5043b9e8c05fba62c02a7922de92abc9897582c1d42ef5b54fadd7729ed6724`  
		Last Modified: Tue, 17 Jul 2018 18:23:45 GMT  
		Size: 71.5 MB (71484260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7656a960ed9b5048a41ee9f4e43ba5a1be7cbf598652ea796b7e53d1f8d18c27`  
		Last Modified: Tue, 17 Jul 2018 18:23:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464589cb8b2ec54ba14808db0f08e455c60dabb1b3c6c8a834f184029c04147e`  
		Last Modified: Tue, 17 Jul 2018 18:52:29 GMT  
		Size: 12.4 MB (12358352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90021f0bfd506dcedc24f050edf057f23e0d269ddf0ddaa05b575c3f8fecfbbb`  
		Last Modified: Tue, 17 Jul 2018 18:52:24 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7271f1ea35128f763c7355d85bb323466762bc1ae6165be45364e63ae49bb980`  
		Last Modified: Tue, 17 Jul 2018 18:52:37 GMT  
		Size: 27.9 MB (27865114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64edd26aeca650221197a19a19a18b21d4358accdddc61904b9dbbff7a0f41b4`  
		Last Modified: Tue, 17 Jul 2018 18:52:24 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d9841b7551be014110520e3fe2b817b9988e2b414f0c838abf7e49fe886199`  
		Last Modified: Tue, 17 Jul 2018 18:52:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e52ee440ebe7428aa45fe8f94cd9bfd17f1ac1b9678cdd5dc7533640d05335`  
		Last Modified: Tue, 17 Jul 2018 18:52:25 GMT  
		Size: 7.8 KB (7764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb240743f4ebb2fb2858363a543a98a7e1f64e806f570ea242cd9e8ecb29e901`  
		Last Modified: Wed, 18 Jul 2018 00:38:37 GMT  
		Size: 34.5 MB (34487502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f18e4227d2f5330914847ada5bfbfad540c9ad97b148bff12e580c76cc78654`  
		Last Modified: Wed, 18 Jul 2018 00:38:19 GMT  
		Size: 2.0 MB (1950821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce335b3961b9e6f394895343bd02b4b921b830e1a8fbbd7acd9fcc178a20c241`  
		Last Modified: Wed, 18 Jul 2018 00:38:19 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a40b207536da873cf57bd6754b639859b55f7cc54659e937de55dbb80c887ab`  
		Last Modified: Wed, 18 Jul 2018 00:38:20 GMT  
		Size: 1.5 MB (1494702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b4f4e1ec33818d113ecf09f9d9942f20f49afc0df57f1c1051911f4a2c145b`  
		Last Modified: Sat, 21 Jul 2018 11:29:44 GMT  
		Size: 44.6 MB (44642261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8981e3c90c5d5f4ef506dc28b763d14819854a4717c15b89430a2ce3e709f`  
		Last Modified: Sat, 21 Jul 2018 11:29:25 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; ppc64le

```console
$ docker pull owncloud@sha256:16727b706a6fde62b66cea754e8253b4176fa010797287abb187379128ef2de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208082568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89780fa3e60d40372fd6bf98080837f67b3f27b1f1a37a85378a0454d38d5b99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:54:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 15:54:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 15:56:04 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:56:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 15:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 16:13:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 17 Jul 2018 16:13:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 16:13:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 16:13:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 17:40:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 10:42:37 GMT
ENV PHP_VERSION=7.0.31
# Sat, 21 Jul 2018 10:42:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 10:42:40 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Sat, 21 Jul 2018 10:43:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 21 Jul 2018 10:43:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 10:47:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 10:47:28 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 21 Jul 2018 10:47:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 10:47:31 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 10:47:35 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 21 Jul 2018 10:47:35 GMT
EXPOSE 9000/tcp
# Sat, 21 Jul 2018 10:47:37 GMT
CMD ["php-fpm"]
# Sat, 21 Jul 2018 15:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 15:16:33 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 21 Jul 2018 15:16:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 15:17:24 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Sat, 21 Jul 2018 15:17:24 GMT
ENV OWNCLOUD_VERSION=10.0.9
# Sat, 21 Jul 2018 15:17:25 GMT
ENV OWNCLOUD_SHA256=767faedf7b236b469e71ad73a70c6250fc33fd493708d95cf31b0b58b4710973
# Sat, 21 Jul 2018 15:17:25 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 15:17:48 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Sat, 21 Jul 2018 15:17:51 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Sat, 21 Jul 2018 15:17:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 15:17:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6406e7e7e0e209551d2fc5932b81081b7ee5b53d00110a25a43cd6e5cd522c5d`  
		Last Modified: Tue, 17 Jul 2018 18:34:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6d2e43cf207ce92c12a360170e3c178401d97fa3bf53b8caaff1a77cd9319b`  
		Last Modified: Tue, 17 Jul 2018 18:35:15 GMT  
		Size: 61.8 MB (61810031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d64e6ea2df855f8cef3825a61c8350f67bc9c7c2b9bf22708698e3dcae919fc`  
		Last Modified: Tue, 17 Jul 2018 18:34:43 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f3de69562ad85724efcd481920ab50d3793657e11a42c74fd67d3d8ac2814b`  
		Last Modified: Sat, 21 Jul 2018 12:02:09 GMT  
		Size: 12.4 MB (12356671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdf88e07083b5cb48ae540a5c40126c2f68780709c0c9d3b1ce441a9a80dafd`  
		Last Modified: Sat, 21 Jul 2018 12:02:03 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc09255a6668b641fdea36a028a0a85347380bf2448a6cf749921001ae364c06`  
		Last Modified: Sat, 21 Jul 2018 12:02:12 GMT  
		Size: 27.1 MB (27050677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70ad600a1cb8be64b7e2f41abaec26da908a502913d2d01781ef3ff038bacd3`  
		Last Modified: Sat, 21 Jul 2018 12:02:03 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53154d448bcca93c923cf586590cecc3c1ac582f15125aa8fc78eea06f8fcd30`  
		Last Modified: Sat, 21 Jul 2018 12:02:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfbda19e239b1e205af374dfaa25b578efb7189cd6305e0017a01fa539d297c`  
		Last Modified: Sat, 21 Jul 2018 12:02:03 GMT  
		Size: 7.8 KB (7764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e5e5eda2ba3af8dec00aa47007325ae59dbcf8c53eee975937eb35a05fe8f0`  
		Last Modified: Sat, 21 Jul 2018 15:23:26 GMT  
		Size: 36.0 MB (35999736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dedcbd92e7e3dfb0ac03b557a767403fdafc15c72e6e7aa8b56429d9162877`  
		Last Modified: Sat, 21 Jul 2018 15:23:12 GMT  
		Size: 1.9 MB (1907263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8de6ed04e820d67b71c3f4be38e4ef845ea2daf167100986710e62b24831a5d`  
		Last Modified: Sat, 21 Jul 2018 15:23:12 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b03ec204e42b865c5ec12a0cbea7e4204d0763b0bb9acad44bd8e2d3ff8986`  
		Last Modified: Sat, 21 Jul 2018 15:23:14 GMT  
		Size: 1.6 MB (1563669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b4362dce1b423f30832ec30a032aebae5f0bba17ad31817c3a407d94da1c31`  
		Last Modified: Sat, 21 Jul 2018 15:23:24 GMT  
		Size: 44.6 MB (44642341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb40381d2a78d929c756f685e292b6b06ebac922bd5717ba98d51cef64532fe`  
		Last Modified: Sat, 21 Jul 2018 15:23:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:10-fpm` - linux; s390x

```console
$ docker pull owncloud@sha256:f840bc3ab5d7f757a5e46fc0289f1fff283b3fe77f02a1bcdd8a36c859341cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206099191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dde7c3753ab268c4f06262d4b3d5f32201e19e99b501d4b845a41a4ed9e1b9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:06:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 14:06:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 14:06:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:06:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 14:06:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 14:13:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 17 Jul 2018 14:13:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 14:13:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 14:13:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 14:39:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 13:10:26 GMT
ENV PHP_VERSION=7.0.31
# Sat, 21 Jul 2018 13:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 13:10:26 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Sat, 21 Jul 2018 13:10:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 21 Jul 2018 13:10:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 13:14:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 13:14:25 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 21 Jul 2018 13:14:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 13:14:25 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 13:14:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 21 Jul 2018 13:14:26 GMT
EXPOSE 9000/tcp
# Sat, 21 Jul 2018 13:14:26 GMT
CMD ["php-fpm"]
# Sat, 21 Jul 2018 14:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		gnupg dirmngr 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libxml2-dev 		unzip 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 14:23:28 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Sat, 21 Jul 2018 14:23:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 21 Jul 2018 14:23:53 GMT
RUN set -ex; 	pecl install APCu-5.1.11; 	pecl install memcached-3.0.4; 	pecl install redis-3.1.6; 	docker-php-ext-enable 		apcu 		memcached 		redis
# Sat, 21 Jul 2018 14:23:53 GMT
ENV OWNCLOUD_VERSION=10.0.9
# Sat, 21 Jul 2018 14:23:53 GMT
ENV OWNCLOUD_SHA256=767faedf7b236b469e71ad73a70c6250fc33fd493708d95cf31b0b58b4710973
# Sat, 21 Jul 2018 14:23:53 GMT
VOLUME [/var/www/html]
# Sat, 21 Jul 2018 14:24:06 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Sat, 21 Jul 2018 14:24:06 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Sat, 21 Jul 2018 14:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 14:24:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94dc9dd04ea50ccc8c3717e0bd75a5c90fd6c54fa8ed1d3d5e76c742278ed1e`  
		Last Modified: Tue, 17 Jul 2018 15:15:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b886fac188f950e9d2ededf123e187874d0f2ff8feeb8e7f4da028ffa6bf977f`  
		Last Modified: Tue, 17 Jul 2018 15:15:17 GMT  
		Size: 55.8 MB (55767507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b3846def3adfff0c6ff8c88ccb231518de0f177401024166b5970bac55d61e2`  
		Last Modified: Tue, 17 Jul 2018 15:15:03 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbe0b7b678afdd49651b09be8a99ae457ac2b8324eef04c4b0cc4add2da0b19`  
		Last Modified: Sat, 21 Jul 2018 13:47:52 GMT  
		Size: 12.4 MB (12355758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c3bf2065868b029859ee0a410457b9b6f9acfab5cfc069764f580bd924c6ed`  
		Last Modified: Sat, 21 Jul 2018 13:47:49 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2103827b90c54d6cd567661a7a5bcccd3bd59cd00747d0c4da6bba3771a4c3`  
		Last Modified: Sat, 21 Jul 2018 13:47:55 GMT  
		Size: 27.3 MB (27342694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b555316f47d73673471c93b7758fa574332848348ced4ffca467dbae2b4007`  
		Last Modified: Sat, 21 Jul 2018 13:47:49 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f0b2840454db1d069477ad282ade76b56526f29360d0049d7ee4b9ebd5bd9a`  
		Last Modified: Sat, 21 Jul 2018 13:47:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d678b34b0b431d23a7674f0073710ae1c203b86d132d2fc6cc5bee80c69e3bab`  
		Last Modified: Sat, 21 Jul 2018 13:47:50 GMT  
		Size: 7.8 KB (7762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f831170884fdcb715bbe02b65dce02a076d754500b37871f2337d20a12953174`  
		Last Modified: Sat, 21 Jul 2018 14:26:37 GMT  
		Size: 40.1 MB (40096232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36040bed7eec53d6c792471f1b1d03fe1c36cba1861aa6074ec00079ffcc702`  
		Last Modified: Sat, 21 Jul 2018 14:26:29 GMT  
		Size: 2.0 MB (1966855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335ae9d5302196b95076d3324bccf1ef7155e193b750e078d1050323c3b92cf8`  
		Last Modified: Sat, 21 Jul 2018 14:26:26 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abff66c7c3b4637760547ea3a96e0a66796517591cce8bfaf0c3d50b994d23`  
		Last Modified: Sat, 21 Jul 2018 14:26:26 GMT  
		Size: 1.6 MB (1581702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022678cdf74562a5f5bb4d15ee1508074c01d9fd874d252c1f6c83b947929ef5`  
		Last Modified: Sat, 21 Jul 2018 14:26:35 GMT  
		Size: 44.6 MB (44642261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eda2bcd368803fc9bf9780745b393918a4cd9ee9e5b906a025a027aa0f8b8b0`  
		Last Modified: Sat, 21 Jul 2018 14:26:26 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
