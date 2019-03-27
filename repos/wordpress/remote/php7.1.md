## `wordpress:php7.1`

```console
$ docker pull wordpress@sha256:088a1e75f95bdead752bf2b0429d23aa44a89bc34d284109014723dffe7f4168
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

### `wordpress:php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:7242db212f69d5f19dda4071b0c9037c370720bbb19724c7fe3dcd8ff414d4bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145479205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d9a32c233fc3a17c0ce737e68c42e05ea3aac5575d67c19c3d90f214ae3b49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 27 Mar 2019 01:08:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Mar 2019 01:08:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Mar 2019 01:09:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 27 Mar 2019 01:09:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Mar 2019 01:09:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Mar 2019 01:09:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Mar 2019 01:09:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Mar 2019 01:09:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 01:09:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 01:09:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 02:12:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 27 Mar 2019 02:12:32 GMT
ENV PHP_VERSION=7.1.27
# Wed, 27 Mar 2019 02:12:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 02:12:33 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Wed, 27 Mar 2019 02:12:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 02:12:45 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 02:17:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 02:17:20 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 02:17:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 02:17:21 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 02:17:21 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 02:17:21 GMT
EXPOSE 80
# Wed, 27 Mar 2019 02:17:21 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 12:30:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:30:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Mar 2019 12:30:09 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Wed, 27 Mar 2019 12:30:10 GMT
RUN a2enmod rewrite expires
# Wed, 27 Mar 2019 12:30:10 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 12:30:11 GMT
ENV WORDPRESS_VERSION=5.1.1
# Wed, 27 Mar 2019 12:30:11 GMT
ENV WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192
# Wed, 27 Mar 2019 12:30:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 27 Mar 2019 12:30:15 GMT
COPY file:93baa261bd9329f2d327b8d71c6bb15b94d750c3ddd12ee36898d6a4289c409d in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:30:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:30:16 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:cc75e951030fdfec9be789641d94e8e85646218cf01f3304d901e1ed8977dc18`  
		Last Modified: Wed, 27 Mar 2019 03:24:36 GMT  
		Size: 17.1 MB (17124631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78873f480bce50c7d46b71e843d23763db006c4e2b865a63db55724b6483cd03`  
		Last Modified: Wed, 27 Mar 2019 03:24:33 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b14116a29a250449c31ffaf9522c0a55430c2cba30cefbdf7ed26509795112e`  
		Last Modified: Wed, 27 Mar 2019 03:24:33 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e250fcd2f14ac69f8367c8675484a236c7b9fa66e8a7849989107022c5219d1f`  
		Last Modified: Wed, 27 Mar 2019 03:26:11 GMT  
		Size: 12.6 MB (12568417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c2ad5a1e72d53c76d4d9c1416f11f403edd353bf1eee6b513c104442fc19bf`  
		Last Modified: Wed, 27 Mar 2019 03:26:10 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec22d326e959ddc7cebda3af5f79f1211188a9566221f3a4466049a81ca1ff24`  
		Last Modified: Wed, 27 Mar 2019 03:26:14 GMT  
		Size: 14.2 MB (14233125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0dbdbc7d4286c9db5993bfd237c465948dedbd947706bdb065110319588fd4`  
		Last Modified: Wed, 27 Mar 2019 03:26:11 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29b6680f3c35bf904c0b008052a7ec1e5103d27af2cef8528da7cfbb8a794b1`  
		Last Modified: Wed, 27 Mar 2019 03:26:10 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123277db8aae78d4d52764e0b3bebc33f99242d1736066647fed84b662d9cf86`  
		Last Modified: Wed, 27 Mar 2019 12:42:53 GMT  
		Size: 1.1 MB (1082245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f06e09d825a7cb9b4fc8e16a1ca6ec7db71383c8ed606a2bb8a67c0edabb83`  
		Last Modified: Wed, 27 Mar 2019 12:42:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a91603fc80b1f69a8ff6075bcf3f2819ade583500b6dd457b2b89cc6390fd5`  
		Last Modified: Wed, 27 Mar 2019 12:42:51 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009321304b2df8ac6d71085b6dabc0d3f45db2ef90b15a938fac1a23045ec4c4`  
		Last Modified: Wed, 27 Mar 2019 12:42:51 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8519c8cff4646149a3ef65b6ea9500e65195581fd095d933beb58ad26018bd27`  
		Last Modified: Wed, 27 Mar 2019 12:42:56 GMT  
		Size: 10.5 MB (10517704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b1266aed5409dfd003df994eac8e6a6507524f12af94e650c0dc47d33ec65`  
		Last Modified: Wed, 27 Mar 2019 12:42:51 GMT  
		Size: 3.9 KB (3900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.1` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:edce0a45a20acf381f4daee7c97bf563c60b321a0aa3a13c9490d892d2338dfe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132981647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a8f46633a1a5a7654232b5bd39d08759e0cbd28f0ec07be0b2fdfcaf35b5e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Wed, 27 Mar 2019 09:59:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Mar 2019 09:59:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Mar 2019 09:59:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 27 Mar 2019 09:59:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Mar 2019 09:59:22 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Mar 2019 09:59:23 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Mar 2019 09:59:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Mar 2019 09:59:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 09:59:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 09:59:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 10:36:43 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 27 Mar 2019 10:36:43 GMT
ENV PHP_VERSION=7.1.27
# Wed, 27 Mar 2019 10:36:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 10:36:44 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Wed, 27 Mar 2019 10:37:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 10:37:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:39:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 10:39:50 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:39:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 10:39:51 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:39:51 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 10:39:51 GMT
EXPOSE 80
# Wed, 27 Mar 2019 10:39:52 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 15:17:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:17:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 27 Mar 2019 15:17:55 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Wed, 27 Mar 2019 15:17:56 GMT
RUN a2enmod rewrite expires
# Wed, 27 Mar 2019 15:17:56 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 15:17:57 GMT
ENV WORDPRESS_VERSION=5.1.1
# Wed, 27 Mar 2019 15:17:57 GMT
ENV WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192
# Wed, 27 Mar 2019 15:18:03 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 27 Mar 2019 15:18:04 GMT
COPY file:93baa261bd9329f2d327b8d71c6bb15b94d750c3ddd12ee36898d6a4289c409d in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:18:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:18:05 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:328c72338c56767531d94bee71f1bd10e85bb4bbafdb575779efac9da94e7dae`  
		Last Modified: Wed, 27 Mar 2019 11:21:44 GMT  
		Size: 16.7 MB (16652157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9084f701f8ebd638d968a40621f70e22c3c0546be2b5772626871ec47cbf39ec`  
		Last Modified: Wed, 27 Mar 2019 11:21:39 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5767946574e8ddccda74002400765d49d208b7853309a21aab329e29ffaa5d20`  
		Last Modified: Wed, 27 Mar 2019 11:21:39 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c747f35e6a6faaac16b5cc5b1bf26ef7f79b4e1bda066fa08b5b88abb5af273`  
		Last Modified: Wed, 27 Mar 2019 11:24:27 GMT  
		Size: 12.6 MB (12566124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8071c6b41d017088a9efaf6511b48bb8a8c5a0962f1d70d8fd65efb4dbdc3455`  
		Last Modified: Wed, 27 Mar 2019 11:24:25 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a877afcb01deb25675ab547ade67b44cd980287a52f032abd0863c4e30f4dcd8`  
		Last Modified: Wed, 27 Mar 2019 11:24:30 GMT  
		Size: 13.6 MB (13564821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b616759db6503f196f67c0247eb95f0733d352eb588ee7e96609ae575503047f`  
		Last Modified: Wed, 27 Mar 2019 11:24:25 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95520024c6cc431afcae486027b7435167fac060ba081459127f10af981725c`  
		Last Modified: Wed, 27 Mar 2019 11:24:25 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f94fbae1d18065136f0fae32044ba8ea71d80eeae98e5b2f2b3942c50ed2833`  
		Last Modified: Wed, 27 Mar 2019 15:33:55 GMT  
		Size: 1.0 MB (1039015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331dc792ea70994247e2496b3b81fa28cfbad746df6f226505ae35c7c298dbfb`  
		Last Modified: Wed, 27 Mar 2019 15:33:53 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12dfab36a86ff6244e0755adbdd5aa87ea9b871e302e165ab2ade633b9a4279`  
		Last Modified: Wed, 27 Mar 2019 15:33:53 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7695f20fcb1d0f8e69d8454985875242326663e5d83fc84650fba6027fa488ae`  
		Last Modified: Wed, 27 Mar 2019 15:33:53 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7aefce9102c85631b94e29af54b5082a9d4e5a1c0aa319e5c070f74d049c64`  
		Last Modified: Wed, 27 Mar 2019 15:33:58 GMT  
		Size: 10.5 MB (10517772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671db2737d33e435ff5f8224e0344ed3ae5aead14696b63ff8954224d1741a60`  
		Last Modified: Wed, 27 Mar 2019 15:33:53 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.1` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:1a3c67cbffa748c96fd56472a8cd28d6907341580860d861ccc3a830d2a989b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125873136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3c18f770c3b851d241e1a435cf095e3f95ae9372ee5ba9dd97efd87ff48d65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:44:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 14:44:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 14:45:09 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:45:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 14:45:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 14:49:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 14:49:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 14:50:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 14:50:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 14:50:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 14:50:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 14:50:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 14:50:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:50:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:50:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 15:23:50 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 09 Mar 2019 13:57:11 GMT
ENV PHP_VERSION=7.1.27
# Sat, 09 Mar 2019 13:57:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:57:12 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Sat, 09 Mar 2019 13:57:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 13:57:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:59:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:00:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:00:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:00:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:00:02 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 14:00:02 GMT
EXPOSE 80
# Sat, 09 Mar 2019 14:00:03 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 15:14:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 15:14:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 23 Mar 2019 12:30:56 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Sat, 23 Mar 2019 12:30:58 GMT
RUN a2enmod rewrite expires
# Sat, 23 Mar 2019 12:30:59 GMT
VOLUME [/var/www/html]
# Sat, 23 Mar 2019 12:31:00 GMT
ENV WORDPRESS_VERSION=5.1.1
# Sat, 23 Mar 2019 12:31:00 GMT
ENV WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192
# Sat, 23 Mar 2019 12:31:07 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Mar 2019 12:31:07 GMT
COPY file:93baa261bd9329f2d327b8d71c6bb15b94d750c3ddd12ee36898d6a4289c409d in /usr/local/bin/ 
# Sat, 23 Mar 2019 12:31:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Mar 2019 12:31:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb4ba5dc88babfee394986a3231217bd7e8f735fd7b69f66aea960bd0546ad`  
		Last Modified: Tue, 05 Mar 2019 16:04:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc2006cb0a28268e52932894df96fdc768957ecea340df9edc237c48e7445c2`  
		Last Modified: Tue, 05 Mar 2019 16:04:28 GMT  
		Size: 53.6 MB (53588935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c78b4c148941d5582a947905d3b81e3686c3eebfbe03f67cd65ece41357bed`  
		Last Modified: Tue, 05 Mar 2019 16:04:11 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34750388b88aa43b7fcfbffbd89511bf186537788e09ecf34a68339d50233e`  
		Last Modified: Tue, 05 Mar 2019 16:05:01 GMT  
		Size: 16.2 MB (16159614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe68c09d8627508fac9d772ec21b35c54db9962759f8af44a4dd7ac864c3a41`  
		Last Modified: Tue, 05 Mar 2019 16:04:56 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3256865575fec21405a010bfd27fd5c384338bd1dd78defa59d2e6fbeec89f3`  
		Last Modified: Tue, 05 Mar 2019 16:04:56 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c673b945de860e34b1ba32fab5c59f4ae5a4a88ca82b08fabf4220b3708fb256`  
		Last Modified: Sat, 09 Mar 2019 14:47:18 GMT  
		Size: 12.6 MB (12566184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6bf7e9380925e25994debd1ccb6e7a06a8c4d9797b6c159e603c73a26bc865`  
		Last Modified: Sat, 09 Mar 2019 14:47:16 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9892ceb3abba878b402f53ddd3e65ab0c2d869b321a4cacf51dabe6fe92fa3f6`  
		Last Modified: Sat, 09 Mar 2019 14:47:21 GMT  
		Size: 12.8 MB (12771361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cff9ea38552be5e4e772019cd2a6735c46ade8f15bcf83fc1c805860f05eaec`  
		Last Modified: Sat, 09 Mar 2019 14:47:16 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb244e25c30c24ed60cb078e3975133887b2596761cda310b2c6b53caf7cc84`  
		Last Modified: Sat, 09 Mar 2019 14:47:16 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0837b5cea757ab94ed1c6be7afb0d7b46122fd8c9fcd6742c4c815bd3e48f3c9`  
		Last Modified: Sat, 09 Mar 2019 15:24:39 GMT  
		Size: 976.7 KB (976697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109be2b7e4b40bad7ae3f433356ebf08d3b43bd024f4d700515668112f6b6572`  
		Last Modified: Sat, 09 Mar 2019 15:24:40 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287859af665233303aee687da95ce569e5efd69773d77039f7673d1bc74dbfc`  
		Last Modified: Sat, 23 Mar 2019 12:34:06 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798411bbfb799a14278999aa8b9b8fa1a3580239344ec37da7b8d6c039071edc`  
		Last Modified: Sat, 23 Mar 2019 12:34:06 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e45f63d6188d31779ff364d1ad4cb510509a6c042ead1c69c436bc3448fc4`  
		Last Modified: Sat, 23 Mar 2019 12:34:11 GMT  
		Size: 10.5 MB (10517779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd70294537ab0a3ae64adcac0e364c897816d3453c4975c4b643f13be19f86d`  
		Last Modified: Sat, 23 Mar 2019 12:34:06 GMT  
		Size: 3.9 KB (3907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.1` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:a9435498873a5f4671e3734400a2bfbbab810dbdeb5017dd6d6dc6e34befe0ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132498849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48249e0607664120803713c9c658e2de27154f4debaeb60d3b129ad0a84707a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 15:57:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 09 Mar 2019 13:38:01 GMT
ENV PHP_VERSION=7.1.27
# Sat, 09 Mar 2019 13:38:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:38:02 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Sat, 09 Mar 2019 13:38:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 13:38:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:46:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 13:46:25 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:46:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 13:46:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:46:34 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 13:46:37 GMT
EXPOSE 80
# Sat, 09 Mar 2019 13:46:41 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 16:06:59 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 16:07:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 23 Mar 2019 10:56:16 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Sat, 23 Mar 2019 10:56:20 GMT
RUN a2enmod rewrite expires
# Sat, 23 Mar 2019 10:56:20 GMT
VOLUME [/var/www/html]
# Sat, 23 Mar 2019 10:56:22 GMT
ENV WORDPRESS_VERSION=5.1.1
# Sat, 23 Mar 2019 10:56:23 GMT
ENV WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192
# Sat, 23 Mar 2019 10:56:31 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Mar 2019 10:56:31 GMT
COPY file:93baa261bd9329f2d327b8d71c6bb15b94d750c3ddd12ee36898d6a4289c409d in /usr/local/bin/ 
# Sat, 23 Mar 2019 10:56:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Mar 2019 10:56:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a0b28b20663641e2de5dc7e8a6653f5cfd04242b7a49df8b8e9400f9216c9`  
		Last Modified: Sat, 09 Mar 2019 15:02:00 GMT  
		Size: 12.6 MB (12566750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07da0b10af3268b777fe05f6dccd6c8a2bed0196b59f5e2f5f8abb77b4233440`  
		Last Modified: Sat, 09 Mar 2019 15:01:58 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3122a8ea0e70b2d24de80faed26f68085f8b23a5db0d6c255fd09c13c041fd`  
		Last Modified: Sat, 09 Mar 2019 15:02:04 GMT  
		Size: 13.7 MB (13727067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4656102fc605635cfa4b69b4e7be623ca1672a3a04836c32bf7d1dbac6fbae5`  
		Last Modified: Sat, 09 Mar 2019 15:01:59 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfedea3fb342c26f45cb7f6ace8ceac2c76f102c60af9a2cb18d65f845733f4a`  
		Last Modified: Sat, 09 Mar 2019 15:01:58 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ff0b57d1875438a456883d2c1baa3d1c3b8d1cf01bdcb50753188b0def685e`  
		Last Modified: Sat, 09 Mar 2019 16:40:03 GMT  
		Size: 1.0 MB (1011745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df837185acf1c709202254a71f05441dc374bec3b7cf4732bb5f49ec4d4ab2a0`  
		Last Modified: Sat, 09 Mar 2019 16:40:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402723f55e14478d7291b148564b887fa1f28d12437a7b945a38f4ce75649f61`  
		Last Modified: Sat, 23 Mar 2019 11:01:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36e46339807a68b710bf3303be6df1d80c097b3fc67a2d131cd175c5842766c`  
		Last Modified: Sat, 23 Mar 2019 11:01:45 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa93b03b2a1c8b6a56f70321e497ac56d5caab6b10877648c78b3505b600cd`  
		Last Modified: Sat, 23 Mar 2019 11:01:50 GMT  
		Size: 10.5 MB (10517727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387ebb67bad83bbe795c1a5500e7241fccd68a96d23827cdcbd22ddb9f2b696a`  
		Last Modified: Sat, 23 Mar 2019 11:01:45 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.1` - linux; 386

```console
$ docker pull wordpress@sha256:867c66e50ecc803f3a904f8f9e72a11fdca7086d9fe4a2bc891dd196dd82b9a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151145119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49780d51abe0cedb903962dde0c1cff775a672d4e06e5b565230114e2a91212b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:52:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 17:52:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 17:52:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:52:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 17:52:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 17:58:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 17:58:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 17:58:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 17:58:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 17:58:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 17:58:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 17:58:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 17:58:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 17:58:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 17:58:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 18:42:16 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 09 Mar 2019 15:39:44 GMT
ENV PHP_VERSION=7.1.27
# Sat, 09 Mar 2019 15:39:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 15:39:45 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Sat, 09 Mar 2019 15:39:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 15:39:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:43:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 15:43:03 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:43:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 15:43:04 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 15:43:04 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 15:43:04 GMT
EXPOSE 80
# Sat, 09 Mar 2019 15:43:04 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 18:56:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 18:56:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 23 Mar 2019 12:55:05 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Sat, 23 Mar 2019 12:55:06 GMT
RUN a2enmod rewrite expires
# Sat, 23 Mar 2019 12:55:06 GMT
VOLUME [/var/www/html]
# Sat, 23 Mar 2019 12:55:06 GMT
ENV WORDPRESS_VERSION=5.1.1
# Sat, 23 Mar 2019 12:55:07 GMT
ENV WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192
# Sat, 23 Mar 2019 12:55:09 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Mar 2019 12:55:09 GMT
COPY file:93baa261bd9329f2d327b8d71c6bb15b94d750c3ddd12ee36898d6a4289c409d in /usr/local/bin/ 
# Sat, 23 Mar 2019 12:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Mar 2019 12:55:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63213c0ecba3bcf801c043de08405df1f08eff7223230c1e93ce299814156a9a`  
		Last Modified: Tue, 05 Mar 2019 19:54:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58d27f17810e06fa358b9c0528c3fcca254284107a72c87606489b096ef55a`  
		Last Modified: Tue, 05 Mar 2019 19:54:43 GMT  
		Size: 71.5 MB (71515728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df0dd6517a9c22e9bc50360a86757ca3f545b03528664a5fd69a3ff137e0c2f`  
		Last Modified: Tue, 05 Mar 2019 19:54:24 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70272210b6ed6de6295c5ae90ed24a11b5521480ab71d463a757625ab8af964a`  
		Last Modified: Tue, 05 Mar 2019 19:55:05 GMT  
		Size: 17.6 MB (17558787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0647b90a7ce64880e865575bfa6335f1c605e2b4b6ac2b505672203c96b30c`  
		Last Modified: Tue, 05 Mar 2019 19:55:01 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d856b8381a7b6e7914604075c03705f9d558539161b826ec24102c66dfed3c`  
		Last Modified: Tue, 05 Mar 2019 19:55:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31d9bc055e319955e956bbbe70631310cf7c8d84f3b3d393fdbebc3133a0838`  
		Last Modified: Sat, 09 Mar 2019 17:22:41 GMT  
		Size: 12.6 MB (12567724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a0b086d5c03623a9f70ed9c20ba90fb5fea5af9e4c2a4408165c89ea398ce`  
		Last Modified: Sat, 09 Mar 2019 17:22:40 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420f3c7c49e73d05fb5917778fe06de2f160b9bd1b0fb7fa4ae18713d1542197`  
		Last Modified: Sat, 09 Mar 2019 17:22:44 GMT  
		Size: 14.7 MB (14720351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677a0e8e0f25bdafdc062f10d233e1ebb4d5e9dc7fec5c639fc5cd8bda61b5d0`  
		Last Modified: Sat, 09 Mar 2019 17:22:40 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7d59b4e7b83e131f870757abdb1ce4e21eb90ae49cef0783a49f0cbbe88172`  
		Last Modified: Sat, 09 Mar 2019 17:22:40 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e728a48d3783dab45a20d1a8172b5ae00d28e9b0c129e043f52b1a2d4c33582d`  
		Last Modified: Sat, 09 Mar 2019 19:12:30 GMT  
		Size: 1.1 MB (1129195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7153f6459918038486940423da40138b0e53cc4116935b40d2ab07e3fdb80a1`  
		Last Modified: Sat, 09 Mar 2019 19:12:30 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62f55bc2cf1c13393bfac170e6694b4ea929380a5ec11608ddff7e191a0444f`  
		Last Modified: Sat, 23 Mar 2019 12:56:45 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b080ce764eb3e32861ccf952af3c6e4c18492db1a45cdbce39b96895a223d0`  
		Last Modified: Sat, 23 Mar 2019 12:56:45 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b762dc56be4d25ded7f0790c5fef98ebcadf38b60c28a15c2b9865c8601fc637`  
		Last Modified: Sat, 23 Mar 2019 12:56:48 GMT  
		Size: 10.5 MB (10517719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b306237be912be7f13d517e1591e3a350e5e0992caa25497fccfc6e4529dc4`  
		Last Modified: Sat, 23 Mar 2019 12:56:45 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.1` - linux; ppc64le

```console
$ docker pull wordpress@sha256:cfce211462295ca4c557659d5f9dcf58313f2b9fa64711fc9de08136368886ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.1 MB (140120557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1550590a6c5b1fc9a62f0456552690552a838d39113a7f82995ae5b5eff069c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:19:44 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 14:19:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 14:22:29 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:22:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 14:22:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 14:29:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 14:29:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 14:30:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 14:30:40 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 14:30:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 14:30:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 14:30:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 14:30:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:30:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:30:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 15:24:53 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 09 Mar 2019 11:20:05 GMT
ENV PHP_VERSION=7.1.27
# Sat, 09 Mar 2019 11:20:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 11:20:14 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Sat, 09 Mar 2019 11:21:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 11:21:19 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:25:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 11:25:59 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:26:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 11:26:04 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 11:26:09 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 11:26:11 GMT
EXPOSE 80
# Sat, 09 Mar 2019 11:26:14 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 12:59:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 12:59:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 23 Mar 2019 09:40:03 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Sat, 23 Mar 2019 09:40:06 GMT
RUN a2enmod rewrite expires
# Sat, 23 Mar 2019 09:40:08 GMT
VOLUME [/var/www/html]
# Sat, 23 Mar 2019 09:40:09 GMT
ENV WORDPRESS_VERSION=5.1.1
# Sat, 23 Mar 2019 09:40:11 GMT
ENV WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192
# Sat, 23 Mar 2019 09:40:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Mar 2019 09:40:22 GMT
COPY file:93baa261bd9329f2d327b8d71c6bb15b94d750c3ddd12ee36898d6a4289c409d in /usr/local/bin/ 
# Sat, 23 Mar 2019 09:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Mar 2019 09:40:25 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64583b8600298db46917e031f985839162e11f98a8d10a50dd49257df26b1`  
		Last Modified: Tue, 05 Mar 2019 15:47:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3fb84f58dbd1ee39fcf39d6dbf5a55dcae5f21a0225fc3a08e1fc44f3507b1`  
		Last Modified: Tue, 05 Mar 2019 15:47:36 GMT  
		Size: 61.8 MB (61832970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf73effcf62d2b34eda9d6fdce5dab5343e30e063c5ab7556c8df95b73dd53a`  
		Last Modified: Tue, 05 Mar 2019 15:47:11 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93960c49903b7f804082184e3d38a97cd202299916f879fe12f14dad9418f0c3`  
		Last Modified: Tue, 05 Mar 2019 15:48:38 GMT  
		Size: 17.3 MB (17345442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492eed5353ab4f899710bc4b2d7ab8cc70821c4aaff1c48318d5c5c6c3830cb2`  
		Last Modified: Tue, 05 Mar 2019 15:48:31 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ccae8b6196e7930e1f2138f01fc3d7d6f5948caa7a7b7ef184260a42426d1`  
		Last Modified: Tue, 05 Mar 2019 15:48:30 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe75177d9e47d7d03185966183217df79f7b31cee61c107538b4246edd5efca`  
		Last Modified: Sat, 09 Mar 2019 12:17:10 GMT  
		Size: 12.6 MB (12566883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1a8f06dec363c0294d91d6e4c104a35888621255d9fc3c869c4825dbb4e21d`  
		Last Modified: Sat, 09 Mar 2019 12:17:07 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd19486014312fe9ad77ef97a18c58967d4628378df59aa981c2693d0b748f8a`  
		Last Modified: Sat, 09 Mar 2019 12:17:13 GMT  
		Size: 14.0 MB (14008437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56cfdf0abb25104ed8e283df72a7a36b0971ca398031982adf129c23e4ed3d2`  
		Last Modified: Sat, 09 Mar 2019 12:17:07 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e848a68e817671b14232701a3dff11ca041d5d9af8f18537beaeef40023bd1`  
		Last Modified: Sat, 09 Mar 2019 12:17:07 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05fb0f9580d665ddc9bb0d83810bb1711212206679aa9294bf93341d779c0a5`  
		Last Modified: Sat, 09 Mar 2019 13:21:52 GMT  
		Size: 1.1 MB (1087478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6598d76a6d5471168e5b9204611740e69e752a8cb716c9850a1d03efda2e12be`  
		Last Modified: Sat, 09 Mar 2019 13:21:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a444130e2a5942c3bd39d3930677bdcba78f8594855abc93a8bc2653516227`  
		Last Modified: Sat, 23 Mar 2019 09:46:05 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4336b4ab3c6297cdaddc7b3b8b132b4cb4f5f7f1577f626b33ed20bbeaf5e30`  
		Last Modified: Sat, 23 Mar 2019 09:46:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b82be62f7e9f2957a850993765dedbd10ad887f001397cd3c4d592a35c8a41`  
		Last Modified: Sat, 23 Mar 2019 09:46:08 GMT  
		Size: 10.5 MB (10517779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d92e223523f6dc46fd015b6aae94ab38498fdee9fa33302930cf84d6c088553`  
		Last Modified: Sat, 23 Mar 2019 09:46:05 GMT  
		Size: 3.9 KB (3907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.1` - linux; s390x

```console
$ docker pull wordpress@sha256:3024bf555fed5df2872fa1265f9e4b6dfb6c0ee98c95dfb4ff4ca8c65f838a31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (133952997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ff3f1623dbd1e7a11b3d174a46af81e4108f2e8be34b01187134249bdb01e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 13:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 13:46:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:46:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 13:46:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 13:51:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 13:51:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 13:51:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 13:51:29 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 13:51:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 13:51:30 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 13:51:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 13:51:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 13:51:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 13:51:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 13:51:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 09 Mar 2019 12:48:46 GMT
ENV PHP_VERSION=7.1.27
# Sat, 09 Mar 2019 12:48:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 12:48:46 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Sat, 09 Mar 2019 12:48:55 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 12:48:55 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 12:51:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 12:51:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 12:51:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 12:51:26 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 12:51:26 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 12:51:27 GMT
EXPOSE 80
# Sat, 09 Mar 2019 12:51:27 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 13:53:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 13:53:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 23 Mar 2019 12:40:35 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Sat, 23 Mar 2019 12:40:36 GMT
RUN a2enmod rewrite expires
# Sat, 23 Mar 2019 12:40:36 GMT
VOLUME [/var/www/html]
# Sat, 23 Mar 2019 12:40:36 GMT
ENV WORDPRESS_VERSION=5.1.1
# Sat, 23 Mar 2019 12:40:37 GMT
ENV WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192
# Sat, 23 Mar 2019 12:40:39 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Mar 2019 12:40:40 GMT
COPY file:93baa261bd9329f2d327b8d71c6bb15b94d750c3ddd12ee36898d6a4289c409d in /usr/local/bin/ 
# Sat, 23 Mar 2019 12:40:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Mar 2019 12:40:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa4c896100cf26054923af844159ddedaa83e94aad03a1c0e837703e21ffe54`  
		Last Modified: Tue, 05 Mar 2019 14:30:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609e47a33c3d3bb58121eab058ee0cbad9d0312fc6b8168bc2154f6c4ffa52d6`  
		Last Modified: Tue, 05 Mar 2019 14:31:01 GMT  
		Size: 55.8 MB (55789758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d06bd051dc5c57b92334e3cefb8d36f4f07cb157e10a570b7b09735a87e09bc`  
		Last Modified: Tue, 05 Mar 2019 14:30:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b371602afb5734f16a4aae42fbcfed58840079de31f6d23b982b8a48b141f5c4`  
		Last Modified: Tue, 05 Mar 2019 14:31:21 GMT  
		Size: 17.2 MB (17248774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65c4393f1acc8820db442a0a477c5fefd47ded0a2fec7136680e90b4e261f69`  
		Last Modified: Tue, 05 Mar 2019 14:31:17 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c203404de491e45a988a1946a9975439718addf97afed235b4c17fcf4ad779bd`  
		Last Modified: Tue, 05 Mar 2019 14:31:17 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793023fb698b5d1a0ebe1454ea06fd1557092cdbef2d1fae925b705488dcd2e7`  
		Last Modified: Sat, 09 Mar 2019 13:27:27 GMT  
		Size: 12.6 MB (12565580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d123fd07d6b8d47d1ba481ab1d75d3a16b0adfb1bc1bc07c3354bdfee43f8e`  
		Last Modified: Sat, 09 Mar 2019 13:27:26 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52625bf34cc0915e2a41de45f86da6d3f9d0fd7bf3e1e757a21284a5967f85f3`  
		Last Modified: Sat, 09 Mar 2019 13:27:29 GMT  
		Size: 14.4 MB (14373301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9fd13bacac83f9072e3a54589f47ecde8c7f8e5346641cd21c7e489e4c0996`  
		Last Modified: Sat, 09 Mar 2019 13:27:27 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7b022683f7035e9553951798b62ed880c507e7c955261c89b01eac05b1a695`  
		Last Modified: Sat, 09 Mar 2019 13:27:26 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69491b7934cd9750de5deee59d36e4dff8733e730fc153483901c95bd94ff2ef`  
		Last Modified: Sat, 09 Mar 2019 13:55:00 GMT  
		Size: 1.1 MB (1102548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f77759b9b8c1904254f92d1e19f2c96d2653ebe1e6376cf16f00f7c7d11ca64`  
		Last Modified: Sat, 09 Mar 2019 13:55:00 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe385699aa076f7618a2277c3ae82a10ee1032b9f8c0f626c8faa4268269b2e`  
		Last Modified: Sat, 23 Mar 2019 12:41:11 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd8a7cfc0d217c0c126f88aa7ddb05a5a358ceddfb47e6d96e03bfd119353a2`  
		Last Modified: Sat, 23 Mar 2019 12:41:11 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622949d7e6ce4bf7de97318a8e9503606f526641acaf6a46a3e10f5bc56125be`  
		Last Modified: Sat, 23 Mar 2019 12:41:14 GMT  
		Size: 10.5 MB (10517728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dea3a7c031d4de89aa87df96ae85875697812a56ef393ebc07854590ad26fcc`  
		Last Modified: Sat, 23 Mar 2019 12:41:11 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
