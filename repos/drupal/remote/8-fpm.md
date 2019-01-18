## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:a89cc72a110b0890211c0bdb33382723eed0374fd806b4c7743cc7861863204c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

```console
$ docker pull drupal@sha256:f1dd9bab79000615a2f8b47d11e5cd479bcd860df9009d56db3b5b9de5fa2c67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148909623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc83b61a61c79e8ff9d7ecca9fdaeac420818c93771225642354deb5f115a97`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Sat, 29 Dec 2018 05:08:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:19:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:19:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:24:52 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:53 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:24:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:24:53 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:24:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:24:54 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:24:55 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 03:29:59 GMT
RUN set -ex; 		if command -v a2enmod; then 		a2enmod rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install -j "$(nproc)" 		gd 		opcache 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 03:30:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:30:01 GMT
WORKDIR /var/www/html
# Fri, 18 Jan 2019 00:19:46 GMT
ENV DRUPAL_VERSION=8.6.7
# Fri, 18 Jan 2019 00:19:46 GMT
ENV DRUPAL_MD5=cd3d0c9ad1d9e976eb589a963e427388
# Fri, 18 Jan 2019 00:19:53 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:59cb134d9879a9923c07326dc3a2920705536fffc7736ccf3949428a30c1842a`  
		Last Modified: Fri, 11 Jan 2019 01:53:51 GMT  
		Size: 12.5 MB (12485194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8358df686e1055512214d9a967e00e9bf3f25c3fcefac313053b9a546a7b769`  
		Last Modified: Fri, 11 Jan 2019 01:53:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f143a000adfbe19d15e9553db0da1eb0c3ec3e2a604b60a329fad9d6b2bc1d96`  
		Last Modified: Fri, 11 Jan 2019 01:53:55 GMT  
		Size: 28.7 MB (28707927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88a4a69379d5d7029089d72039f1e607258059ccece9bcf9f10f138bcc8437c`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6df09c82fa9c15288331b9fe31b5ce7f39597ff8cb9770ca4ac95ff5579f539`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e07c0fe5558d63852d2bc9e2a81254490880b09c8c57418c030b7725e665`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa42310f5592c8c5d61820727c59ae88cacc3d1df352b8af959f9ad5ccddce7b`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318693d52651cff37fad1e4330dee1881383dd255f761f4c3009f31e96adf525`  
		Last Modified: Fri, 11 Jan 2019 03:33:38 GMT  
		Size: 1.2 MB (1171706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293494178682a1533764d16155831dff11548178c1868f463e228239768e1594`  
		Last Modified: Fri, 11 Jan 2019 03:33:38 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb93be560941fe3aa1d25abf871323882f1e09ad1f2f12d8fd4c1ba43cb46927`  
		Last Modified: Fri, 18 Jan 2019 00:21:45 GMT  
		Size: 16.6 MB (16597519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
