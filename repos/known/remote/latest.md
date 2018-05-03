## `known:latest`

```console
$ docker pull known@sha256:d1b6fd16b71787660292dd1d6671701dab4cd8b9acc39e6002a52549829266a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `known:latest` - linux; amd64

```console
$ docker pull known@sha256:a6e29faa49622e68f27103b81df589d98810582d4f415000e38dda76ee085cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.2 MB (222221255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320190e7d95713a70bd1516be79a4b2c0981a5876c3bc74964bd2869604a93c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 22:07:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 22:07:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 22:08:18 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 22:08:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 22:08:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 22:48:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 30 Apr 2018 22:48:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 22:48:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 22:48:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 01 May 2018 00:30:22 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 01 May 2018 00:30:22 GMT
ENV PHP_VERSION=5.6.35
# Tue, 01 May 2018 00:30:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.35.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.35.tar.xz.asc/from/this/mirror
# Tue, 01 May 2018 00:30:23 GMT
ENV PHP_SHA256=9985cb64cb8224c289effff5b34f670d14f838175f76daea0507d643eec650d2 PHP_MD5=
# Tue, 01 May 2018 00:30:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 01 May 2018 00:30:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 01 May 2018 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 01 May 2018 00:34:18 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Tue, 01 May 2018 00:34:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 01 May 2018 00:34:18 GMT
WORKDIR /var/www/html
# Tue, 01 May 2018 00:34:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 01 May 2018 00:34:20 GMT
EXPOSE 9000/tcp
# Tue, 01 May 2018 00:34:20 GMT
CMD ["php-fpm"]
# Thu, 03 May 2018 13:14:50 GMT
MAINTAINER hello@withknown.com
# Thu, 03 May 2018 13:15:20 GMT
RUN apt-get update && apt-get install -y       bzip2       libcurl4-openssl-dev       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng12-dev       libpq-dev       libxml2-dev       mysql-client       unzip  && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 13:15:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92  7516 052D B5AC 742E 3B47"
# Thu, 03 May 2018 13:17:18 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mbstring mcrypt mysql opcache pdo_mysql zip json xmlrpc
# Thu, 03 May 2018 13:17:19 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 03 May 2018 13:17:30 GMT
RUN pecl install APCu-4.0.10  && docker-php-ext-enable apcu
# Thu, 03 May 2018 13:17:31 GMT
ENV KNOWN_VERSION=0.9.2
# Thu, 03 May 2018 13:17:31 GMT
VOLUME [/var/www/html]
# Thu, 03 May 2018 13:17:35 GMT
RUN curl -o known.zip -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip  && curl -o known.zip.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip.sig  && gpg --batch --verify known.zip.sig known.zip  && unzip known.zip -d /usr/src/known/  && rm known.zip*
# Thu, 03 May 2018 13:17:35 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Thu, 03 May 2018 13:17:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 May 2018 13:17:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bfdb6043a841abdd5bc9f7efcfa1281cc517fc2112f99db013793d2df9e9d7`  
		Last Modified: Tue, 01 May 2018 02:38:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327a3b8246c6014487246bf899947e96eeaff0e29d81cb620ea3e029a54d7111`  
		Last Modified: Tue, 01 May 2018 02:38:42 GMT  
		Size: 74.7 MB (74660760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3b73e77223911e268897f6a159b4df1c493624c5edf2d4d17cf8fddf9d0540`  
		Last Modified: Tue, 01 May 2018 02:38:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d30b1bf165252c1e7846f0e65600d4288aa4e1bcc6b4012bb18e110e24749c`  
		Last Modified: Tue, 01 May 2018 03:39:14 GMT  
		Size: 12.8 MB (12800252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7669a5c162bfcaf119b931884f545392b93ff3ca9d3a04e6408655aeef11bdd4`  
		Last Modified: Tue, 01 May 2018 03:39:11 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f069aff205881a0e4f25576a6e91df244467ec465a2f9e02a550d9742cd55b6e`  
		Last Modified: Tue, 01 May 2018 03:39:14 GMT  
		Size: 10.3 MB (10334325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7f4f88321ef6cfc54ae23e0ec253fb21d711d0d46222d41ca0cea95c70fd0b`  
		Last Modified: Tue, 01 May 2018 03:39:11 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fac9dfe3140b5c3f17c3b1525483a185b974fa9ac321abd1a1107ebecdc00be`  
		Last Modified: Tue, 01 May 2018 03:39:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b15a48c660c667b92c6ab0dbf3c6d2ba781f8b8437979eda9fbafaadc27da8`  
		Last Modified: Tue, 01 May 2018 03:39:11 GMT  
		Size: 7.7 KB (7712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869b9c6d0d887fd2a6799f7de756f00b76e6a26ef38107bf5b8f166579be2782`  
		Last Modified: Thu, 03 May 2018 13:31:19 GMT  
		Size: 47.2 MB (47211285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c10277fdb441e25d73ee54ded944da931c9f49e5cfc91106a89b9b2e7238959`  
		Last Modified: Thu, 03 May 2018 13:31:12 GMT  
		Size: 6.8 KB (6791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3201ecba32709e36ee43a3c654fb317a082f5af1829bb1bdf92b680018a7ef24`  
		Last Modified: Thu, 03 May 2018 13:31:10 GMT  
		Size: 1.7 MB (1700244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9892b5f3054c70e7c351b0ef886b445d805d02b4c20aaca19819fa71baec15b8`  
		Last Modified: Thu, 03 May 2018 13:31:09 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f000326cdb55ea73080ca8684eac40624f4883f8bea15a52475d9baa6b9971`  
		Last Modified: Thu, 03 May 2018 13:31:11 GMT  
		Size: 365.1 KB (365113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5cb4623908ad478d964a119ff7c019340cef860ff6c309887e20c2d23e527d`  
		Last Modified: Thu, 03 May 2018 13:31:13 GMT  
		Size: 20.9 MB (20867385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1356b99a715515187137ddccfa171467604f91b63388c3f401c6a68879959f`  
		Last Modified: Thu, 03 May 2018 13:31:09 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
