## `backdrop:1-fpm`

```console
$ docker pull backdrop@sha256:f9505f7984d983f2e13b4cd9839155e7507472c678c6c5e889f0b6417f2e0370
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `backdrop:1-fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:1c3ce9930df006364ff85ab82881fd8e5b6c188a929050e0ca144ca0e2a2a661
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136594343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ea05f0079496bd4faed583977786f7ec0e47935e16836d252955bebe8fa5a6`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Sat, 29 Dec 2018 07:54:42 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 29 Dec 2018 07:54:42 GMT
ENV PHP_VERSION=5.6.39
# Sat, 29 Dec 2018 07:54:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 07:54:43 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Sat, 29 Dec 2018 07:54:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 07:54:57 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 08:00:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 08:00:03 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 29 Dec 2018 08:00:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 08:00:04 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 08:00:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 29 Dec 2018 08:00:06 GMT
EXPOSE 9000
# Sat, 29 Dec 2018 08:00:06 GMT
CMD ["php-fpm"]
# Sat, 29 Dec 2018 16:56:07 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Sat, 29 Dec 2018 16:56:08 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 16:56:08 GMT
ENV BACKDROP_VERSION=1.11.3
# Sat, 29 Dec 2018 16:56:08 GMT
ENV BACKDROP_MD5=548333a6eec104af1ff6f19cd73791e4
# Sat, 29 Dec 2018 16:56:13 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Sat, 29 Dec 2018 16:56:14 GMT
COPY file:dc282a331b642ab4cd043a874f505e04001cc1bdcf4f846fb117f413030d2835 in /entrypoint.sh 
# Sat, 29 Dec 2018 16:56:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 16:56:14 GMT
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
	-	`sha256:bb7a165acd14b73b655e8d5be641826c87befae12dc8ea44a6a985fea6c8ad7b`  
		Last Modified: Sat, 29 Dec 2018 08:52:39 GMT  
		Size: 12.8 MB (12795208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f02db39be25165150dd5dbd270fa3143ad8be481b2bb162c99488c6d5cc538c`  
		Last Modified: Sat, 29 Dec 2018 08:52:38 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201577af11c579aee19331ee177506bb43d339593c8753235543179a2fb18beb`  
		Last Modified: Sat, 29 Dec 2018 08:52:42 GMT  
		Size: 23.0 MB (23032478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8dd4bea7b36476a2b4050e9eab4c6487508ae40549daf02d38c8ab3b2b0aded`  
		Last Modified: Sat, 29 Dec 2018 08:52:37 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250fb16b8d35e9810a697e8566aa50b37e1f9869957f29a80d7e9347c2b3747`  
		Last Modified: Sat, 29 Dec 2018 08:52:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d7b76d4b2ba4ae84967e7e83340ea1d3408f0f1857f962beaa68947a034e3`  
		Last Modified: Sat, 29 Dec 2018 08:52:37 GMT  
		Size: 7.7 KB (7710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a929bc8d4c722603532f0c702179117552be0833838647fc665b76aa6a13e2d`  
		Last Modified: Sat, 29 Dec 2018 16:56:56 GMT  
		Size: 2.5 MB (2480615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b48a211bb4631b9a028b1e4bf6632eec9bf2bd218b61c513d6f43d3419f581`  
		Last Modified: Sat, 29 Dec 2018 16:56:58 GMT  
		Size: 8.3 MB (8338517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da3e465a0fd562ab3a312cbfd8233bbb137afb5b46912d656fe7e02bcaf9f65`  
		Last Modified: Sat, 29 Dec 2018 16:56:54 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `backdrop:1-fpm` - linux; arm64 variant v8

```console
$ docker pull backdrop@sha256:fc60295c8903c99c036ec4f8fc6c0d58f8d8df7bc5695e39ad1c108203a66f2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123640740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d91d0032328bddfcb14068ed73aae6277c2a676d654993e7020376af5eefc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:21:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 14:21:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 14:23:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:23:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 14:23:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 14:43:33 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 16 Nov 2018 14:43:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 14:43:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 14:43:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 18:35:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 14:28:53 GMT
ENV PHP_VERSION=5.6.39
# Tue, 11 Dec 2018 14:28:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 14:28:55 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Tue, 11 Dec 2018 14:29:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Dec 2018 14:29:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 14:35:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 14:35:54 GMT
COPY multi:2f2285f9c7c2f530675964f31be8902a60efa3a3d796ee46d73916fab59fdd38 in /usr/local/bin/ 
# Tue, 11 Dec 2018 14:35:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 14:35:55 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 14:35:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 11 Dec 2018 14:35:57 GMT
EXPOSE 9000/tcp
# Tue, 11 Dec 2018 14:35:57 GMT
CMD ["php-fpm"]
# Tue, 11 Dec 2018 16:17:09 GMT
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 11 Dec 2018 16:17:09 GMT
WORKDIR /var/www/html
# Thu, 13 Dec 2018 09:40:07 GMT
ENV BACKDROP_VERSION=1.11.3
# Thu, 13 Dec 2018 09:40:08 GMT
ENV BACKDROP_MD5=548333a6eec104af1ff6f19cd73791e4
# Thu, 13 Dec 2018 09:40:14 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Thu, 13 Dec 2018 09:40:15 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Thu, 13 Dec 2018 09:40:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 09:40:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20f889de053fff39ae65be0f7240e88f43cd7d5cc3ce7aeaaf79e994f15ca4e`  
		Last Modified: Fri, 16 Nov 2018 19:14:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a09b0831d3316f5fb61092eb43820cfbc5d91a89ef4f50802e003378a653ff`  
		Last Modified: Fri, 16 Nov 2018 19:15:12 GMT  
		Size: 57.6 MB (57594135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db69f3c43ab4e2bc5a954f58e4576702d0a8b81162ff2dcb8b27a21ff6acaf`  
		Last Modified: Fri, 16 Nov 2018 19:14:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b78605c3cf759da0906eb7ae58615ea37d4f72bbb8909043fef2da76522c1b6`  
		Last Modified: Tue, 11 Dec 2018 15:46:58 GMT  
		Size: 12.8 MB (12793150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148d120918ed93bc4d8b6aa620160003cd9b4350a3ab74ce92cf4f04cd0fc61c`  
		Last Modified: Tue, 11 Dec 2018 15:46:54 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d98b3e848ae6b4c51af03f1e76f0fb0af9bf3a217e28fb45bee893976782ed`  
		Last Modified: Tue, 11 Dec 2018 15:47:02 GMT  
		Size: 22.3 MB (22262456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0066b19fa352de70e1716fef65658ec9077f90c9b15c978092d43b3234df6801`  
		Last Modified: Tue, 11 Dec 2018 15:46:54 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ca9ef59770d150fe618925cf0baf0184008608f7805a98f0d92d4e52465f05`  
		Last Modified: Tue, 11 Dec 2018 15:46:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c9667d3f00f9e0bd5c38bb7b36e814dca62f72f271e3ce6111d9294efee9bf`  
		Last Modified: Tue, 11 Dec 2018 15:46:55 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7c7e8dc03d63519fb74d385575cde83c4b72022fc26ce7ace812ec8741dacb`  
		Last Modified: Tue, 11 Dec 2018 16:19:28 GMT  
		Size: 2.3 MB (2309175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31d84f7315bc1586d7443555919d4a73b5c974f4e2662f478c974482402586d`  
		Last Modified: Thu, 13 Dec 2018 09:42:36 GMT  
		Size: 8.3 MB (8338620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6cfc8d8c5837344a31ebf896253f75d3f40bdcd75ee68349c0ec7249dd2b04`  
		Last Modified: Thu, 13 Dec 2018 09:42:32 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
