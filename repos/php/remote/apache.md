## `php:apache`

```console
$ docker pull php@sha256:9b92babbfd1ded9255bcf277dbbe811bf6d68c2fdd012d33bbee909a0a5785d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:apache` - linux; amd64

```console
$ docker pull php@sha256:6d188e0219dfae4fb71d738254cf11bf01152f3cbf823aa891af356e49551261
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134905589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d339de252e7840335d82f871d657d1f533e8aa2c30354f478d6e75431044b00a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 04:35:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 04:35:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 04:35:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:35:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 04:35:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 04:42:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 04:42:17 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 04:42:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 04:42:29 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 04:42:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 04:42:30 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 04:42:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 04:42:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 04:42:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 04:42:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 04:42:31 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 04:42:31 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 04:42:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 04:42:31 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 04:42:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 06 Feb 2019 04:42:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 04:46:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 04:46:45 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 06 Feb 2019 04:46:46 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 04:46:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 04:46:46 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 06 Feb 2019 04:46:47 GMT
WORKDIR /var/www/html
# Wed, 06 Feb 2019 04:46:47 GMT
EXPOSE 80
# Wed, 06 Feb 2019 04:46:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f3d19635b02461d745a695e98a522fc814bf6ecf18e5e6e7acbba8e932eeaf`  
		Last Modified: Wed, 06 Feb 2019 06:27:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a54b8000b134d503c843a4f4497d0c5dae2307c67068aaad16d5a6d7b6b81`  
		Last Modified: Wed, 06 Feb 2019 06:27:52 GMT  
		Size: 67.4 MB (67442731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c1d103db99cb4421f83e2c33019ef38b8c970d33163a87d4eb1c8ed9929a23`  
		Last Modified: Wed, 06 Feb 2019 06:27:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfa752aa38a0629684b02b64f6adb5bcbf427ef349627060edc6dbd07deba1e`  
		Last Modified: Wed, 06 Feb 2019 06:28:10 GMT  
		Size: 17.1 MB (17124715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583d37cbf2f044a5f0dd4d43677e1fec381b705a8917769e5f0fddbf1eba72ed`  
		Last Modified: Wed, 06 Feb 2019 06:28:07 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7846a240c1d36c1a27e8bbff2d0eaa9a3591075d0db4e01063c45159d54ffb8`  
		Last Modified: Wed, 06 Feb 2019 06:28:07 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa9368f1dc6186471711d20322223812b7d4d8e9c6f97996d86718f6a827da1`  
		Last Modified: Wed, 06 Feb 2019 06:28:08 GMT  
		Size: 12.3 MB (12294524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a721772e241d519f46ba7730fec8ace5ff73641146199ceebc1fbae866a03a`  
		Last Modified: Wed, 06 Feb 2019 06:28:06 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a490b0c11625702982561c7c477b234bb8f905943a88164e8304b67c8497f055`  
		Last Modified: Wed, 06 Feb 2019 06:28:10 GMT  
		Size: 15.5 MB (15538095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7941bbd05a23215744bbde178d9589401b84ca9c0e04119bafea9d5e0223c7c7`  
		Last Modified: Wed, 06 Feb 2019 06:28:06 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f94c71e8249e3846b56626ab4bf422ea7a046dce26602a4930cd53c3a94b877`  
		Last Modified: Wed, 06 Feb 2019 06:28:06 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843760dbcd456f9d1e451a8e7cb2417f1cc0a33396356923226ba305d50e2f5`  
		Last Modified: Wed, 06 Feb 2019 06:28:06 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; arm variant v5

```console
$ docker pull php@sha256:9887c2df4ba0469b7d82bdecd037822a3a4bb7fd1d0f88e9267a9fa2ad1f8c97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122314521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b52d1080445cba2007b4e298942ad5d4bff74a7856c12008fe764ed393d11c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:55:56 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 09:55:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 09:57:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:57:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 09:57:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 10:02:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 10:02:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 10:02:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 10:02:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 10:02:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 10:02:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 10:02:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 10:02:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 10:02:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 10:02:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 10:02:49 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 10:02:49 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 10:02:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 10:02:51 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 10:03:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 06 Feb 2019 10:03:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:06:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 10:06:42 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:06:44 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 10:06:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 10:06:45 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:06:45 GMT
WORKDIR /var/www/html
# Wed, 06 Feb 2019 10:06:46 GMT
EXPOSE 80
# Wed, 06 Feb 2019 10:06:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85553048ca6c52a3bd4103fa49c933bba8ae6146766ba26598cac72352d40878`  
		Last Modified: Wed, 06 Feb 2019 15:13:31 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2cf45d1de78582b959c2fb7f15893b2b7c421b4f4c340e800cacc50a3c5a45`  
		Last Modified: Wed, 06 Feb 2019 15:13:51 GMT  
		Size: 57.5 MB (57464803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee495d98f71c4aeaadb5bae9e3f43ac121d9907f0d9529b1909262cc524175b3`  
		Last Modified: Wed, 06 Feb 2019 15:13:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e79ddc68f2efa7c1bd5dbe89cd5bd19149aa9cb10e8484bca420467ede063fb`  
		Last Modified: Wed, 06 Feb 2019 15:14:28 GMT  
		Size: 16.7 MB (16652140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a649d2044d08ce151454175434ecfee9bb02416ea2f179202024932367562ae`  
		Last Modified: Wed, 06 Feb 2019 15:14:22 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd2afbeea57a66b70abdc91b0952b74a893d4a6a2fcb8f202833b627760ea3`  
		Last Modified: Wed, 06 Feb 2019 15:14:22 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d73674e047183a026535f66d4c059c3d87f28725bfd8318d8db5ef6d38228e`  
		Last Modified: Wed, 06 Feb 2019 15:14:24 GMT  
		Size: 12.3 MB (12292501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d31c5280a177d65d9bd062f89a70cb1b05193335547eb7b3320f44ecce1fe6a`  
		Last Modified: Wed, 06 Feb 2019 15:14:21 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed641b206eee4f9c18776de8bfb91af1fa74ccc2294e485ee5e2d34420ce1a53`  
		Last Modified: Wed, 06 Feb 2019 15:14:26 GMT  
		Size: 14.7 MB (14718366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80cce0087ec0719f61d55126f2635c07e9fca171e6cc530f883866aac459e7`  
		Last Modified: Wed, 06 Feb 2019 15:14:21 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0017abf9239273d8ec0ed03120253645d5be2d692e62f0f0e613a5518c02a8a`  
		Last Modified: Wed, 06 Feb 2019 15:14:21 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae4cb6e416a79faa59c78b4f288d396ce76d510575b0b219b95b8fc7b4b459e`  
		Last Modified: Wed, 06 Feb 2019 15:14:21 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; arm variant v7

```console
$ docker pull php@sha256:2399f3a1f7f39bce03bc57c5e9f727d6c57660cb42b5e64fa3c7f6b5c13287c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115194446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faded1f038a131133c73a69ef77654d6a11ab42cb938a2298e278fef613a5f02`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 16:39:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 23 Jan 2019 16:39:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 23 Jan 2019 16:39:42 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:39:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 23 Jan 2019 16:39:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 23 Jan 2019 16:44:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:44:19 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 23 Jan 2019 16:44:20 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 23 Jan 2019 16:44:22 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 23 Jan 2019 16:44:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 23 Jan 2019 16:44:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 23 Jan 2019 16:44:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 23 Jan 2019 16:44:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 23 Jan 2019 16:44:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 16:44:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 16:44:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 Jan 2019 16:44:29 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 23 Jan 2019 16:44:29 GMT
ENV PHP_VERSION=7.3.1
# Wed, 23 Jan 2019 16:44:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 23 Jan 2019 16:44:30 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 23 Jan 2019 16:44:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 Jan 2019 16:44:45 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 23 Jan 2019 16:47:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 Jan 2019 16:47:51 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 23 Jan 2019 16:47:53 GMT
RUN docker-php-ext-enable sodium
# Wed, 23 Jan 2019 16:47:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 Jan 2019 16:47:54 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 23 Jan 2019 16:47:54 GMT
WORKDIR /var/www/html
# Wed, 23 Jan 2019 16:47:55 GMT
EXPOSE 80
# Wed, 23 Jan 2019 16:47:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559e6a50dca6c3346f4b1f3e9334626fc34db7d72e9874008b5950d4f4cb4efc`  
		Last Modified: Wed, 23 Jan 2019 18:36:00 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0d1ed5a54b6d0c551808e6d253008cd52d6bfc8d0ffa5a3038a36f88460ee6`  
		Last Modified: Wed, 23 Jan 2019 18:36:19 GMT  
		Size: 53.6 MB (53583664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37593997800bbda496cba20ddc23e427b546ae4a7392ac13317b2a2fb6553499`  
		Last Modified: Wed, 23 Jan 2019 18:35:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ee9a29b8c35afc87847ead71d4905e719f1292100a8e722e09ca0f2f2e1233`  
		Last Modified: Wed, 23 Jan 2019 18:37:13 GMT  
		Size: 16.2 MB (16162547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8789cbea2ef2bd0c3aa14b8a3a45aa7dbe1fc09aac6e1d0bba1d375e1e9d78`  
		Last Modified: Wed, 23 Jan 2019 18:37:06 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d900b87ea926b60295f853fb3124605f5d8371599133860b23830ed09b2fec05`  
		Last Modified: Wed, 23 Jan 2019 18:37:06 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40f6725bfc94336b41ebf2ca661773612c4f6dbc9f543bcd308a8413593faf3`  
		Last Modified: Wed, 23 Jan 2019 18:37:06 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a11641ac6811b63564de2db04eace501acf0f07642297bc2c2cb07dbcfca7c2`  
		Last Modified: Wed, 23 Jan 2019 18:37:08 GMT  
		Size: 12.3 MB (12292536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd8b2f242502679af446fca53255d9e603127909e1bc4d8f65a3ddbe47570ba`  
		Last Modified: Wed, 23 Jan 2019 18:37:04 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c52da49c3a96f646472f3275a25ebf276baee39592d30d1772cadee7f1e4667`  
		Last Modified: Wed, 23 Jan 2019 18:37:09 GMT  
		Size: 13.9 MB (13858757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf16e73128c5951dd6bd0ee86e7e83d241983a68cc0bae5721fe9955cfb02ab`  
		Last Modified: Wed, 23 Jan 2019 18:37:04 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9151d9e45a8324b383f69b4a943d614235aad57a992da1178ab7142ef0461be4`  
		Last Modified: Wed, 23 Jan 2019 18:37:04 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ef3e74e4ae41068d9f3de9d37ee0213126f6dcade9c506de83fe8eb41629f7`  
		Last Modified: Wed, 23 Jan 2019 18:37:04 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; arm64 variant v8

```console
$ docker pull php@sha256:ee1142ee77c58ca5bfa19c64ac6d2a3dbee91ff5f1ba8f6ce0eb03e9e1d252b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121444809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec83f5e3328f3f3e18b4866cf0905e925e574f6f2f518f714edc19e6b6f380a5`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 06 Feb 2019 12:46:22 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 12:46:22 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 12:46:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 12:46:24 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 12:47:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 06 Feb 2019 12:47:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:55:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 12:55:23 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:55:27 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 12:55:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 12:55:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:55:31 GMT
WORKDIR /var/www/html
# Wed, 06 Feb 2019 12:55:34 GMT
EXPOSE 80
# Wed, 06 Feb 2019 12:55:35 GMT
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
	-	`sha256:b4ca23e4ade863bf45f5605528de15d0f74d84d2819b8e5a5f9c0ff13dcdb5b0`  
		Last Modified: Wed, 06 Feb 2019 17:21:14 GMT  
		Size: 12.3 MB (12293161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d228319b3c72e5ae97de13d75ca0fae991f52140e1eba8551ad2c50b9f30d9`  
		Last Modified: Wed, 06 Feb 2019 17:21:09 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9934a2dbffcf2bf9a2bf6292060290d68f3784e64c0e5713d1d1f5a575b02622`  
		Last Modified: Wed, 06 Feb 2019 17:21:14 GMT  
		Size: 14.5 MB (14480782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a1b13fadfdf588327dcc0591cb32fe0bd3a9d0c00315c1abe5f1a6529523e7`  
		Last Modified: Wed, 06 Feb 2019 17:21:08 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0071b19b42142d79e484c59213d9ed1c85d7d09142298920ca8b556f9272e90e`  
		Last Modified: Wed, 06 Feb 2019 17:21:08 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f2423c7d12b1fff60dc82aaac1b3c03786092c5fc690a9dd7e9bf0924f293b`  
		Last Modified: Wed, 06 Feb 2019 17:21:09 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; 386

```console
$ docker pull php@sha256:640e4d0ab65ec4c169806f6b0f87ad41bbc807668822bfb528fd03dd9f6e7061
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140476784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1c9fc80428592da03662c876a167025a94920401370411aaf1f50163c6ed6f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 20:18:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 23 Jan 2019 20:18:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 23 Jan 2019 21:22:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 23 Jan 2019 21:22:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 23 Jan 2019 21:22:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 23 Jan 2019 21:27:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 21:27:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 23 Jan 2019 21:27:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 23 Jan 2019 21:27:18 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 23 Jan 2019 21:27:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 23 Jan 2019 21:27:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 23 Jan 2019 21:27:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 23 Jan 2019 21:27:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 23 Jan 2019 21:27:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 21:27:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 21:27:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 31 Jan 2019 12:58:36 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Thu, 31 Jan 2019 12:58:36 GMT
ENV PHP_VERSION=7.3.1
# Thu, 31 Jan 2019 12:58:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Thu, 31 Jan 2019 12:58:36 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Thu, 31 Jan 2019 12:58:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 Jan 2019 12:58:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 31 Jan 2019 13:02:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Jan 2019 13:02:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Thu, 31 Jan 2019 13:02:19 GMT
RUN docker-php-ext-enable sodium
# Thu, 31 Jan 2019 13:02:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Jan 2019 13:02:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Thu, 31 Jan 2019 13:02:19 GMT
WORKDIR /var/www/html
# Thu, 31 Jan 2019 13:02:20 GMT
EXPOSE 80
# Thu, 31 Jan 2019 13:02:20 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c02299c8babda043d85f8c8c3f6adc9b907c443a95a432a6f7ad91de3be97f0`  
		Last Modified: Wed, 23 Jan 2019 22:48:14 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ef5d450b8abb565d19eb3a5f5654a76998363d7763e8f9e1a19ab15fa75ae0`  
		Last Modified: Wed, 23 Jan 2019 22:48:44 GMT  
		Size: 71.5 MB (71503693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44017d14624d3592028b41f2dda17505b6b7bf5b5888724cc04a5ca65ee37e17`  
		Last Modified: Wed, 23 Jan 2019 22:48:13 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971513b1ea27ee5c955e7fbec89c91f52d59239c1983986a991fd39180dbaac7`  
		Last Modified: Wed, 23 Jan 2019 22:49:23 GMT  
		Size: 17.6 MB (17561953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257f24fb25cab737a1fa711723df8e119877937bdee8ca89699988687b8015f`  
		Last Modified: Wed, 23 Jan 2019 22:49:12 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09cc5b58ca8d856b93c9a4bb95ec7805a7722ab6433e337fd16176c1c6160a`  
		Last Modified: Wed, 23 Jan 2019 22:49:12 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77385b4ff453edf3a89757ef3b7933dc41141d9a30657b00131dcaa8cb6f0a31`  
		Last Modified: Wed, 23 Jan 2019 22:49:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69865de588bd3d2a139418ab3629560f09f1327ad6d3148cbab9747bbb1c5395`  
		Last Modified: Thu, 31 Jan 2019 13:58:16 GMT  
		Size: 12.3 MB (12294043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046b5fe123d8c4f02ed09dba98dfea031728f6523522487546e759350a0d3de5`  
		Last Modified: Thu, 31 Jan 2019 13:58:14 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae4aa63979889d23b0dd2028fd03ec852f3e7bd585066d6e982afbfe09c51b5`  
		Last Modified: Thu, 31 Jan 2019 13:58:18 GMT  
		Size: 16.0 MB (15963450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95fcaff27cc8483eb0c54e83559ab5367109ffec303caf62a95f2f46f00d86f`  
		Last Modified: Thu, 31 Jan 2019 13:58:14 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08e9437e27861b3bd03f7c7bf93d3ac1173bedb27f3ad0014a1d9bb1c990ee7`  
		Last Modified: Thu, 31 Jan 2019 13:58:14 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a28512a3f4697dc9144628e3e8686f27abbd77a26f189d2da00fd833c57348`  
		Last Modified: Thu, 31 Jan 2019 13:58:14 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; ppc64le

```console
$ docker pull php@sha256:9832d1d3219dde021975e5b027c243dc44763a6388c73955104168ff1ef1099e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129548744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7603bb0c4aefd8cf75e2dc6e36e97d4c0a033e7c75e6021c575340240959d57`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:43:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 11:43:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 11:44:50 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:44:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 11:44:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 11:51:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 11:51:19 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 11:51:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 11:52:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 11:52:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 11:52:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 11:52:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 11:52:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 11:52:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 11:52:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 11:52:19 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 06 Feb 2019 11:52:21 GMT
ENV PHP_VERSION=7.3.1
# Wed, 06 Feb 2019 11:52:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror
# Wed, 06 Feb 2019 11:52:24 GMT
ENV PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362 PHP_MD5=
# Wed, 06 Feb 2019 11:52:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 06 Feb 2019 11:52:57 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:57:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Feb 2019 11:57:30 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:57:35 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Feb 2019 11:57:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Feb 2019 11:57:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:57:41 GMT
WORKDIR /var/www/html
# Wed, 06 Feb 2019 11:57:43 GMT
EXPOSE 80
# Wed, 06 Feb 2019 11:57:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e866c0df3bdbac0f4b6ca6755d04b09d0efd58a5858f30d91da0025e5bc3de`  
		Last Modified: Wed, 06 Feb 2019 14:30:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cc4d9b7818417508f7a8a1e387cf891ff4d5a6085ba9945956f47c8ade733`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 61.8 MB (61832910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f271944c7677edeba96da714dd09fc67d74145bd32c9ddc9e21688ce4b92725c`  
		Last Modified: Wed, 06 Feb 2019 14:30:41 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35647893dc4307f2e3a11d6795639bb32461b42270c980c3c8e5c7ce7ac93ba`  
		Last Modified: Wed, 06 Feb 2019 14:32:07 GMT  
		Size: 17.3 MB (17345016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7b403b8a1e5840c26a10f48ebbf64e9b76a916496529d30cbabe43fb4262f`  
		Last Modified: Wed, 06 Feb 2019 14:32:02 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb8d68ad11bf75804dea192f1563dfa21db2769f2c462f16a89400af0050ec1`  
		Last Modified: Wed, 06 Feb 2019 14:31:58 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f652223682035bc3dd7c8ab5e37b6c816609c2743ab0d608770008ae8320f341`  
		Last Modified: Wed, 06 Feb 2019 14:32:00 GMT  
		Size: 12.3 MB (12292816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b840d8643fbc63d53710ca87e5cef58890f93d87cb8c87e69f0d5d6e488c2`  
		Last Modified: Wed, 06 Feb 2019 14:31:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa6f91e9375b16b8b0a19ecb9ea5832bf7ee7419ecc82d9d3d390ef01c81435`  
		Last Modified: Wed, 06 Feb 2019 14:32:01 GMT  
		Size: 15.3 MB (15317246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a451f73159a2da26e0e0d5437945f43b38ed3e77293ab970ca2bf159727cc38`  
		Last Modified: Wed, 06 Feb 2019 14:31:55 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e559598ee10e9791fb5120faa2aeff3ea36175a8594f054143a098f9629e5d`  
		Last Modified: Wed, 06 Feb 2019 14:31:55 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543a0f9bf2df47095098eeda6f6afc9dcd91c18a67f15626b6f11b41d1905289`  
		Last Modified: Wed, 06 Feb 2019 14:31:55 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
