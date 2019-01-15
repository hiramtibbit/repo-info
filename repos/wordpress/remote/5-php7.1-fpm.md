## `wordpress:5-php7.1-fpm`

```console
$ docker pull wordpress@sha256:4d123929ccec3e1d4928c9d466eacce38ff673d576ac1e5f94ba7c0615da32c3
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

### `wordpress:5-php7.1-fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:18736d0933ef308071281285581dcb253442eb8afb9655875a7fbf7233cfc7fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141565766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08746277c241f530cd954bcbced6d92b7bc8511b6932df06504190b2a29da8bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 04:23:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 04:23:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 04:23:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:23:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 04:23:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 05:38:26 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 11 Jan 2019 02:45:02 GMT
ENV PHP_VERSION=7.1.26
# Fri, 11 Jan 2019 02:45:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.26.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 02:45:02 GMT
ENV PHP_SHA256=10b7ae634c12852fae52a22dc2262e5f12418ad59fd20da2d00d71a212235d31 PHP_MD5=
# Fri, 11 Jan 2019 02:45:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 02:45:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 02:50:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 02:50:38 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 02:50:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 02:50:39 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 02:50:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 02:50:40 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 02:50:40 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 04:17:01 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 04:17:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 04:17:02 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 04:17:02 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 04:17:02 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 04:17:05 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 04:17:05 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 04:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 04:17:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf89f2eda244c750e106e9751aa6714e8002accc9ebc4efe784800ff424e2a8`  
		Last Modified: Sat, 29 Dec 2018 08:46:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350207dcf1b7e69d73ee5e688ec3f1bb6576481773105b8635193dc7fe5010bb`  
		Last Modified: Sat, 29 Dec 2018 08:47:00 GMT  
		Size: 67.4 MB (67442723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a33d96b4e7acb10a1e637ccc316d5e823debfa5c64704b4935af982bd79926`  
		Last Modified: Sat, 29 Dec 2018 08:46:44 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7090447ec58b5bfa6974ff471858c8b33a3a13128b04cb71de9aa2b75ccb996`  
		Last Modified: Fri, 11 Jan 2019 03:54:59 GMT  
		Size: 12.5 MB (12536030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bd796179f1f91c8a38c55d9e959647b8deb2f54b2d1cd4e8c9a93bcdb5d85c`  
		Last Modified: Fri, 11 Jan 2019 03:54:58 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87fd76b5abd64392f008137332ee6004ef270eb32e4a56b4d3a6f57ccdf2f47`  
		Last Modified: Fri, 11 Jan 2019 03:55:03 GMT  
		Size: 27.6 MB (27641628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c14c515645ac075c50bf293b014e2687d779931ad9129085faed5fbc4cb634`  
		Last Modified: Fri, 11 Jan 2019 03:54:57 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b2c1f36ffb56d4d12e4953b13f7d5aea5413579a3644c9beebe13a2747db97`  
		Last Modified: Fri, 11 Jan 2019 03:54:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7a22a6202eff9fa4058665334efdd68a1b6eda879fb72441ec0bfca22b580`  
		Last Modified: Fri, 11 Jan 2019 03:54:57 GMT  
		Size: 7.8 KB (7768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36664e23ffc496b352c5d0fc8ecb2d320e85310577eca121769326b1fab2271d`  
		Last Modified: Fri, 11 Jan 2019 04:20:01 GMT  
		Size: 1.1 MB (1059174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf896af39cb5e026addb942b03040a0c8423d24c333d7cb087dc03487c22b00`  
		Last Modified: Fri, 11 Jan 2019 04:20:01 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fee4f5f827f7fdec55444219cb0d7712e4014a07653cca93d11d36b3877ed06`  
		Last Modified: Fri, 11 Jan 2019 04:20:04 GMT  
		Size: 10.4 MB (10378174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea05a56fcf4ddd2a3ec44c6bc656e382a754b298822b1de6209fa4d44cc0b2db`  
		Last Modified: Fri, 11 Jan 2019 04:20:01 GMT  
		Size: 3.8 KB (3784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.1-fpm` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:e8bf20a6a258bf5a6d1504945332aeaa3e4d145c488b7c1072c2b0848c9d6314
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129152849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c712658426f85675fd9479f759eb9b028ff411a320eed2940bab0bc16d8d482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:15:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 29 Dec 2018 13:15:11 GMT
ENV PHP_VERSION=7.1.25
# Sat, 29 Dec 2018 13:15:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 13:15:12 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Sat, 29 Dec 2018 13:15:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 13:15:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:19:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 13:19:03 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:19:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 13:19:04 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 13:19:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 29 Dec 2018 13:19:06 GMT
EXPOSE 9000
# Sat, 29 Dec 2018 13:19:07 GMT
CMD ["php-fpm"]
# Fri, 04 Jan 2019 11:07:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 04 Jan 2019 11:07:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:07:46 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 10:42:03 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 10:42:04 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 10:42:09 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 10:42:10 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:42:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e3cdfd4b8aa7c6975aa3a8d66e79a96e88d75e585f99e5af1d1bab5b630e9d`  
		Last Modified: Sat, 29 Dec 2018 15:15:17 GMT  
		Size: 12.5 MB (12532636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f25cf5da337c23300e0278ed171f00dcb4324927853ef4f88ecdcfd3b3b4bbc`  
		Last Modified: Sat, 29 Dec 2018 15:15:14 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a0cbab64a23a175915321fc8693295b7ae25c9aeadfc6e010a4a1198962c03`  
		Last Modified: Sat, 29 Dec 2018 15:15:23 GMT  
		Size: 26.6 MB (26578757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d16c8f8f0f632dcd9f88dab60c49aaef227e81655f2a34ceea2297fe32efa5`  
		Last Modified: Sat, 29 Dec 2018 15:15:14 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b369e90babb1cb10c281a19bebbe8095e2a98254aeb240fdfdd87539406075`  
		Last Modified: Sat, 29 Dec 2018 15:15:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540f1a9dbb2cc78b4a0a953355e2429d37395f7d3798ce4e5adb1d850800bae0`  
		Last Modified: Sat, 29 Dec 2018 15:15:14 GMT  
		Size: 7.8 KB (7770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6af8e4488495990e8d565ada66c5d5e810257a8502548d06f8ebcbd0c3125`  
		Last Modified: Fri, 04 Jan 2019 11:16:26 GMT  
		Size: 1.0 MB (1015612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d48871953da27c6c8197c737b4cc1aaec6b64fa16ac0234108c50eedd8840`  
		Last Modified: Fri, 04 Jan 2019 11:16:26 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde325872328f952701c78e597bc99d8f433b096a67c219a91e8a17e6ff11437`  
		Last Modified: Fri, 11 Jan 2019 10:48:45 GMT  
		Size: 10.4 MB (10378228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c716e012359a0b33ad6ee993bbbe86175bb6b82725a47ab52d122ccb75fff765`  
		Last Modified: Fri, 11 Jan 2019 10:48:41 GMT  
		Size: 3.8 KB (3785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.1-fpm` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:43afd5c5cd1e46f73693ea0c3c913f46964ce4b2987bd71f2dae399e622bf777
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122269856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0215cf88f5f99c949557dcd6899d44bdb09b6478914784b7de748753a44926e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 17:08:57 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 11 Jan 2019 13:39:44 GMT
ENV PHP_VERSION=7.1.26
# Fri, 11 Jan 2019 13:39:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.26.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:39:45 GMT
ENV PHP_SHA256=10b7ae634c12852fae52a22dc2262e5f12418ad59fd20da2d00d71a212235d31 PHP_MD5=
# Fri, 11 Jan 2019 13:39:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:39:59 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:43:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:43:11 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:43:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:43:11 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:43:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:43:13 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:43:13 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 14:53:14 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 14:53:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:53:16 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:53:17 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 14:53:17 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 14:53:22 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 14:53:23 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:53:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:53:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1e1def1dbf7011f60f22b461203cd2aa3d1ccbe438d1ebfab693738491dba2`  
		Last Modified: Fri, 11 Jan 2019 14:13:57 GMT  
		Size: 12.5 MB (12533935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f707a73250c682fb49414573280778f4ffb432756a1771f290aa8dbc02d0adc`  
		Last Modified: Fri, 11 Jan 2019 14:13:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fe82cfb30b051cb5fb36e7d22a4525709fbde1ff8faf1726af9ffe47641485`  
		Last Modified: Fri, 11 Jan 2019 14:14:02 GMT  
		Size: 25.5 MB (25529405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b319ffedd6b47844bf7133b5aad905d59bf8737de80e241262c0ae17b0e1bd`  
		Last Modified: Fri, 11 Jan 2019 14:13:54 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a4164758a791b9f0e99aca4f21cc71615bfd48dce64d8f3abd1624f587d285`  
		Last Modified: Fri, 11 Jan 2019 14:13:54 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fba4dee1b0c16e5b5cd74ab3fd4d6ec5de75cbb4a54c5d0f0bcba9b7fedc2f`  
		Last Modified: Fri, 11 Jan 2019 14:13:54 GMT  
		Size: 7.8 KB (7773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83d100c49ebacad4b0e58958d44e365e4cd6fc1d13abd691ef317d3cc91b7f9`  
		Last Modified: Fri, 11 Jan 2019 15:00:04 GMT  
		Size: 953.1 KB (953083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d417ac9b3cf15727f351dacfa12e5be1b67d5329e453dc0a61f91da7faf2b139`  
		Last Modified: Fri, 11 Jan 2019 15:00:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51760e94d072e61120935c057eeeb3fd8432670fb8f55eea03e71949546be0a2`  
		Last Modified: Fri, 11 Jan 2019 15:00:08 GMT  
		Size: 10.4 MB (10378235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ff1a348dd826f50c4eeb47c2955f45214dc72afca863b2bb63ad8bf77c870b`  
		Last Modified: Fri, 11 Jan 2019 15:00:05 GMT  
		Size: 3.8 KB (3786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.1-fpm` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:655ba62c14d11c776ac22b44f217f9ecb58f50e7939aa565f16b33ba5040982c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128454672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1786e9accafff5e2ebec583ed9a2f7703c812d9095c50899efd4eac84b3fe9c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 22:04:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 22:04:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 23:26:08 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 11 Jan 2019 12:37:24 GMT
ENV PHP_VERSION=7.1.26
# Fri, 11 Jan 2019 12:37:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.26.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:37:28 GMT
ENV PHP_SHA256=10b7ae634c12852fae52a22dc2262e5f12418ad59fd20da2d00d71a212235d31 PHP_MD5=
# Fri, 11 Jan 2019 12:38:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:38:27 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:47:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:47:47 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:47:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:47:51 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:47:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 12:47:54 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 12:47:54 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 14:30:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 14:30:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:30:21 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:30:23 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 14:30:24 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 14:30:32 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 14:30:33 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:30:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbfa966b7df7ad153b09bf14d6208b2a3eab85bea672029a78c88ddb329dd9`  
		Last Modified: Fri, 11 Jan 2019 13:31:45 GMT  
		Size: 12.5 MB (12534260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51c209357ca83120c939ad914ed4f26dfc885df3e86a6efa5520ddbe358a1ed`  
		Last Modified: Fri, 11 Jan 2019 13:31:41 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfeea1406dca5b95eeef6e37e3498b1394e22fad59360c502ca60157c6c0df28`  
		Last Modified: Fri, 11 Jan 2019 13:31:53 GMT  
		Size: 26.6 MB (26595429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616f0f77f3ee19757dabb3039461d143023f2c37074786ee82ceb5dd8f1e6021`  
		Last Modified: Fri, 11 Jan 2019 13:31:41 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0bafb92f91c4e7813ffbf1876e2a95b4065cbd6107587b83578d311a1f1215`  
		Last Modified: Fri, 11 Jan 2019 13:31:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb472dd3e5e43a62516a60b311c52bc4ffd832cff9a1b8b0314437399c9cc79`  
		Last Modified: Fri, 11 Jan 2019 13:31:41 GMT  
		Size: 7.8 KB (7771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab49a4a44f583c4c613c648d09165babf746fde74bd84cbd8afbb671e0855512`  
		Last Modified: Fri, 11 Jan 2019 14:55:58 GMT  
		Size: 987.9 KB (987936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7546d7b985fd475a6c03807ecd67a5465b0bd0d4eebfd4c625a5969afc6ed0f`  
		Last Modified: Fri, 11 Jan 2019 14:55:58 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd94fd9a0852707681a0afec43b62497ff3000964353ecf3df3a25d3b1a0696b`  
		Last Modified: Fri, 11 Jan 2019 14:56:03 GMT  
		Size: 10.4 MB (10378175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751a5d9c17c8fae7abb4ac5c3dca8ada128111f287a21b951e20621296638f8a`  
		Last Modified: Fri, 11 Jan 2019 14:55:58 GMT  
		Size: 3.8 KB (3788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.1-fpm` - linux; 386

```console
$ docker pull wordpress@sha256:8689da8d36490ace2080b5c0039d72d1a73de3677dfbedf3566333028e028204
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147001891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e271de4345fce77c5c7aed7a3cc69936c287c8c5203741c860b488a2e7038cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:32:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 11 Jan 2019 13:33:24 GMT
ENV PHP_VERSION=7.1.26
# Fri, 11 Jan 2019 13:33:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.26.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:33:25 GMT
ENV PHP_SHA256=10b7ae634c12852fae52a22dc2262e5f12418ad59fd20da2d00d71a212235d31 PHP_MD5=
# Fri, 11 Jan 2019 13:33:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:33:35 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:38:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:38:36 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:38:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:38:37 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:38:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:38:38 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:38:38 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 15:39:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 15:39:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:39:13 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:39:13 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 15:39:13 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 15:39:16 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 15:39:16 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:39:17 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c91e9da208db3dddeaf635080594d3fce5853976a2f361e1ebca93c39e63db4`  
		Last Modified: Fri, 11 Jan 2019 14:55:50 GMT  
		Size: 12.5 MB (12535542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffffe30890f9e963e9667e3982fc78097f4adab139dbd2eda6ab8002423e5797`  
		Last Modified: Fri, 11 Jan 2019 14:55:48 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed56f440edbe959cb920db0b2b6d048f8178fdcc4ebfd8f7205545580ded79db`  
		Last Modified: Fri, 11 Jan 2019 14:55:55 GMT  
		Size: 28.3 MB (28329959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c193ced4f0dc93240d813e722d14af3904795314bbcfdbb4d8099baa64d50`  
		Last Modified: Fri, 11 Jan 2019 14:55:48 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd267e36841b80cf1099750d370263b943091a0a0ff5411655046a5ab49bec54`  
		Last Modified: Fri, 11 Jan 2019 14:55:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561dd4d18567c52c32b461f51bf2aafd246cbac990eb6506689bb7cc9d20757`  
		Last Modified: Fri, 11 Jan 2019 14:55:49 GMT  
		Size: 7.8 KB (7769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895eed4c4e0b5f59795186273715274cdec58199768300c1216e6f473034288c`  
		Last Modified: Fri, 11 Jan 2019 15:54:45 GMT  
		Size: 1.1 MB (1106198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9389c20df1501fafdb8eca24bc02989d949ae82c59a7a57e09ecaba193a72f6c`  
		Last Modified: Fri, 11 Jan 2019 15:54:44 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d22137c438c46360ec577eb5ce8eafd8b38b114f5973aec1ee8e015f8449e0`  
		Last Modified: Fri, 11 Jan 2019 15:54:47 GMT  
		Size: 10.4 MB (10378164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf084223703479c3d8ad553dfa82ce492d2d9850f4161a2d1bb7c107e1612bf`  
		Last Modified: Fri, 11 Jan 2019 15:54:44 GMT  
		Size: 3.8 KB (3787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.1-fpm` - linux; ppc64le

```console
$ docker pull wordpress@sha256:7ff3484b1709a405a19a448d02f778f79c4a944c037d9d384948302a006e2f84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136054504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c04b7da4b22581cea63698c6171860ae54417d02617041f4e2bfe4c4fa3a502`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:18:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 13:18:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 14:07:23 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 11 Jan 2019 10:58:59 GMT
ENV PHP_VERSION=7.1.26
# Fri, 11 Jan 2019 10:59:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.26.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:59:02 GMT
ENV PHP_SHA256=10b7ae634c12852fae52a22dc2262e5f12418ad59fd20da2d00d71a212235d31 PHP_MD5=
# Fri, 11 Jan 2019 10:59:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:59:34 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:03:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:03:22 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:03:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:03:26 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:03:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 11:03:30 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 11:03:32 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:03:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 13:03:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:03:24 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:03:26 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 13:03:28 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 13:03:39 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 13:03:40 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:03:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f46d5bdd4b0f55a80d42126eead97c97f3dbc3baebc61e8210f44c4eb2c23be`  
		Last Modified: Fri, 11 Jan 2019 11:30:31 GMT  
		Size: 12.5 MB (12534444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e12dcef16ffa43e0638a8370b0300eab2aee89c3e4c08b40f236c20b11717c`  
		Last Modified: Fri, 11 Jan 2019 11:30:25 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacbf915908c71c32cfa286a9d6de622f7ec70a7518d16b4489a3f3c9023be51`  
		Last Modified: Fri, 11 Jan 2019 11:30:32 GMT  
		Size: 27.5 MB (27482925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e786997f19f1602b47e1fc89dbfabde0017d8527912ec58548041296461841b4`  
		Last Modified: Fri, 11 Jan 2019 11:30:25 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0547e8641f5354807d718b6772802f192d7dc9054d92c6eadc8d74b3c0a10dc9`  
		Last Modified: Fri, 11 Jan 2019 11:30:25 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aee56cc3f0ff22d150f4f86ffd3cff58270076a4b9b012d6776cbb50ddb1f3a`  
		Last Modified: Fri, 11 Jan 2019 11:30:25 GMT  
		Size: 7.8 KB (7773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11be367f386aa7e0e4bc3e28a78e53019dbf095ed4440ad2eac7af3f926f13f`  
		Last Modified: Fri, 11 Jan 2019 13:21:12 GMT  
		Size: 1.1 MB (1063808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17c85a63afdb40b2c075df4d48a332a8bd4a3fca3e75ca98d5605d4b12eb20f`  
		Last Modified: Fri, 11 Jan 2019 13:21:11 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db76a329e235cdfad1928994e44a3872ffede3de793319e6dbdaca4de4b99d0e`  
		Last Modified: Fri, 11 Jan 2019 13:21:21 GMT  
		Size: 10.4 MB (10378230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba284f973db39ac7aabcadc9d9bc30c431597fed16be4e4f63d7a8da703dd62`  
		Last Modified: Fri, 11 Jan 2019 13:21:11 GMT  
		Size: 3.8 KB (3789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:5-php7.1-fpm` - linux; s390x

```console
$ docker pull wordpress@sha256:bb3da2c4e114c6a8592fd413e9a882e7b85686dd244fed4d4572e86e3a7523ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129949512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801b90a7c3bd3dad91bf33cb29c735702ee27a27da49d270420240bbb5b00ebf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:03:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:03:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:03:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:03:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:03:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:13:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 13:13:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:13:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:13:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:13:50 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Fri, 11 Jan 2019 12:57:07 GMT
ENV PHP_VERSION=7.1.26
# Fri, 11 Jan 2019 12:57:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.26.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:57:07 GMT
ENV PHP_SHA256=10b7ae634c12852fae52a22dc2262e5f12418ad59fd20da2d00d71a212235d31 PHP_MD5=
# Fri, 11 Jan 2019 12:57:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:57:15 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:00:36 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:00:37 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:00:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:00:37 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:00:38 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:20:52 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 13:20:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:20:53 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:20:53 GMT
ENV WORDPRESS_VERSION=5.0.3
# Fri, 11 Jan 2019 13:20:54 GMT
ENV WORDPRESS_SHA1=f9a4b482288b5be7a71e9f3dc9b5b0c1f881102b
# Fri, 11 Jan 2019 13:20:55 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 11 Jan 2019 13:20:56 GMT
COPY file:6bacb5db66dec52096a651467698b25a8bb49356733980856520a282e6a40eca in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:20:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:20:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814164df89f9d48bc5f0b1e3eac03e56d1cfd2d8012a32b40cb74cf206a4c03c`  
		Last Modified: Sat, 29 Dec 2018 14:18:55 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f72900afd7908ae15b24bb83e6b69e0251236d5df62ce0af2b7344fe889dae`  
		Last Modified: Sat, 29 Dec 2018 14:19:07 GMT  
		Size: 55.8 MB (55787026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02257aa4538f74d3a3e7121a3ece61b7e4e70bc04bf2675ce098233646dd724e`  
		Last Modified: Sat, 29 Dec 2018 14:18:53 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04db0b0bacd07e97fc8e3c26477e56365fc17ca266777e0826147a8c14eca50`  
		Last Modified: Fri, 11 Jan 2019 13:16:53 GMT  
		Size: 12.5 MB (12533488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c814fac3300d67800fecb4406252470d8088aa94bc852c3e050f2f1084bdb17`  
		Last Modified: Fri, 11 Jan 2019 13:16:52 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afa809f4edf9665cd41c53815b78ed64200083117f4ebc16467629f3b4922ba`  
		Last Modified: Fri, 11 Jan 2019 13:16:57 GMT  
		Size: 27.8 MB (27814822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014ba785d790b21b0c4d61f79a8b0e6ab32cdbe803d47498fe440fd65879bc78`  
		Last Modified: Fri, 11 Jan 2019 13:16:51 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6857e1cf24ccb9b68468ad7310430b2f7a209ccb7454b5943cd3b1b3bbd96e`  
		Last Modified: Fri, 11 Jan 2019 13:16:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd70d7566904c309cd03fd5766a226b9e54266e92df4dd0a8a52fdb2fecb2af`  
		Last Modified: Fri, 11 Jan 2019 13:16:51 GMT  
		Size: 7.8 KB (7772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1763f2bfff052c2e17a13513347f826269288a784e1ed129bfccb7f57c00c99`  
		Last Modified: Fri, 11 Jan 2019 13:21:32 GMT  
		Size: 1.1 MB (1079463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a5497aadb9b1d40728edd863194f0307d73c054b2e61954e5a4cd2a11a8056`  
		Last Modified: Fri, 11 Jan 2019 13:21:32 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255d78be214d02bf708666fe478de35a2b729025e48f29ae89196a403f5c7f5a`  
		Last Modified: Fri, 11 Jan 2019 13:21:33 GMT  
		Size: 10.4 MB (10378166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c406da834bf7308642b56126a705d3a6a887ed4c04a085b89828cd12757f9`  
		Last Modified: Fri, 11 Jan 2019 13:21:32 GMT  
		Size: 3.8 KB (3788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
