## `php:5-apache-jessie`

```console
$ docker pull php@sha256:5a43f74ce996a32c46bdb9c9893c1c21928f1ce53d67934cf0cb7559415ba648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `php:5-apache-jessie` - linux; amd64

```console
$ docker pull php@sha256:b9766e25326378ff9a1e2e37c4dc112f758f8d136469ce851aa4add42c62612a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156193023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34f09f63596c046eaea659d081bc54e8a068ea5a684131d8352a339e3210d7a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:10:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 23:10:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 23:12:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:12:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 23:12:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 23:24:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:24:58 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 22 Jan 2019 23:24:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 22 Jan 2019 23:25:01 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 22 Jan 2019 23:25:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 22 Jan 2019 23:25:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 22 Jan 2019 23:25:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 22 Jan 2019 23:25:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 22 Jan 2019 23:25:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 23:25:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 23:25:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 Jan 2019 00:36:19 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 23 Jan 2019 00:36:19 GMT
ENV PHP_VERSION=5.6.40
# Wed, 23 Jan 2019 00:36:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.40.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.40.tar.xz.asc/from/this/mirror
# Wed, 23 Jan 2019 00:36:20 GMT
ENV PHP_SHA256=1369a51eee3995d7fbd1c5342e5cc917760e276d561595b6052b21ace2656d1c PHP_MD5=
# Wed, 23 Jan 2019 00:38:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 Jan 2019 00:38:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 23 Jan 2019 00:46:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 Jan 2019 00:46:02 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 23 Jan 2019 00:46:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 Jan 2019 00:46:03 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 23 Jan 2019 00:46:03 GMT
WORKDIR /var/www/html
# Wed, 23 Jan 2019 00:46:03 GMT
EXPOSE 80
# Wed, 23 Jan 2019 00:46:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de39282d8eae9f5c94405ff99328e0808308a958741e8e20d0e589b8fb648ff9`  
		Last Modified: Wed, 23 Jan 2019 01:15:36 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84baf42db9bdc42bb1d1909f341f8e27399b8f8ffbf40edb964c07357e17b72d`  
		Last Modified: Wed, 23 Jan 2019 01:15:53 GMT  
		Size: 74.7 MB (74742227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2911e185987ac72f783890c65e821eb3096385529ec75397bab086d98a6c8505`  
		Last Modified: Wed, 23 Jan 2019 01:15:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be476b47437fcc073f6df6ac92c8cfa8748a743c2ce1e9dfc59f4d898c6868ac`  
		Last Modified: Wed, 23 Jan 2019 01:16:04 GMT  
		Size: 4.5 MB (4468051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f77c160c9cf9011978ece77d4cabe897d8cf22a6796a7f5832f7fe624305718`  
		Last Modified: Wed, 23 Jan 2019 01:16:02 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f45a1e2e8842ff9f7c2b2e63c329eac8183123530863343a64cd2d5bb4969e2`  
		Last Modified: Wed, 23 Jan 2019 01:16:01 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e7399dcad7fbd6de24ce3514fb0d66075a4322fa054c1ce792d03edab8f715`  
		Last Modified: Wed, 23 Jan 2019 01:16:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4673e04b34da1726274e0e6dbdeabda195f34ce9ba0558808b801749b6a7dfee`  
		Last Modified: Wed, 23 Jan 2019 01:17:39 GMT  
		Size: 12.8 MB (12824707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad6f578d935c652ed4f0b9e7331d4bcf1e459a7156343731e81f971082c17b2`  
		Last Modified: Wed, 23 Jan 2019 01:17:37 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e85359614dd9f6984c617bd10ab7985ae0c32abc2876d8dbd4131b2c1cf79f`  
		Last Modified: Wed, 23 Jan 2019 01:17:40 GMT  
		Size: 9.8 MB (9765988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a259a9dd5021af924246c37c1570c2327b7bd3692b323d8ce8affcff6227b55e`  
		Last Modified: Wed, 23 Jan 2019 01:17:37 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff721c13d668c406ed756d953db635f792db151e16d42875c88ba5bc62cbe2d`  
		Last Modified: Wed, 23 Jan 2019 01:17:37 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-apache-jessie` - linux; arm variant v5

```console
$ docker pull php@sha256:2196596ebae1618dbc938438edd6be94b167b19e73a85c07b0737acdf3c8ebf7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138742462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76ab705625a7daec2c18c03c38be40717f79331e279d842e14d041ec5513879`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:47:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 23 Jan 2019 13:47:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 23 Jan 2019 13:49:21 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:49:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 23 Jan 2019 13:49:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 23 Jan 2019 13:56:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:56:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 23 Jan 2019 13:56:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 23 Jan 2019 13:56:44 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 23 Jan 2019 13:56:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 23 Jan 2019 13:56:48 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 23 Jan 2019 13:56:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 23 Jan 2019 13:56:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 23 Jan 2019 13:56:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 13:56:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 13:56:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 Jan 2019 14:37:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 23 Jan 2019 14:37:05 GMT
ENV PHP_VERSION=5.6.40
# Wed, 23 Jan 2019 14:37:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.40.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.40.tar.xz.asc/from/this/mirror
# Wed, 23 Jan 2019 14:37:06 GMT
ENV PHP_SHA256=1369a51eee3995d7fbd1c5342e5cc917760e276d561595b6052b21ace2656d1c PHP_MD5=
# Wed, 23 Jan 2019 14:38:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 Jan 2019 14:38:24 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:42:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 Jan 2019 14:42:23 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:42:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 Jan 2019 14:42:24 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:42:25 GMT
WORKDIR /var/www/html
# Wed, 23 Jan 2019 14:42:25 GMT
EXPOSE 80
# Wed, 23 Jan 2019 14:42:26 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba10a2c8d90d93a4e8c16fb0c03b02f16b3e6e83a8f770737ddd68e11d869df2`  
		Last Modified: Wed, 23 Jan 2019 15:01:48 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc92cee5d278248a440162523c2cab6665fed55a748e27aa544e82dbe322d7`  
		Last Modified: Wed, 23 Jan 2019 15:02:09 GMT  
		Size: 59.8 MB (59818542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8aac24ded7059efedd21a117e642730aa64fd64907f4b945f6752327543a7e2`  
		Last Modified: Wed, 23 Jan 2019 15:01:47 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a7a7ec2ca6c41c0b7b4977210f430730d22ddee79953f6807ea059291050d6`  
		Last Modified: Wed, 23 Jan 2019 15:02:22 GMT  
		Size: 4.2 MB (4182596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401060423e5c2bfd5e734ed7fd48cf61415046c940c377c025f91af877d3c9a`  
		Last Modified: Wed, 23 Jan 2019 15:02:20 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb35a399d09301351847f7f17a891d8d97c7113d38e21afc6cbd8c7e35a870e3`  
		Last Modified: Wed, 23 Jan 2019 15:02:20 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc18fc05161c80ff3625b248f7658d9f4e5547805c62e3fe12d8a286d68c40c7`  
		Last Modified: Wed, 23 Jan 2019 15:02:20 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76afb63af792e67211b5343a5e1c64d271bf4c390f0fe3c48410eeaea547ea5`  
		Last Modified: Wed, 23 Jan 2019 15:04:31 GMT  
		Size: 12.8 MB (12823044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab1f7fe520ac10991b519879bea107d7453186ada245eb5120a9a57a62a07a6`  
		Last Modified: Wed, 23 Jan 2019 15:04:30 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dead03ff7650357b81ab8047fbc11933c12ccf1276a56074924e5953939ba3`  
		Last Modified: Wed, 23 Jan 2019 15:04:33 GMT  
		Size: 9.3 MB (9337318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fbfd97516c144de0ce7015500cc608076d053beb785a148c874d1410034f4f`  
		Last Modified: Wed, 23 Jan 2019 15:04:29 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1987fe89e925433cb8d9722236ace94fa3298f2af164aaeac0e5dd836f46892`  
		Last Modified: Wed, 23 Jan 2019 15:04:30 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-apache-jessie` - linux; arm variant v7

```console
$ docker pull php@sha256:ce296d9ff5b96fcff79fb852dc7c0dc4f31cfc5e517b5a05e54cebd067512174
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136222975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16942521da35b8f73f055e36dd8ed60337d52fdd1803c3656fc86d118e832ea9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:26 GMT
ADD file:82fbc1afc65e113a763fd56969e610ee7f80938bd2f37ffc964d6f5b4525b68b in / 
# Wed, 23 Jan 2019 12:59:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:30:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 23 Jan 2019 17:30:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 23 Jan 2019 17:32:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:32:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 23 Jan 2019 17:32:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 23 Jan 2019 17:39:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:39:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 23 Jan 2019 17:39:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 23 Jan 2019 17:39:47 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 23 Jan 2019 17:39:49 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 23 Jan 2019 17:39:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 23 Jan 2019 17:39:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 23 Jan 2019 17:39:51 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 23 Jan 2019 17:39:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 17:39:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 17:39:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 Jan 2019 18:17:43 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 23 Jan 2019 18:17:43 GMT
ENV PHP_VERSION=5.6.40
# Wed, 23 Jan 2019 18:17:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.40.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.40.tar.xz.asc/from/this/mirror
# Wed, 23 Jan 2019 18:17:44 GMT
ENV PHP_SHA256=1369a51eee3995d7fbd1c5342e5cc917760e276d561595b6052b21ace2656d1c PHP_MD5=
# Wed, 23 Jan 2019 18:18:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 Jan 2019 18:18:57 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 23 Jan 2019 18:22:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 Jan 2019 18:22:54 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 23 Jan 2019 18:22:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 Jan 2019 18:22:56 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 23 Jan 2019 18:22:56 GMT
WORKDIR /var/www/html
# Wed, 23 Jan 2019 18:22:57 GMT
EXPOSE 80
# Wed, 23 Jan 2019 18:22:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8d0ee67914252a6f8316bcf4f5de02a5d7894abb8061e33223a2a3691b209217`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 50.3 MB (50291632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75ebdd57fe3ceddd19877c5637c1e81db6df5fe90958fedd7fc165c74ea0bc0`  
		Last Modified: Wed, 23 Jan 2019 18:42:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d3a06b332e21b9a4bf87827053bf38ba09ce50b11cdf83ab6061e9e6c00a0`  
		Last Modified: Wed, 23 Jan 2019 18:43:03 GMT  
		Size: 60.3 MB (60267734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565e7ea9f06dfec72740780d7d367ef64f3bdd686433206f1f0ee6f235dfbffd`  
		Last Modified: Wed, 23 Jan 2019 18:42:43 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa9056de5bbe8c9ca05629e3cd2c69fecba0d57ea827dcba7aeb74640a5c5`  
		Last Modified: Wed, 23 Jan 2019 18:43:17 GMT  
		Size: 3.9 MB (3938898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6592dc31b5c58e1893e83c3e74cf49cb914fd497e523804d3c8bc9244ed6304`  
		Last Modified: Wed, 23 Jan 2019 18:43:14 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace96a43f8d0979421114ca5cc55f59bc8f3e2d05567a4b9d6f1b64fab3f1c24`  
		Last Modified: Wed, 23 Jan 2019 18:43:14 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f19f35a8440fae1f2494da5e838b0725b238df6e83ef9f4d6f6ee0b2a84735`  
		Last Modified: Wed, 23 Jan 2019 18:43:14 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbcf9e6c9e13e74ebe7e9f59b2edd9db67cc00d4fe4ee66206ce074531a5ecd`  
		Last Modified: Wed, 23 Jan 2019 18:45:59 GMT  
		Size: 12.8 MB (12822954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a8b2d42acba7ca400421a844975179f4d4679457e3ad350dc3a07b93b6fb0`  
		Last Modified: Wed, 23 Jan 2019 18:45:58 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ec09bae81c31d64356c52e6e87b75c8d1a4e7f148aee2fd892e59c18fd1126`  
		Last Modified: Wed, 23 Jan 2019 18:46:01 GMT  
		Size: 8.9 MB (8895349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc0befab66043e38bfd4a410cf209059905f938d2ef126ae0be88befa544c80`  
		Last Modified: Wed, 23 Jan 2019 18:45:58 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd89a0802d5d99682b69539bc1c8aec866bcee6473837acf97fbbe83b6dac4c`  
		Last Modified: Wed, 23 Jan 2019 18:45:58 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:5-apache-jessie` - linux; 386

```console
$ docker pull php@sha256:dd814a722b6b1895990c8e2bd6d78810dc5b6b86056d5119f79408caa9a1b75b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162041215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a211083e98e9b243b5dc7da676e6a009ccbe73e1ed66a6a27bffd68b715caefb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 20:23:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 23 Jan 2019 20:23:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 23 Jan 2019 20:26:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 23 Jan 2019 20:26:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 23 Jan 2019 20:26:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 23 Jan 2019 20:42:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 20:42:39 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 23 Jan 2019 20:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 23 Jan 2019 20:42:40 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 23 Jan 2019 20:42:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 23 Jan 2019 20:42:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 23 Jan 2019 20:42:42 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 23 Jan 2019 20:42:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 23 Jan 2019 20:42:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 20:42:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 23 Jan 2019 20:42:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 Jan 2019 21:54:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 23 Jan 2019 21:54:15 GMT
ENV PHP_VERSION=5.6.40
# Wed, 23 Jan 2019 21:54:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.40.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.40.tar.xz.asc/from/this/mirror
# Wed, 23 Jan 2019 21:54:16 GMT
ENV PHP_SHA256=1369a51eee3995d7fbd1c5342e5cc917760e276d561595b6052b21ace2656d1c PHP_MD5=
# Wed, 23 Jan 2019 21:57:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 Jan 2019 21:57:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 23 Jan 2019 22:05:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 Jan 2019 22:05:38 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Wed, 23 Jan 2019 22:05:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 Jan 2019 22:05:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 23 Jan 2019 22:05:38 GMT
WORKDIR /var/www/html
# Wed, 23 Jan 2019 22:05:38 GMT
EXPOSE 80
# Wed, 23 Jan 2019 22:05:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d18354dd08f1f300cfb401d59fd2f149c7db060476ffabfcbe5e11d77ac60e`  
		Last Modified: Wed, 23 Jan 2019 22:46:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9caf6a60c3243a3e63fcf17cd214e5b4aeee99db38360263b3e2b6fd63350c`  
		Last Modified: Wed, 23 Jan 2019 22:47:15 GMT  
		Size: 79.8 MB (79819933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0770e84c6070a1e498d2d397d013febdd659f8a786ca30a1bbceb5ef6cd3d025`  
		Last Modified: Wed, 23 Jan 2019 22:46:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88042d3e9db655a1479dfb5a9ef81ddd980df1ce8c314764074b88e817982889`  
		Last Modified: Wed, 23 Jan 2019 22:47:26 GMT  
		Size: 4.7 MB (4651310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5ce20d3db84e2bba8fedfa16fc0573435eaa706ab538b00dcc464af91a2119`  
		Last Modified: Wed, 23 Jan 2019 22:47:24 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3765186b3e79f39683adb7ce4a6dbe511e4684002bd3666083d9bf6630f85488`  
		Last Modified: Wed, 23 Jan 2019 22:47:23 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4236fffdc1a599307af1c159d852a09ca7220af6d288a26fe2597e5c82199`  
		Last Modified: Wed, 23 Jan 2019 22:47:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c69322483e27cd46e3c321a344b14ed31e2c077d367abbe05ec7217176278c`  
		Last Modified: Wed, 23 Jan 2019 22:50:31 GMT  
		Size: 12.8 MB (12824186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b7f0fb19d63940e1b01ce27a748514ea1d1f47980198c23aa24cdfd4e30d86`  
		Last Modified: Wed, 23 Jan 2019 22:50:29 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fb29785a99f92562b1979ff95166524472c40d941f70bef7dfca07da14cb83`  
		Last Modified: Wed, 23 Jan 2019 22:50:34 GMT  
		Size: 10.1 MB (10141020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accb1f3c30e791f131075157772723b957e586ae703db3786a647b3c68b7d91`  
		Last Modified: Wed, 23 Jan 2019 22:50:29 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d64ccfb9346e618ab219565c0747ccc104a2e7a393c1bc93a63d4424eb8495`  
		Last Modified: Wed, 23 Jan 2019 22:50:29 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
